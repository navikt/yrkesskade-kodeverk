package no.nav.yrkesskade.kodeverk.repository

import no.nav.yrkesskade.kodeverk.model.Kodeverdi
import no.nav.yrkesskade.kodeverk.model.KodeverdiId
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.query.Param

interface Verdi {
    fun getKode(): String
    fun getSpraak(): String
    fun getVerdi(): String
    fun getSortering(): Int?
}


interface KodeverdiRepository : JpaRepository<Kodeverdi, KodeverdiId> {
    @Query(
        value = """
            SELECT kv.kode, kv.spraak, kv.verdi, k.sortering 
            FROM verdi kv
            JOIN kode k ON kv.kode = k.kode
            WHERE k.kategori_id = :kategoriId
            AND k.type_id = :typeId
            GROUP BY kv.kode, kv.spraak, kv.verdi, k.sortering
            ORDER BY sortering, verdi
        """,
        nativeQuery = true
    )
    fun hentKodeverdiForTypeOgKategori(
        @Param("typeId") typeId: Int,
        @Param("kategoriId") kategoriId: Int
    ): List<Verdi>

    @Query(
        value = """
            SELECT kv.kode, kv.spraak, kv.verdi, k.sortering 
            FROM verdi kv
            JOIN kode k ON kv.kode = k.kode
            WHERE k.type_id = :typeId
            GROUP BY kv.kode, kv.spraak, kv.verdi, k.sortering
            ORDER BY sortering, verdi
        """,
        nativeQuery = true
    )
    fun hentKodeverdiForType(@Param("typeId") typeId: Int): List<Verdi>
}