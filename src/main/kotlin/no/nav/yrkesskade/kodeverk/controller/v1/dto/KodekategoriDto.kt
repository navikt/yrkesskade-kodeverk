package no.nav.yrkesskade.kodeverk.controller.v1.dto

import no.nav.yrkesskade.kodeverk.model.Kodekategori

data class KodekategoriDto(val navn: String?, val beskrivelse: String?, val antallTyper: Int = 0) {

    companion object {
        fun konverter(kodekategori: Kodekategori):
                KodekategoriDto = KodekategoriDto(
            navn = kodekategori.navn,
            beskrivelse = kodekategori.beskrivelse,
            antallTyper = kodekategori.typer!!.size.or(0)
        )
    }
}