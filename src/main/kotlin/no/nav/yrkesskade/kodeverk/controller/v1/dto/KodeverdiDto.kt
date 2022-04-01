package no.nav.yrkesskade.kodeverk.controller.v1.dto

import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.api.Betydning
import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.api.GetKodeverkKoderBetydningerResponse
import no.nav.yrkesskade.kodeverk.repository.Verdi

data class KodeverdiDto(val kode: String, val spraak: String, val verdi: String, val sortering: Int?) {

    companion object {
        fun konverter(verdi: Verdi): KodeverdiDto = KodeverdiDto(verdi.getKode(), verdi.getSpraak(), verdi.getVerdi(), verdi.getSortering())

        fun fromKoderBetydningerResponse(response: GetKodeverkKoderBetydningerResponse): Map<KodeStreng, KodeverdiDto> {
            return response.betydninger
                .entries
                .map { Kodemapper(it.key, it.value) }
                .let { koder -> fromBetydninger(koder) }
                .associateBy { it.kode }
        }

       private fun fromBetydninger(koder: List<Kodemapper>): List<KodeverdiDto> {
            return koder.flatMap {
                it.betydninger.flatMap { betydning ->
                    betydning.beskrivelser.entries.map { beskrivelse ->
                        KodeverdiDto(it.kode, beskrivelse.key, beskrivelse.value.tekst!!, null)
                    }
                }
            }
        }
    }
}

data class Kodemapper(val kode: String, val betydninger: List<Betydning>) {

}

typealias KodeStreng = String