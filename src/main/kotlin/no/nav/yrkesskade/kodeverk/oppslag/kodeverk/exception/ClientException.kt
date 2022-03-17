package no.nav.yrkesskade.kodeverk.oppslag.kodeverk.exception

class ClientException(val melding: String, endpoint: String, httpStatus: Int, responseBody: String?) :
    Throwable("$melding \nFeilkode $httpStatus ved kall til endepunkt $endpoint. \nResponseBody=$responseBody")
