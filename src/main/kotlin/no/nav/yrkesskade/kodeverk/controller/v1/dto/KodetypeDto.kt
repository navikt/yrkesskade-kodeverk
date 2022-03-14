package no.nav.yrkesskade.kodeverk.controller.v1.dto

import no.nav.yrkesskade.kodeverk.model.Kodetype

class KodetypeDto (var navn: String?, var beskrivelse: String?) {

    companion object {
        fun konverter(kodetype: Kodetype):
                KodetypeDto = KodetypeDto(navn = kodetype.navn, beskrivelse = kodetype.beskrivelse)
    }
}
