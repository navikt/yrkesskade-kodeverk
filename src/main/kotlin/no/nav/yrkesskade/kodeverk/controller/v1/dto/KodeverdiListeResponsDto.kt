package no.nav.yrkesskade.kodeverk.controller.v1.dto

data class KodeverdiListeResponsDto(
    var kodeverdierListe: List<KodeverdiDto> = mutableListOf()
)