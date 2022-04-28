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
import org.springframework.test.web.servlet.result.MockMvcResultHandlers
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
        hentKategorierFor("tidsrom", 4)
    }

    @Test
    fun `hent kodeverk kategorier for alvorlighetsgrad`() {
        hentKategorierFor("alvorlighetsgrad", 4)
    }

    @Test
    fun `hent kodeverk kategorier for Hvor skjedde ulykken`() {
        hentKategorierFor("hvorSkjeddeUlykken", 4)
    }

    @Test
    fun `hent kodeverk kategorier for Årsak og bakgrunn`() {
        hentKategorierFor("aarsakOgBakgrunn", 4)
    }

    @Test
    fun `hent kodeverk kategorier for Skadet kroppsdel`() {
        hentKategorierFor("skadetKroppsdel", 4)
    }

    @Test
    fun `hent kodeverk kategorier for skadetype`() {
        hentKategorierFor("skadetype", 4)
    }

    @Test
    fun `hent kodeverk kategorier for Har skadelidt hatt fravær`() {
        hentKategorierFor("harSkadelidtHattFravaer", 2)
    }

    @Test
    fun `hent kodeverk kategorier for Hvilken type arbeidsplass er det`() {
        hentKategorierFor("typeArbeidsplass", 3)
    }

    @Test
    fun `hent kodeverk kategorier for Hva var bakgrunnen for hendelsen`() {
        hentKategorierFor("bakgrunnForHendelsen", 3)
    }

    private fun hentKategorierFor(typenavn: String, forventetAntall: Int) {
        mvc.perform(
            get("$KODEVERK_V1/typer/$typenavn/kategorier")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kategorier.length()").value(forventetAntall))
    }

    @Test
    fun `hent map med kodeverkverdier for tidsrom og elev kategori`() {
        mvc.perform(
            get("$KODEVERK_V1/typer/tidsrom/kategorier/elev/kodeverdier")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierMap").isMap)
            .andExpect(jsonPath("$.kodeverdierMap.length()").value(5))

    }

    @Test
    fun `hent kodeverkverdier for tidsrom og arbeidstaker kategori`() {
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
    fun `hent kodeverkverdier for tidsrom og militær kategori`() {
        mvc.perform(
            get("$KODEVERK_V1/typer/tidsrom/kategorier/militær/kodeverdier")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierMap.length()").value(0))

    }

    @Test
    fun `hent kodeverkverdier for skadetype og arbeidstaker kategori`() {
        mvc.perform(
            get("$KODEVERK_V1/typer/skadetype/kategorier/arbeidstaker/kodeverdier")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierMap.length()").value(19))
    }

    @Test
    fun `hent map med unike kodeverkverdier for tidsrom`() {
        mvc.perform(
            get("$KODEVERK_V1/typer/tidsrom/kodeverdier")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierMap").isMap)
            .andExpect(jsonPath("$.kodeverdierMap.length()").value(11))

    }

    @Test
    fun `hent map med unike kodeverkverdier for fravaerstype`() {
        mvc.perform(
            get("$KODEVERK_V1/typer/fravaertype/kodeverdier")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierMap").isMap)
            .andExpect(jsonPath("$.kodeverdierMap.length()").value(4))

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

    @Test
    fun `hent liste med kodeverkverdier for tidsrom og elev kategori`() {
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
    fun `hent liste med kodeverkverdier for Tidsrom`() {
        hentKodeverdilisteFor("tidsrom", "arbeidstaker", 9)
        hentKodeverdilisteFor("tidsrom", "laerling", 9)
        hentKodeverdilisteFor("tidsrom", "elev", 5)
        hentKodeverdilisteFor("tidsrom", "tiltaksdeltaker", 8)
    }

    @Test
    fun `hent liste med kodeverkverdier for Alvorlighetsgrad`() {
        hentKodeverdilisteFor("alvorlighetsgrad", "arbeidstaker", 5)
        hentKodeverdilisteFor("alvorlighetsgrad", "laerling", 5)
        hentKodeverdilisteFor("alvorlighetsgrad", "elev", 5)
        hentKodeverdilisteFor("alvorlighetsgrad", "tiltaksdeltaker", 5)
    }

    @Test
    fun `hent liste med kodeverkverdier for Hvor skjedde ulykken`() {
        hentKodeverdilisteFor("hvorSkjeddeUlykken", "arbeidstaker", 10)
        hentKodeverdilisteFor("hvorSkjeddeUlykken", "laerling", 10)
        hentKodeverdilisteFor("hvorSkjeddeUlykken", "elev", 10)
        hentKodeverdilisteFor("hvorSkjeddeUlykken", "tiltaksdeltaker", 14)
    }

    @Test
    fun `hent liste med kodeverkverdier for Årsak og bakgrunn`() {
        hentKodeverdilisteFor("aarsakOgBakgrunn", "arbeidstaker", 19)
        hentKodeverdilisteFor("aarsakOgBakgrunn", "laerling", 19)
        hentKodeverdilisteFor("aarsakOgBakgrunn", "elev", 19)
        hentKodeverdilisteFor("aarsakOgBakgrunn", "tiltaksdeltaker", 19)
    }

    @Test
    fun `hent liste med kodeverkverdier for Hvor på kroppen skjedde skaden`() {
        hentKodeverdilisteFor("skadetKroppsdel", "arbeidstaker", 40)
        hentKodeverdilisteFor("skadetKroppsdel", "laerling", 40)
        hentKodeverdilisteFor("skadetKroppsdel", "elev", 40)
        hentKodeverdilisteFor("skadetKroppsdel", "tiltaksdeltaker", 40)
    }

    @Test
    fun `hent liste med kodeverkverdier for Har skadelidt hatt fravær`() {
        hentKodeverdilisteFor("harSkadelidtHattFravaer", "arbeidstaker", 4)
        hentKodeverdilisteFor("harSkadelidtHattFravaer", "laerling", 4)
        hentKodeverdilisteFor("harSkadelidtHattFravaer", "elev", 0)
        hentKodeverdilisteFor("harSkadelidtHattFravaer", "tiltaksdeltaker", 0)
    }

    @Test
    fun `hent liste med kodeverkverdier for Type arbeidsplass`() {
        hentKodeverdilisteFor("typeArbeidsplass", "arbeidstaker", 20)
        hentKodeverdilisteFor("typeArbeidsplass", "laerling", 20)
        hentKodeverdilisteFor("typeArbeidsplass", "elev", 0)
        hentKodeverdilisteFor("typeArbeidsplass", "tiltaksdeltaker", 20)
    }

    @Test
    fun `hent liste med kodeverkverdier for Bakgrunnen for hendelsen`() {
        hentKodeverdilisteFor("bakgrunnForHendelsen", "arbeidstaker", 33)
        hentKodeverdilisteFor("bakgrunnForHendelsen", "laerling", 33)
        hentKodeverdilisteFor("bakgrunnForHendelsen", "elev", 0)
        hentKodeverdilisteFor("bakgrunnForHendelsen", "tiltaksdeltaker", 33)
    }

    @Test
    fun `hent liste med kodeverkverdier for Førte din skade eller sykdom til fravær`() {
        hentKodeverdilisteFor("foerteDinSkadeEllerSykdomTilFravaer",  5)
    }

    @Test
    fun `hent liste med kodeverkverdier for rolletype`() {
        hentKodeverdilisteFor("rolletype",  2)
    }

    @Test
    fun `hent liste med kodeverkverdier for Innmelderroller`() {
        hentKodeverdilisteFor("innmelderrolle",  2)
    }

    private fun hentKodeverdilisteFor(
        typenavn: String,
        kategorinavn: String,
        forventetAntall: Int
    ) {
        mvc.perform(
            get("$KODEVERK_V1/typer/$typenavn/kategorier/$kategorinavn/kodeverdierliste")
        ).andDo(MockMvcResultHandlers.print()).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierListe").isArray)
            .andExpect(jsonPath("$.kodeverdierListe.length()").value(forventetAntall.toString()))
    }

    private fun hentKodeverdilisteFor(
        typenavn: String,
        forventetAntall: Int
    ) {
        mvc.perform(
            get("$KODEVERK_V1/typer/$typenavn/kodeverdierliste")
        ).andDo(MockMvcResultHandlers.print()).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierListe").isArray)
            .andExpect(jsonPath("$.kodeverdierListe.length()").value(forventetAntall.toString()))
    }


    companion object {
        private const val KODEVERK_V1 = "/api/v1/kodeverk"
    }
}