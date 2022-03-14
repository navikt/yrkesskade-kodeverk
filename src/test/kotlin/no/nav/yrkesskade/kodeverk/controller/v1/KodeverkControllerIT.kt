package no.nav.yrkesskade.kodeverk.controller.v1

import no.nav.yrkesskade.kodeverk.test.AbstractIT
import no.nav.yrkesskade.kodeverk.test.TestMockServerInitialization
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc
import org.springframework.http.HttpHeaders
import org.springframework.test.context.ContextConfiguration
import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.status

@AutoConfigureMockMvc
@ContextConfiguration(initializers = [TestMockServerInitialization::class])
class KodeverkControllerIT : AbstractIT() {

    @Autowired
    lateinit var mvc: MockMvc

    @Test
    fun `hent kodeverk typer - autentisert`() {
        // gyldig JWT
        val jwt = mvc.perform(get("/local/jwt")).andReturn().response.contentAsString

        mvc.perform(
            get("$KODEVERK_V1/typer")
                .header(HttpHeaders.AUTHORIZATION, "Bearer $jwt")
        ).andExpect(status().isOk)

    }

    @Test
    fun `hent kodeverk kategorier for tidsrom - autentisert`() {
        // gyldig JWT
        val jwt = mvc.perform(get("/local/jwt")).andReturn().response.contentAsString

        mvc.perform(
            get("$KODEVERK_V1/typer/tidsrom/kategorier")
                .header(HttpHeaders.AUTHORIZATION, "Bearer $jwt")
        ).andExpect(status().isOk)

    }

    @Test
    fun `hent kodeverk verdier for tidsrom og elev kategori - autentisert`() {
        // gyldig JWT
        val jwt = mvc.perform(get("/local/jwt")).andReturn().response.contentAsString

        mvc.perform(
            get("$KODEVERK_V1/typer/tidsrom/kategorier/elev/kodeverdier")
                .header(HttpHeaders.AUTHORIZATION, "Bearer $jwt")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdier").isArray)
            .andExpect(jsonPath("$.kodeverdier.length()").value(8))

    }

    @Test
    fun `hent kodeverk verdier for tidsrom og arbeidstaker kategori - autentisert`() {
        // gyldig JWT
        val jwt = mvc.perform(get("/local/jwt")).andReturn().response.contentAsString

        mvc.perform(
            get("$KODEVERK_V1/typer/tidsrom/kategorier/arbeidstaker/kodeverdier")
                .header(HttpHeaders.AUTHORIZATION, "Bearer $jwt")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdier.length()").value(8))

    }

    /**
     *  Militær har to ekstra koder i tillegg til standard skjema
     */
    @Test
    fun `hent kodeverk verdier for tidsrom og militær kategori - autentisert`() {
        // gyldig JWT
        val jwt = mvc.perform(get("/local/jwt")).andReturn().response.contentAsString

        mvc.perform(
            get("$KODEVERK_V1/typer/tidsrom/kategorier/militær/kodeverdier")
                .header(HttpHeaders.AUTHORIZATION, "Bearer $jwt")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdier.length()").value(10))

    }

    @Test
    fun `hent landkoder - autentisert`() {
        // gyldig JWT
        val jwt = mvc.perform(get("/local/jwt")).andReturn().response.contentAsString

        mvc.perform(
            get("$KODEVERK_V1/typer/landkoder/kategorier/arbeidstaker/kodeverdier")
                .header(HttpHeaders.AUTHORIZATION, "Bearer $jwt")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdier.length()").value(4))

    }

    companion object {
        private const val KODEVERK_V1 = "/api/v1/kodeverk"
    }
}