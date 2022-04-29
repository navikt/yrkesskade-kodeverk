package no.nav.yrkesskade.kodeverk.repository

import no.nav.yrkesskade.kodeverk.model.Kodetype
import org.springframework.data.jpa.repository.JpaRepository

interface KodetypeRepository : JpaRepository<Kodetype, String> {
}