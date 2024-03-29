package no.nav.yrkesskade.kodeverk.controller.v1

import io.swagger.v3.oas.annotations.Operation
import io.swagger.v3.oas.annotations.media.Content
import io.swagger.v3.oas.annotations.media.Schema
import io.swagger.v3.oas.annotations.responses.ApiResponse
import io.swagger.v3.oas.annotations.responses.ApiResponses
import io.swagger.v3.oas.annotations.tags.Tag
import no.nav.security.token.support.core.api.Unprotected
import no.nav.yrkesskade.kodeverk.controller.v1.dto.*
import no.nav.yrkesskade.kodeverk.service.KodeverkService
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*

@Tag(name = "Kodeverk API", description = "Kodeverk API")
@Unprotected
@RestController()
@RequestMapping("/api/v1/kodeverk")
class KodeverkController(val kodeverkService: KodeverkService) {

    @Operation(summary = "Hent liste over tilgjengelige typer")
    @ApiResponses(
        value = [
            ApiResponse(
                responseCode = "200", description = "Kodeverktyper hentet",
                content = [(Content(mediaType = "application/json", schema = Schema(implementation = KodetypeResponsDto::class)))]
            ),
            ApiResponse(responseCode = "500", description = "Internal Server Error", content = [Content()]),
            ApiResponse(responseCode = "404", description = "Kunne ikke finne ressurs", content = [Content()]),
        ]
    )
    @GetMapping("/typer")
    fun hentKodeverktyper(): ResponseEntity<KodetypeResponsDto> {
        val kodeverktyper = kodeverkService.hentKodetyper()
        return ResponseEntity.ok(KodetypeResponsDto(kodeverktyper))
    }

    @Operation(summary = "Hent liste over tilgjengelige kategorier for en type")
    @ApiResponses(
        value = [
            ApiResponse(
                responseCode = "200", description = "Kodeverkkategorier hentet for kodetype",
                content = [(Content(mediaType = "application/json", schema = Schema(implementation = KodekategoriResponsDto::class)))]
            ),
            ApiResponse(responseCode = "500", description = "Internal Server Error", content = [Content()]),
            ApiResponse(responseCode = "404", description = "Kunne ikke finne ressurs", content = [Content()]),
        ]
    )
    @GetMapping("/typer/{typenavn}/kategorier")
    fun hentKodeverkkategorier(@PathVariable("typenavn") typenavn: String): ResponseEntity<KodekategoriResponsDto> {
        val kategorier = kodeverkService.hentKategorierForType(typenavn)
        return ResponseEntity.ok(KodekategoriResponsDto(kategorier))
    }

    @Operation(summary = "Hent liste over kodeverdier for en type")
    @ApiResponses(
        value = [
            ApiResponse(
                responseCode = "200", description = "Kodeverkverdier hentet",
                content = [(Content(mediaType = "application/json", schema = Schema(implementation = KodeverdiResponsDto::class)))]
            ),
            ApiResponse(responseCode = "500", description = "Internal Server Error", content = [Content()]),
            ApiResponse(responseCode = "404", description = "Kunne ikke finne ressurs", content = [Content()]),
        ]
    )
    @GetMapping("/typer/{typenavn}/kodeverdier")
    fun hentKodeverdierForType(@PathVariable("typenavn") typenavn: String): ResponseEntity<KodeverdiResponsDto> {
        val kodeverdier = kodeverkService.hentKodeverdiForType(typenavn)
        return ResponseEntity.ok(KodeverdiResponsDto.tilRespons(kodeverdier))
    }

    @Operation(summary = "Hent liste over kodeverdier for en type")
    @ApiResponses(
        value = [
            ApiResponse(
                responseCode = "200", description = "Kodeverkverdier hentet",
                content = [(Content(mediaType = "application/json", schema = Schema(implementation = KodeverdiResponsDto::class)))]
            ),
            ApiResponse(responseCode = "500", description = "Internal Server Error", content = [Content()]),
            ApiResponse(responseCode = "404", description = "Kunne ikke finne ressurs", content = [Content()]),
        ]
    )
    @GetMapping("/typer/{typenavn}/kodeverdierliste")
    fun hentListeKodeverdierForType(@PathVariable("typenavn") typenavn: String): ResponseEntity<KodeverdiListeResponsDto> {
        val kodeverdier = kodeverkService.hentKodeverdiForType(typenavn)
        return ResponseEntity.ok(KodeverdiListeResponsDto(kodeverdier))
    }

