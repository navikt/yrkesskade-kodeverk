package no.nav.yrkesskade.kodeverk.service

import no.nav.security.token.support.core.context.TokenValidationContextHolder
import no.nav.yrkesskade.kodeverk.config.ApiWhitelistAccessProperties
import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodekategoriDto
import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodetypeDto
import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodeverdiDto
import no.nav.yrkesskade.kodeverk.error.ManglendeDataException
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
    val kodeverkClient: KodeverkClient,
    val tokenValidationContextHolder: TokenValidationContextHolder,
    val apiWhitelistAccessProperties: ApiWhitelistAccessProperties
) {

    fun hentKodetyper(): List<KodetypeDto> {
        return if (hentBeskyttet()) {
            kodetypeRepository.findAll().map { KodetypeDto.konverter(it) }
        } else {
            kodetypeRepository.findByBeskyttet(false).map { KodetypeDto.konverter(it) }
        }
    }

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
        val inkluderBeskyttet = hentBeskyttet()
        val kodetype = kodetypeRepository.findById(typenavn).orElseThrow {
            ManglendeDataException("Kunne ikke hente kodeverdier for type $typenavn og kategori $kategorinavn. Fant ingen kodetype med navn $typenavn!")
        }

        if (!inkluderBeskyttet && kodetype.beskyttet!!) {
            throw ManglendeDataException("Kunne ikke hente kategorier for type ${typenavn}. Fant ingen kodetype med navn $typenavn!" + " > " + typenavn)
        }

        if (kodetype.ekstern!!) {
            return kodeverkClient.hentKodeverkVerdier(kodetype.eksternNavn!!)
        }


        val kodeverdier = if (kategorinavn.isNullOrBlank()) {
            if (inkluderBeskyttet)
                kodeverdiRepository.hentKodeverdiForTypeInkludertBeskyttet(typenavn)
            else
                kodeverdiRepository.hentKodeverdiForType(typenavn)
        } else {
             if (inkluderBeskyttet) {
                kodeverdiRepository.hentKodeverdiForTypeOgKategoriInkludertBeskyttet(typenavn, kategorinavn)
            } else {
                kodeverdiRepository.hentKodeverdiForTypeOgKategori(typenavn, kategorinavn)
            }
        }

        return kodeverdier.map { kodeverdi -> KodeverdiDto.konverter(kodeverdi) }
    }

    fun hentKategorierForType(typenavn: String): List<KodekategoriDto> {
        val kodetype = kodetypeRepository.findById(typenavn).orElseThrow {
            ManglendeDataException("Kunne ikke hente kategorier for type ${typenavn}. Fant ingen kodetype med navn $typenavn!" + " > " + typenavn)
        }

        if (!hentBeskyttet() && kodetype.beskyttet!!) {
            ManglendeDataException("Kunne ikke hente kategorier for type ${typenavn}. Fant ingen kodetype med navn $typenavn!" + " > " + typenavn)
        }

        return kodetype.kategorier!!.map { KodekategoriDto.konverter(it) }
    }


    private fun hentBeskyttet(): Boolean {
        val jwtToken = tokenValidationContextHolder.tokenValidationContext.getJwtToken("azuread")
        var hentBeskyttet = false
        if (jwtToken != null) {
            val azp = jwtToken.jwtTokenClaims.get("azp")
            val tid = jwtToken.jwtTokenClaims.get("tid")

            hentBeskyttet = apiWhitelistAccessProperties.clients.contains(azp) && tid.equals("azuread")
        }

        return hentBeskyttet
    }

}