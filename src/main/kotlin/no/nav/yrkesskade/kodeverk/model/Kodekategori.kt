package no.nav.yrkesskade.kodeverk.model

import javax.persistence.*

@Entity
@Table(name = "kode_kategori")
data class Kodekategori(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "kategori_id", nullable = false)
    var kategoriId: Int? = null,

    @Column(name = "navn", nullable = false)
    var navn: String? = null,

    @Column(name = "beskrivelse", nullable = false)
    var beskrivelse: String? = null,

    @ManyToMany(mappedBy = "kategorier")
    var typer: List<Kodetype>?

)