    @Operation(summary = "Hent samling kodeverdier for en type og kategori")
    @ApiResponses(
        value = [
            ApiResponse(
                responseCode = "200", description = "Kodeverkverdier hentet",
                content = [(Content(mediaType = "application/json", schema = Schema(implementation = KodeverdiResponsDto::class)))]
            ),
            ApiResponse(responseCode = "500", description = "Internal Server Error", content = [Content()]),
            ApiResponse(responseCode = "404", description = "Kunne ikke finne ressurs", content = [Content()]),
        ]
    )
    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/typer/{typenavn}/kategorier/{kategorinavn}/kodeverdier","/kategorier/{kategorinavn}/typer/{typenavn}/kodeverdier"])
    fun hentMapMedKodeverdierForTypeOgKategori(
        @PathVariable("typenavn") typenavn: String,
        @PathVariable("kategorinavn") kategorinavn: String
    ): ResponseEntity<KodeverdiResponsDto> {
        val kodeverdier = kodeverkService.hentKodeverdiForTypeOgKategori(typenavn, kategorinavn)
        return ResponseEntity.ok(KodeverdiResponsDto.tilRespons(kodeverdier))
    }

    @Operation(summary = "Hent liste over kodeverdier for en type og kategori")
    @ApiResponses(
        value = [
            ApiResponse(
                responseCode = "200", description = "Kodeverkverdier hentet",
                content = [(Content(mediaType = "application/json", schema = Schema(implementation = KodeverdiResponsDto::class)))]
            ),
            ApiResponse(responseCode = "500", description = "Internal Server Error", content = [Content()]),
            ApiResponse(responseCode = "404", description = "Kunne ikke finne ressurs", content = [Content()]),
        ]
    )

    @RequestMapping(
        method = [RequestMethod.GET],
        value = ["/typer/{typenavn}/kategorier/{kategorinavn}/kodeverdierliste", "/kategorier/{kategorinavn}/typer/{typenavn}/kodeverdierliste"])
    fun hentListeMedKodeverdierForTypeOgKategori(
        @PathVariable("typenavn") typenavn: String,
        @PathVariable("kategorinavn") kategorinavn: String
    ): ResponseEntity<KodeverdiListeResponsDto> {
        val kodeverdier = kodeverkService.hentKodeverdiForTypeOgKategori(typenavn, kategorinavn)
        return ResponseEntity.ok(KodeverdiListeResponsDto(kodeverdier))
    }

    @Operation(summary = "Hent liste over tilgjengelige kategorier")
    @ApiResponses(
        value = [
            ApiResponse(
                responseCode = "200", description = "Kodeverkkategorier hentet",
                content = [(Content(mediaType = "application/json", schema = Schema(implementation = KodetypeResponsDto::class)))]
            ),
            ApiResponse(responseCode = "500", description = "Internal Server Error", content = [Content()]),
            ApiResponse(responseCode = "404", description = "Kunne ikke finne ressurs", content = [Content()]),
        ]
    )
    @GetMapping("/kategorier")
    fun hentKodeverkategorier(): ResponseEntity<KodekategoriResponsDto> {
        val kodeverkategorier = kodeverkService.hentKodekategorier()
        return ResponseEntity.ok(KodekategoriResponsDto(kodeverkategorier))
    }

    @Operation(summary = "Hent liste over tilgjengelige typer for en kategori")
    @ApiResponses(
        value = [
            ApiResponse(
                responseCode = "200", description = "Kodeverktyper hentet",
                content = [(Content(mediaType = "application/json", schema = Schema(implementation = KodetypeResponsDto::class)))]
            ),
            ApiResponse(responseCode = "500", description = "Internal Server Error", content = [Content()]),
            ApiResponse(responseCode = "404", description = "Kunne ikke finne ressurs", content = [Content()]),
        ]
    )
    @GetMapping("/kategorier/{kategorinavn}/typer")
    fun hentKodeverktyper(@PathVariable("kategorinavn") kategorinavn: String): ResponseEntity<KodetypeResponsDto> {
        check(!kategorinavn.isNullOrBlank(), { "Kategorinavn kan ikke være null eller blank"})
        val kategori = kodeverkService.hentKategori(kategorinavn)
        val kodeverktyper = kategori.typer.orEmpty().map { KodetypeDto.konverter(it) }
        return ResponseEntity.ok(KodetypeResponsDto(kodeverktyper))
    }

}