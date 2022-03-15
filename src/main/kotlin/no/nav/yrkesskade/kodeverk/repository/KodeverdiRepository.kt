package no.nav.yrkesskade.kodeverk.repository

import no.nav.yrkesskade.kodeverk.model.Kodeverdi
import no.nav.yrkesskade.kodeverk.model.KodeverdiId
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.query.Param

interface KodeverdiRepository : JpaRepository<Kodeverdi, KodeverdiId> {
    @Query(
        value = """
            SELECT kv.kode, kv.spraak, kv.verdi FROM verdi kv
            JOIN kode k ON kv.kode = k.kode
            WHERE k.kategori_id IS NULL
            AND k.type_id = :typeId
            UNION
            SELECT kv.kode, kv.spraak, kv.verdi FROM verdi kv
            JOIN kode k ON kv.kode = k.kode
            WHERE k.kategori_id = :kategoriId
            AND k.type_id = :typeId
        """,
        nativeQuery = true
    )
    fun hentKodeverdiForTypeOgKategori(
        @Param("typeId") typeId: Int,
        @Param("kategoriId") kategoriId: Int
    ): List<Kodeverdi>
}