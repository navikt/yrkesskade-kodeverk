package no.nav.yrkesskade.kodeverk.controller.v1.dto

data class KodeverdiResponsDto (
    var kodeverdierMap: Map<KodeStreng, KodeverdiDto> = mutableMapOf()
) {
    companion object {
        fun tilRespons(kodeverdierListe: List<KodeverdiDto>): KodeverdiResponsDto =
            KodeverdiResponsDto(tilMap(kodeverdierListe))

        private fun tilMap(kodeverdierListe: List<KodeverdiDto>): Map<KodeStreng, KodeverdiDto> =
            kodeverdierListe.associateBy { it.kode }
    }
}
