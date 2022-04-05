package no.nav.yrkesskade.kodeverk.controller.v1

import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule
import com.fasterxml.jackson.module.kotlin.jacksonObjectMapper
import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodeverdiListeResponsDto
import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodeverdiResponsDto
import no.nav.yrkesskade.kodeverk.test.AbstractIT
import no.nav.yrkesskade.kodeverk.test.TestMockServerInitialization
import org.assertj.core.api.Assertions.assertThat
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc
import org.springframework.test.context.ContextConfiguration
import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.status

@Suppress("NonAsciiCharacters")
@AutoConfigureMockMvc
@ContextConfiguration(initializers = [TestMockServerInitialization::class])
class KodeverkControllerIT : AbstractIT() {

    private val objectMapper = jacksonObjectMapper().registerModule(JavaTimeModule())

    @Autowired
    lateinit var mvc: MockMvc

    @Test
    fun `hent kodeverk typer`() {
        mvc.perform(
            get("$KODEVERK_V1/typer")
        ).andExpect(status().isOk)

    }

    @Test
    fun `hent kodeverk kategorier for tidsrom`() {
        hentKategorierFor("tidsrom", 3)
    }

    @Test
    fun `hent kodeverk kategorier for alvorlighetsgrad`() {
        hentKategorierFor("alvorlighetsgrad", 3)
    }

    @Test
    fun `hent kodeverk kategorier for Hvor skjedde ulykken`() {
        hentKategorierFor("hvorSkjeddeUlykken", 3)
    }

    @Test
    fun `hent kodeverk kategorier for Årsak og bakgrunn`() {
        hentKategorierFor("aarsakOgBakgrunn", 3)
    }

    @Test
    fun `hent kodeverk kategorier for Skadet kroppsdel`() {
        hentKategorierFor("skadetKroppsdel", 3)
    }

    @Test
    fun `hent kodeverk kategorier for skadetype`() {
        hentKategorierFor("skadetype", 3)
    }

    @Test
    fun `hent kodeverk kategorier for Har skadelidt hatt fravær`() {
        hentKategorierFor("harSkadelidtHattFravaer", 2)
    }

    private fun hentKategorierFor(typenavn: String, forventetAntall: Int) {
        mvc.perform(
            get("$KODEVERK_V1/typer/$typenavn/kategorier")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kategorier.length()").value(forventetAntall))
    }

    @Test
    fun `hent map med kodeverk verdier for tidsrom og elev kategori`() {
        mvc.perform(
            get("$KODEVERK_V1/typer/tidsrom/kategorier/elev/kodeverdier")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierMap").isMap)
            .andExpect(jsonPath("$.kodeverdierMap.length()").value(5))

    }

    @Test
    fun `hent liste med kodeverk verdier for tidsrom og elev kategori`() {
        val resultActions = mvc.perform(
            get("$KODEVERK_V1/typer/tidsrom/kategorier/elev/kodeverdierliste")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierListe").isArray)
            .andExpect(jsonPath("$.kodeverdierListe.length()").value(5))

        val json = resultActions.andReturn().response.contentAsString
        val responsDto = objectMapper.readValue(json, KodeverdiListeResponsDto::class.java)
        val kodeverdierListe = responsDto.kodeverdierListe
        assertThat(kodeverdierListe.size).isEqualTo(5)
        val elementA = kodeverdierListe[0]
        val elementB = kodeverdierListe[1]
        assertThat(elementA.verdi).isLessThan(elementB.verdi) // sortert alfabetisk på verdi
    }

    @Test
    fun `hent kodeverk verdier for tidsrom og arbeidstaker kategori`() {
        val resultActions = mvc.perform(
            get("$KODEVERK_V1/typer/tidsrom/kategorier/arbeidstaker/kodeverdier")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierMap.length()").value(9))

        val json = resultActions.andReturn().response.contentAsString
        val responsDto = objectMapper.readValue(json, KodeverdiResponsDto::class.java)
        val kodeverdierMap = responsDto.kodeverdierMap
        assertThat(kodeverdierMap).isNotEmpty

        val iAvtaltArbeidstid = kodeverdierMap["iAvtaltArbeidstid"]
        assertThat(iAvtaltArbeidstid?.kode).isEqualTo("iAvtaltArbeidstid")
        assertThat(iAvtaltArbeidstid?.verdi).isEqualTo("I avtalt arbeidstid")
    }

    /**
     *  Militær har to ekstra koder i tillegg til standard skjema
     */
    @Test
    fun `hent kodeverk verdier for tidsrom og militær kategori`() {
        mvc.perform(
            get("$KODEVERK_V1/typer/tidsrom/kategorier/militær/kodeverdier")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierMap.length()").value(0))

    }

    @Test
    fun `hent kodeverk verdier for skadetype og arbeidstaker kategori`() {
        mvc.perform(
            get("$KODEVERK_V1/typer/skadetype/kategorier/arbeidstaker/kodeverdier")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierMap.length()").value(19))
    }

    @Test
    fun `hent landkoder`() {
        val resultActions = mvc.perform(
            get("$KODEVERK_V1/typer/landkoder/kategorier/arbeidstaker/kodeverdier")
        ).andExpect(status().isOk)

        val json = resultActions.andReturn().response.contentAsString
        val responsDto = objectMapper.readValue(json, KodeverdiResponsDto::class.java)
        val kodeverdierMap = responsDto.kodeverdierMap
        assertThat(kodeverdierMap).isNotEmpty
        assertThat(kodeverdierMap.size).isEqualTo(4)

        val norge = kodeverdierMap["NOR"]
        assertThat(norge?.kode).isEqualTo("NOR")
        assertThat(norge?.verdi).isEqualTo("NORGE")
    }

    companion object {
        private const val KODEVERK_V1 = "/api/v1/kodeverk"
    }
}