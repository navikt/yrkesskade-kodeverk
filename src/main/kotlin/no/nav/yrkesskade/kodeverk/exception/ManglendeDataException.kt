package no.nav.yrkesskade.kodeverk.exception

import javax.persistence.PersistenceException

class ManglendeDataException(melding: String) : PersistenceException(melding)
