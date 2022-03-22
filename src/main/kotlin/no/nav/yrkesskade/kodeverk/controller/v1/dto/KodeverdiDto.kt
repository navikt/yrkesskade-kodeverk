package no.nav.yrkesskade.kodeverk.controller.v1.dto

import no.nav.yrkesskade.kodeverk.model.Kodeverdi
import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.api.Betydning
import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.api.GetKodeverkKoderBetydningerResponse

data class KodeverdiDto(val kode: String, val spraak: String, val verdi: String, val sortering: Int?) {

    companion object {
        fun konverter(kodeverdi: Kodeverdi): KodeverdiDto = KodeverdiDto(kodeverdi.kode, kodeverdi.spraak, kodeverdi.verdi, kodeverdi.sortering)

        fun fromKoderBetydningerResponse(navn: String, response: GetKodeverkKoderBetydningerResponse): Map<KodeStreng, KodeverdiDto> {
            return response.betydninger
                .entries
                .map { Kodemapper(it.key, it.value) }
                .let { koder -> fromBetydninger(koder) }
                .associateBy { it.kode }
        }

        private fun fromBetydninger(koder: List<Kodemapper>): List<KodeverdiDto> {
             return koder.map {
                it.betydninger.map {
                    betydning -> betydning.beskrivelser.entries.map {
                        beskrivelse -> KodeverdiDto(it.kode, beskrivelse.key, beskrivelse.value.tekst!!, null)
                }
                }.flatten()
            }.flatten()
        }
    }
}

data class Kodemapper(val kode: String, val betydninger: List<Betydning>) {

}

typealias KodeStreng = String