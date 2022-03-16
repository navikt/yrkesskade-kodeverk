package no.nav.yrkesskade.kodeverk.oppslag.kodeverk.exception

class ClientException(endpoint: String, httpStatus: Int, responseBody: String?) :
    Throwable("Feilkode $httpStatus ved kall til endepunkt $endpoint. \nResponseBody=$responseBody")
