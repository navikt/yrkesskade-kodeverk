package no.nav.yrkesskade.kodeverk.error

import java.time.Instant
import java.time.format.DateTimeFormatter

class Feil(
    val statuskode: Int,
    val melding: String,
    val tidspunkt: String = DateTimeFormatter.ISO_INSTANT.format(Instant.now())
)
