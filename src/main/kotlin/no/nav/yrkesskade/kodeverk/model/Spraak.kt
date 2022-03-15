package no.nav.yrkesskade.kodeverk.model

import javax.persistence.*

@Entity
@Table(name = "spraak")
data class Spraak(
    @Id
    @Column(name = "spraak", nullable = false)
    var spraak: String? = null,

    @Column(name = "landkode_iso2", nullable = false)
    var landkodeIso2: String? = null
)