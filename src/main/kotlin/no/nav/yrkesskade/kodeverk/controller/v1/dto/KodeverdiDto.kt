package no.nav.yrkesskade.kodeverk.controller.v1.dto

import no.nav.yrkesskade.kodeverk.model.Kodeverdi
import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.api.Betydning
import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.api.GetKodeverkKoderBetydningerResponse

data class KodeverdiDto(val kode: String, val spraak: String, val verdi: String) {

    companion object {
        fun konverter(kodeverdi: Kodeverdi): KodeverdiDto =
            KodeverdiDto(kodeverdi.kode, kodeverdi.spraak, kodeverdi.verdi)

        fun fromKoderBetydningerResponse(
            response: GetKodeverkKoderBetydningerResponse
        ): List<KodeverdiDto> {
            return response.betydninger
                .entries
                .map { Kodemapper(it.key, it.value) }
                .let { koder -> fromBetydninger(koder)}
        }

        fun fromBetydninger(koder: List<Kodemapper>): List<KodeverdiDto> {
            return koder.flatMap {
                it.betydninger.flatMap { betydning ->
                    betydning.beskrivelser.entries.map { beskrivelse ->
                        KodeverdiDto(it.kode, beskrivelse.key, beskrivelse.value.tekst!!)
                    }
                }
            }
        }
    }
}

data class Kodemapper(val kode: String, val betydninger: List<Betydning>) {

}