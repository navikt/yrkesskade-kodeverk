package no.nav.yrkesskade.kodeverk.repository

import no.nav.yrkesskade.kodeverk.model.Kodekategori
import org.springframework.data.jpa.repository.JpaRepository

interface KodekategoriRepository  : JpaRepository<Kodekategori, String> {
}