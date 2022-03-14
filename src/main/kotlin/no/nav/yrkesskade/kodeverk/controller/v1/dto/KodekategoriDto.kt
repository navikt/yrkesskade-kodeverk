package no.nav.yrkesskade.kodeverk.controller.v1.dto

import no.nav.yrkesskade.kodeverk.model.Kodekategori

data class KodekategoriDto(var navn: String?, var beskrivelse: String?) {

    companion object {
        fun konverter(kodekategori: Kodekategori):
                KodekategoriDto = KodekategoriDto(navn = kodekategori.navn, beskrivelse = kodekategori.beskrivelse)
    }
}