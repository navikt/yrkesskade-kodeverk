package no.nav.yrkesskade.kodeverk.controller.v1.dto

data class KodeverdiResponsDto (
    var kodeverdierMap: Map<KodeStreng, KodeverdiDto> = mutableMapOf()
)