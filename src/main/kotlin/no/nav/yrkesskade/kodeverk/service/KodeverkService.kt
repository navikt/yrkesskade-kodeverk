package no.nav.yrkesskade.kodeverk.service

import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodeStreng
import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodekategoriDto
import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodetypeDto
import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodeverdiDto
import no.nav.yrkesskade.kodeverk.error.ManglendeDataException
import no.nav.yrkesskade.kodeverk.model.Kodekategori
import no.nav.yrkesskade.kodeverk.model.Kodetype
import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.KodeverkClient
import no.nav.yrkesskade.kodeverk.repository.KodekategoriRepository
import no.nav.yrkesskade.kodeverk.repository.KodetypeRepository
import no.nav.yrkesskade.kodeverk.repository.KodeverdiRepository
import org.springframework.data.domain.Example
import org.springframework.stereotype.Service

@Service
class KodeverkService(
    val kodetypeRepository: KodetypeRepository,
    val kodeverdiRepository: KodeverdiRepository,
    val kodekategoriRepository: KodekategoriRepository,
    val kodeverkClient: KodeverkClient
) {

    fun hentKodetyper(): List<KodetypeDto> = kodetypeRepository.findAll().map { KodetypeDto.konverter(it) }

    fun hentKodeverdiForTypeOgKategori(typenavn: String, kategorinavn: String): List<KodeverdiDto> {
        val example: Example<Kodetype> = Example.of(Kodetype(null, typenavn, null, null, null, null))
        val kodetype = kodetypeRepository.findOne(example).orElseThrow {
            ManglendeDataException("Kunne ikke hente kodeverdier for type $typenavn og kategori $kategorinavn. Fant ingen kodetype med navn $typenavn!")
        }

        if (kodetype.ekstern!!) {
            return kodeverkClient.hentKodeverkVerdier(kodetype.eksternNavn!!)
        }

        val kategoriExample: Example<Kodekategori> = Example.of(Kodekategori(null, kategorinavn, null, null))
        val kodekategori = kodekategoriRepository.findOne(kategoriExample).orElseThrow {
            ManglendeDataException("Kunne ikke hente kodeverdier for type $typenavn og kategori $kategorinavn. Fant ingen kategori med navn $kategorinavn!")
        }

        return kodeverdiRepository
            .hentKodeverdiForTypeOgKategori(kodetype.typeId!!, kodekategori.kategoriId!!)
            .map { kodeverdi -> KodeverdiDto.konverter(kodeverdi) }
    }

    fun hentKategorierForType(typenavn: String): List<KodekategoriDto> {
        val example: Example<Kodetype> = Example.of(Kodetype(null, typenavn, null, null, null, null))
        val kodetype = kodetypeRepository.findOne(example).orElseThrow {
                ManglendeDataException("Kunne ikke hente kategorier for type ${typenavn}. Fant ingen kodetype med navn $typenavn!" + " > " + typenavn)
            }

        return kodetype.kategorier!!.map { KodekategoriDto.konverter(it) }
    }

}