package no.nav.yrkesskade.kodeverk.error

import javax.persistence.PersistenceException

class ManglendeDataException(melding: String) : PersistenceException(melding)
