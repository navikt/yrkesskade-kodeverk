package no.nav.yrkesskade.kodeverk.controller.v1.dto

import no.nav.yrkesskade.kodeverk.model.Kodetype

class KodetypeDto (val navn: String?, val beskrivelse: String?, val antallKategorier: Int = 0) {

    companion object {
        fun konverter(kodetype: Kodetype):
                KodetypeDto = KodetypeDto(
            navn = kodetype.navn,
            beskrivelse = kodetype.beskrivelse,
            antallKategorier = kodetype.kategorier!!.size.or(0)
        )
    }
}
