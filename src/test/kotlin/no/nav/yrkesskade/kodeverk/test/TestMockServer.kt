package no.nav.yrkesskade.kodeverk.test

import no.nav.yrkesskade.kodeverk.mockserver.AbstractMockServer
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty
import org.springframework.stereotype.Component

@Component
@ConditionalOnProperty(
    value = arrayOf("mock.enabled"),
    havingValue = "true",
    matchIfMissing = false
)
class TestMockServer() : AbstractMockServer(null)