package no.nav.yrkesskade.kodeverk.model

import javax.persistence.*

@Entity
@Table(name = "kategori")
data class Kodekategori(
    @Id
    @Column(name = "navn", nullable = false)
    var navn: String? = null,

    @Column(name = "beskrivelse", nullable = false)
    var beskrivelse: String? = null,

    @ManyToMany(mappedBy = "kategorier")
    var typer: List<Kodetype>?,

    @ManyToMany(mappedBy = "kategorier")
    var koder: Set<Kode>?

)