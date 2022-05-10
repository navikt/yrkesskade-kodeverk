package no.nav.yrkesskade.kodeverk.model

import java.time.Instant
import javax.persistence.*


@Entity
@Table(name = "kode")
data class Kode(
    @Id
    @Column(name = "kode", nullable = false, updatable = false)
    val kode: String = "",

    @Column(name = "gyldig_fra", nullable = true)
    var gyldigFra: Instant?,

    @Column(name = "gyldig_til", nullable = true)
    var gyldigTil: Instant?,

    @OneToMany
    @JoinColumn(name = "kode")
    var kodeverdier: MutableSet<Kodeverdi> = mutableSetOf(),

    @ManyToMany
    @JoinTable(
        name = "kategori_type_kode",
        joinColumns = [JoinColumn(name = "kategori_navn")],
        inverseJoinColumns = [JoinColumn(name = "kode")]
    )
    var kategorier: Set<Kodekategori>?,

    @ManyToMany
    @JoinTable(
        name = "type_kode",
        joinColumns = [JoinColumn(name = "type_navn")],
        inverseJoinColumns = [JoinColumn(name = "kode")]
    )
    var typer: Set<Kodetype>?
)