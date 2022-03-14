package no.nav.yrkesskade.kodeverk.oppslag.kodeverk

import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodeverdiDto
import no.nav.yrkesskade.kodeverk.security.AutentisertBruker
import no.nav.yrkesskade.kodeverk.test.AbstractIT
import no.nav.yrkesskade.kodeverk.test.TestMockServerInitialization
import org.assertj.core.api.Assertions.assertThat
import org.junit.jupiter.api.Test
import org.mockito.Mockito
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.boot.test.mock.mockito.MockBean
import org.springframework.test.context.ContextConfiguration

@SpringBootTest
@ContextConfiguration(initializers = [TestMockServerInitialization::class])
class KodeverkClientIT: AbstractIT() {

    @Autowired lateinit var kodeverkClient: KodeverkClient

    @MockBean
    lateinit var autentisertBruker: AutentisertBruker

    @Test
    fun `Hent landkoder fra eksternt kodeverk`() {
        Mockito.`when`(autentisertBruker.jwtToken).thenReturn("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")
        val landkoder = kodeverkClient.hentKodeverkVerdier("Landkoder")
        assertThat(landkoder.size).isEqualTo(4)
        assertThat(landkoder.get(0)).isEqualTo(KodeverdiDto("BGR", "nb", "BULGARIA"))
    }
}