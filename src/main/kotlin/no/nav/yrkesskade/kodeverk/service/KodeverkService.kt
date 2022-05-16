package no.nav.yrkesskade.kodeverk.service

import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodekategoriDto
import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodetypeDto
import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodeverdiDto
import no.nav.yrkesskade.kodeverk.error.ManglendeDataException
import no.nav.yrkesskade.kodeverk.model.Kodekategori
import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.KodeverkClient
import no.nav.yrkesskade.kodeverk.repository.KodekategoriRepository
import no.nav.yrkesskade.kodeverk.repository.KodetypeRepository
import no.nav.yrkesskade.kodeverk.repository.KodeverdiRepository
import org.springframework.stereotype.Service

@Service
class KodeverkService(
    val kodetypeRepository: KodetypeRepository,
    val kodeverdiRepository: KodeverdiRepository,
    val kodekategoriRepository: KodekategoriRepository,
    val kodeverkClient: KodeverkClient
) {

    fun hentKodetyper(): List<KodetypeDto> = kodetypeRepository.findAll().map { KodetypeDto.konverter(it) }

    /**
     * Henter kodeverider for en kodetype og kategori
     */
    fun hentKodeverdiForTypeOgKategori(typenavn: String, kategorinavn: String): List<KodeverdiDto> {
        return hentKodeverdiForTypeOgKategoriMuligNullKategori(typenavn, kategorinavn)
    }

    /**
     * Henter kodeverdier for en kodetype.
     */
    fun hentKodeverdiForType(typenavn: String): List<KodeverdiDto> {
        return hentKodeverdiForTypeOgKategoriMuligNullKategori(typenavn, null);
    }

    private fun hentKodeverdiForTypeOgKategoriMuligNullKategori(
        typenavn: String,
        kategorinavn: String?
    ): List<KodeverdiDto> {
        val kodetype = kodetypeRepository.findById(typenavn).orElseThrow {
            ManglendeDataException("Kunne ikke hente kodeverdier for type $typenavn og kategori $kategorinavn. Fant ingen kodetype med navn $typenavn!")
        }

        if (kodetype.ekstern!!) {
            return kodeverkClient.hentKodeverkVerdier(kodetype.eksternNavn!!)
        }

        if (kategorinavn.isNullOrBlank()) {
            return kodeverdiRepository.hentKodeverdiForType(typenavn)
                .map { kodeverdi -> KodeverdiDto.konverter(kodeverdi) }
        } else {

            return kodeverdiRepository
                .hentKodeverdiForTypeOgKategori(typenavn, kategorinavn)
                .map { kodeverdi -> KodeverdiDto.konverter(kodeverdi) }
        }
    }

    fun hentKategorierForType(typenavn: String): List<KodekategoriDto> {
        val kodetype = kodetypeRepository.findById(typenavn).orElseThrow {
            ManglendeDataException("Kunne ikke hente kategorier for type ${typenavn}. Fant ingen kodetype med navn $typenavn!" + " > " + typenavn)
        }

        return kodetype.kategorier!!.map { KodekategoriDto.konverter(it) }
    }

    fun hentKodekategorier(): List<KodekategoriDto> = kodekategoriRepository.findAll().map { KodekategoriDto.konverter(it) }

    fun hentKategori(kategorinavn: String): Kodekategori = kodekategoriRepository.getById(kategorinavn)

}