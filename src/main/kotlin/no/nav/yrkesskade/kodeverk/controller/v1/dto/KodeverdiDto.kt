package no.nav.yrkesskade.kodeverk.controller.v1.dto

import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.api.Betydning
import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.api.GetKodeverkKoderBetydningerResponse
import no.nav.yrkesskade.kodeverk.repository.Verdi

data class KodeverdiDto(val kode: String, val verdi: String) {

    companion object {
        fun konverter(verdi: Verdi): KodeverdiDto = KodeverdiDto(verdi.getKode(), verdi.getVerdi())

        fun fromKoderBetydningerResponse(response: GetKodeverkKoderBetydningerResponse): List<KodeverdiDto> {
            return response.betydninger
                .entries
                .map { Kodemapper(it.key, it.value) }
                .let { koder -> fromBetydninger(koder) }
        }

       private fun fromBetydninger(koder: List<Kodemapper>): List<KodeverdiDto> {
            return koder.flatMap {
                it.betydninger.flatMap { betydning ->
                    betydning.beskrivelser.entries.map { beskrivelse ->
                        KodeverdiDto(it.kode, beskrivelse.value.tekst!!)
                    }
                }
            }
        }
    }
}

data class Kodemapper(val kode: String, val betydninger: List<Betydning>) {

}

typealias KodeStreng = String