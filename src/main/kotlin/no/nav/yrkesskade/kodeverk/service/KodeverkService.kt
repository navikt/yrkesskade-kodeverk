package no.nav.yrkesskade.kodeverk.service

import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodeverdiDto
import no.nav.yrkesskade.kodeverk.exception.ManglendeDataException
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

    fun hentKodetyper(): MutableList<Kodetype> = kodetypeRepository.findAll()

    fun hentKodeverdiForTypeOgKategori(typenavn: String, kategorinavn: String): List<KodeverdiDto> {
        val example: Example<Kodetype> = Example.of(Kodetype(null, typenavn, null, null, null, null))
        val kodetype = kodetypeRepository.findOne(example)

        if (kodetype.get().ekstern!!) {
            return kodeverkClient.hentKodeverkVerdier(kodetype.get().eksternNavn)
        }

        val kategoriExample: Example<Kodekategori> = Example.of(Kodekategori(null, kategorinavn, null, null))
        val kategori = kodekategoriRepository.findOne(kategoriExample)

        return kodetype.map {
            val type = it
            kategori.map {
                kodeverdiRepository.hentKodeverdiForTypeOgKategori(type.typeId!!, it.kategoriId!!).map {
                    KodeverdiDto.konverter(it)
                }
            }.orElseThrow{ ManglendeDataException("Kunne ikke hente kodeverdier for type $typenavn og kategori $kategorinavn. Fant ingen kategori med navn $kategorinavn!") }
        }.orElseThrow { ManglendeDataException("Kunne ikke hente kodeverdier for type $typenavn og kategori $kategorinavn. Fant ingen kodetype med navn $typenavn!") }

    }

    fun hentKategorierForType(typenavn: String): List<Kodekategori> {
        val example: Example<Kodetype> = Example.of(Kodetype(null, typenavn, null, null, null, null))
        val kodetype = kodetypeRepository.findOne(example)

        return kodetype.map {
            it.kategorier!!
        }.orElseThrow{ ManglendeDataException("Kunne ikke hente kategorier for type ${typenavn}. Fant ingen kodetype med navn $typenavn!" + " > " + typenavn) }
    }

}