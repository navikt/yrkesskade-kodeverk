package no.nav.yrkesskade.kodeverk.controller.v1

import no.nav.security.token.support.core.api.Unprotected
import no.nav.yrkesskade.kodeverk.controller.v1.dto.*
import no.nav.yrkesskade.kodeverk.service.KodeverkService
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@Unprotected
@RestController()
@RequestMapping("/api/v1/kodeverk")
class KodeverkController(val kodeverkService: KodeverkService) {

    @GetMapping("/typer")
    fun hentKodeverktyper(): ResponseEntity<KodetypeResponsDto> {
        val kodeverktyper = kodeverkService.hentKodetyper()
        return ResponseEntity.ok(KodetypeResponsDto(kodeverktyper))
    }

    @GetMapping("/typer/{typenavn}/kategorier")
    fun hentKodeverkkategorier(@PathVariable("typenavn") typenavn: String): ResponseEntity<KodekategoriResponsDto> {
        val kategorier = kodeverkService.hentKategorierForType(typenavn)
        return ResponseEntity.ok(KodekategoriResponsDto(kategorier))
    }

    @GetMapping("/typer/{typenavn}/kategorier/{kategorinavn}/kodeverdier")
    fun hentMapMedKodeverdierForTypeOgKategori(
        @PathVariable("typenavn") typenavn: String,
        @PathVariable("kategorinavn") kategorinavn: String
    ): ResponseEntity<KodeverdiResponsDto> {
        val kodeverdier = kodeverkService.hentKodeverdiForTypeOgKategori(typenavn, kategorinavn)
        return ResponseEntity.ok(KodeverdiResponsDto.tilRespons(kodeverdier))
    }

    @GetMapping("/typer/{typenavn}/kategorier/{kategorinavn}/kodeverdierliste")
    fun hentListeMedKodeverdierForTypeOgKategori(
        @PathVariable("typenavn") typenavn: String,
        @PathVariable("kategorinavn") kategorinavn: String
    ): ResponseEntity<KodeverdiListeResponsDto> {
        val kodeverdier = kodeverkService.hentKodeverdiForTypeOgKategori(typenavn, kategorinavn)
        return ResponseEntity.ok(KodeverdiListeResponsDto(kodeverdier))
    }
}