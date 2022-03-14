package no.nav.yrkesskade.kodeverk.oppslag.kodeverk.api

class GetKodeverkKoderBetydningerResponse {

    var betydninger: Map<String, List<Betydning>> = emptyMap()
        set(betydninger) {
            field = LinkedHashMap(betydninger)
        }

}