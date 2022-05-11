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
            SELECT kv.kode, kv.spraak, kv.verdi, kk.sortering 
            FROM verdi kv
            JOIN kode k ON kv.kode = k.kode
            JOIN kategori_type_kode kk ON kk.kode = k.kode
            WHERE kk.kategori_navn = :kategorinavn
            AND kk.type_navn = :typenavn
            AND CURRENT_TIMESTAMP BETWEEN COALESCE(k.gyldig_fra, CURRENT_DATE) AND COALESCE (k.gyldig_til, CURRENT_TIMESTAMP)
            GROUP BY kv.kode, kv.spraak, kv.verdi, kk.sortering
            ORDER BY sortering, verdi
        """,
        nativeQuery = true
    )
    fun hentKodeverdiForTypeOgKategori(
        @Param("typenavn") typenavn: String,
        @Param("kategorinavn") kategorinavn: String
    ): List<Verdi>

    @Query(
        value = """
            SELECT kv.kode, kv.spraak, kv.verdi, tk.sortering 
            FROM verdi kv
            JOIN kode k ON kv.kode = k.kode
            JOIN type_kode tk ON tk.kode = k.kode
            WHERE tk.type_navn = :typenavn
            AND CURRENT_TIMESTAMP BETWEEN COALESCE(k.gyldig_fra, CURRENT_DATE) AND COALESCE (k.gyldig_til, CURRENT_TIMESTAMP)
            GROUP BY kv.kode, kv.spraak, kv.verdi, tk.sortering
            ORDER BY sortering, verdi
        """,
        nativeQuery = true
    )
    fun hentKodeverdiForType(@Param("typenavn") typeId: String): List<Verdi>
}