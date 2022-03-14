package no.nav.yrkesskade.kodeverk.model

import java.io.Serializable
import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.IdClass
import javax.persistence.Table

class KodeverdiId(
    val kode: String = "",
    val spraak: String = "nb") : Serializable

@Entity
@Table(name = "kode_verdi")
@IdClass(KodeverdiId::class)
data class Kodeverdi (
    @Id val kode: String = "",
    @Id val spraak: String = "nb",
    val verdi: String = ""
)