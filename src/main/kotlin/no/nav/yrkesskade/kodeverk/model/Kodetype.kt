package no.nav.yrkesskade.kodeverk.model

import javax.persistence.*

@Entity
@Table(name = "type")
data class Kodetype(
    @Id
    @Column(name = "navn", nullable = false)
    var navn: String? = null,

    @Column(name = "beskrivelse", nullable = false)
    var beskrivelse: String? = null,

    @Column(name = "ekstern", nullable = false)
    var ekstern: Boolean? = null,

    @Column(name = "ekstern_navn", nullable = true)
    var eksternNavn: String? = null,

    @ManyToMany
    @JoinTable(
        name = "kategori_type",
        joinColumns = [JoinColumn(name = "type_navn")],
        inverseJoinColumns = [JoinColumn(name = "kategori_navn")]
    )
    var kategorier: List<Kodekategori>?
)