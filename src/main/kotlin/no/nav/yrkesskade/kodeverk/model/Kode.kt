package no.nav.yrkesskade.kodeverk.model

import java.time.Instant
import javax.persistence.*


@Entity
@Table(name = "kode")
data class Kode (
    @Id
    @Column(name="kode", nullable = false, updatable = false)
    val kode: String = "",

    @Column(name="kategori_id", nullable = true)
    var kategoriId: Int? = null,

    @Column(name = "type_id", nullable = false)
    var typeId: Int? = null,

    @Column(name="gyldig_fra", nullable = true)
    var gyldigFra: Instant?,

    @Column(name="gyldig_til", nullable = true)
    var gyldigTil: Instant?,

    @OneToMany
    @JoinColumn(name = "kode")
    var kodeverdier: MutableSet<Kodeverdi> = mutableSetOf()
)