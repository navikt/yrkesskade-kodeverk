package no.nav.yrkesskade.kodeverk.controller.v1

import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule
import com.fasterxml.jackson.module.kotlin.jacksonObjectMapper
import no.nav.security.mock.oauth2.MockOAuth2Server
import no.nav.security.mock.oauth2.token.DefaultOAuth2TokenCallback
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
import org.springframework.test.web.servlet.RequestBuilder
import org.springframework.test.web.servlet.ResultActions
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get
import org.springframework.test.web.servlet.result.MockMvcResultHandlers
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.status
import org.testcontainers.shaded.org.bouncycastle.crypto.tls.ConnectionEnd.server

@Suppress("NonAsciiCharacters")
@AutoConfigureMockMvc
@ContextConfiguration(initializers = [TestMockServerInitialization::class])
class KodeverkControllerIT : AbstractIT() {

    private val objectMapper = jacksonObjectMapper().registerModule(JavaTimeModule())

    @Autowired
    lateinit var server: MockOAuth2Server

    @Autowired
    lateinit var mvc: MockMvc

    @Test
    fun `hent kodeverk typer`() {
        mvc.perform(
            get("$KODEVERK_V1/typer")
        ).andExpect(status().isOk)

    }

    @Test
    fun `hent kodeverk typer med autentisert bruker`() {
        val jwt = token("azuread", "test@nav.test.no", "aad-client-id")
        mvc.perform(
            get("$KODEVERK_V1/typer").header("Authorization", "Bearer $jwt")
        ).andDo(MockMvcResultHandlers.print())
            .andExpect(status().isOk)
            .andExpect(jsonPath("$.typer.length()").value(26))
    }

    @Test
    fun `hent kodeverk typer med autentisert bruker som ikke er i whitelist`() {
        val jwt = token("azuread", "test@nav.test.no", "aad-client-id", "ikke-i-whitelist")
        mvc.perform(
            get("$KODEVERK_V1/typer").header("Authorization", "Bearer $jwt")
        ).andDo(MockMvcResultHandlers.print())
            .andExpect(status().isOk)
            .andExpect(jsonPath("$.typer.length()").value(18))
    }

    @Test
    fun `hent kodeverk typer uten token`() {
        mvc.perform(
            get("$KODEVERK_V1/typer")
        ).andDo(MockMvcResultHandlers.print())
            .andExpect(status().isOk)
            .andExpect(jsonPath("$.typer.length()").value(18))
    }

    @Test
    fun `hent kodeverk typer med uautorisert bruker`() {
        mvc.perform(
            get("$KODEVERK_V1/typer")
        ).andDo(MockMvcResultHandlers.print())
            .andExpect(status().isOk)
            .andExpect(jsonPath("$.typer.length()").value(18))
    }

    @Test
    fun `hent kodeverk kategorier for tidsrom`() {
        hentKategorierFor("tidsrom", 7)
    }

    @Test
    fun `hent kodeverk kategorier for alvorlighetsgrad`() {
        hentKategorierFor("alvorlighetsgrad", 7)
    }

    @Test
    fun `hent kodeverk kategorier for Hvor skjedde ulykken`() {
        hentKategorierFor("hvorSkjeddeUlykken", 7)
    }

    @Test
    fun `hent kodeverk kategorier for Årsak og bakgrunn`() {
        hentKategorierFor("aarsakOgBakgrunn", 7)
    }

    @Test
    fun `hent kodeverk kategorier for Skadet kroppsdel`() {
        hentKategorierFor("skadetKroppsdel", 7)
    }

    @Test
    fun `hent kodeverk kategorier for skadetype`() {
        hentKategorierFor("skadetype", 7)
    }

    @Test
    fun `hent kodeverk kategorier for Har skadelidt hatt fravær`() {
        hentKategorierFor("harSkadelidtHattFravaer", 3)
    }

    @Test
    fun `hent kodeverk kategorier for Hvilken type arbeidsplass er det`() {
        hentKategorierFor("typeArbeidsplass", 3)
    }

    @Test
    fun `hent kodeverk kategorier for Hva var bakgrunnen for hendelsen`() {
        hentKategorierFor("bakgrunnForHendelsen", 6)
    }

    private fun hentKategorierFor(typenavn: String, forventetAntall: Int) {
        mvc.perform(
            get("$KODEVERK_V1/typer/$typenavn/kategorier")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kategorier.length()").value(forventetAntall))
    }

    @Test
    fun `skal hente map med kodeverkverdier uavhengig av case på kategorier`() {
        mvc.perform(
            get("$KODEVERK_V1/typer/tidsrom/kategorier/elevellerstudent/kodeverdier")
        ).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierMap").isMap)
            .andExpect(jsonPath("$.kodeverdierMap.length()").value(5))

    }

    @Test
    fun `hent map med kodeverkverdier for tidsrom og elev kategori`() {
        mvc.perform(
            get("$KODEVERK_V1/typer/tidsrom/kategorier/elevEllerStudent/kodeverdier")
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
            .andExpect(jsonPath("$.kodeverdierMap.length()").value(23))
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
    fun `hent map med unike kodeverkverdier for behandlingstyper - uautentisert`() {
        mvc.perform(
            get("$KODEVERK_V1/typer/behandlingstype/kodeverdier")
        )
            .andDo(MockMvcResultHandlers.print())
            .andExpect(status().isNotFound)
    }

    @Test
    fun `hent map med unike kodeverkverdier for behandlingstyper - autentisert med ukjent clientid`() {
        val jwt = token("azuread", "test@nav.test.no", "aad-client-id", "ikke-i-whitelist")
        mvc.perform(
            get("$KODEVERK_V1/typer/behandlingstype/kodeverdier").header("Authorization", "Bearer $jwt")
        )
            .andDo(MockMvcResultHandlers.print())
            .andExpect(status().isNotFound)
    }

    @Test
    fun `hent map med unike kodeverkverdier for behandlingstyper - autentisert `() {
        val jwt = token("azuread", "test@nav.test.no", "aad-client-id")
        mvc.perform(
            get("$KODEVERK_V1/typer/behandlingstype/kodeverdier").header("Authorization", "Bearer $jwt")
        )
            .andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierMap").isMap)
            .andExpect(jsonPath("$.kodeverdierMap.length()").value(2))
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
            get("$KODEVERK_V1/typer/tidsrom/kategorier/elevEllerStudent/kodeverdierliste")
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
        hentKodeverdilisteFor("tidsrom", "elevEllerStudent", 5)
        hentKodeverdilisteFor("tidsrom", "tiltaksdeltaker", 8)
        hentKodeverdilisteFor("tidsrom", "vernepliktigIFoerstegangstjenesten", 5)
        hentKodeverdilisteFor("tidsrom", "innsatt", 6)
        hentKodeverdilisteFor("tidsrom", "personSomUtfoererSamfunnsstraff", 6)
        hentKodeverdilisteFor("tidsrom", "personIVaretekt", 6)
    }

    @Test
    fun `hent liste med kodeverkverdier for Alvorlighetsgrad`() {
        hentKodeverdilisteFor("alvorlighetsgrad", "arbeidstaker", 5)
        hentKodeverdilisteFor("alvorlighetsgrad", "laerling", 5)
        hentKodeverdilisteFor("alvorlighetsgrad", "elevEllerStudent", 5)
        hentKodeverdilisteFor("alvorlighetsgrad", "tiltaksdeltaker", 5)
        hentKodeverdilisteFor("alvorlighetsgrad", "vernepliktigIFoerstegangstjenesten", 5)
        hentKodeverdilisteFor("alvorlighetsgrad", "innsatt", 5)
        hentKodeverdilisteFor("alvorlighetsgrad", "personSomUtfoererSamfunnsstraff", 5)
        hentKodeverdilisteFor("alvorlighetsgrad", "personIVaretekt", 5)
    }

    @Test
    fun `hent liste med kodeverkverdier for Hvor skjedde ulykken`() {
        hentKodeverdilisteFor("hvorSkjeddeUlykken", "arbeidstaker", 10)
        hentKodeverdilisteFor("hvorSkjeddeUlykken", "laerling", 10)
        hentKodeverdilisteFor("hvorSkjeddeUlykken", "elevEllerStudent", 10)
        hentKodeverdilisteFor("hvorSkjeddeUlykken", "tiltaksdeltaker", 14)
        hentKodeverdilisteFor("hvorSkjeddeUlykken", "innsatt", 5)
        hentKodeverdilisteFor("hvorSkjeddeUlykken", "personSomUtfoererSamfunnsstraff", 5)
        hentKodeverdilisteFor("hvorSkjeddeUlykken", "personIVaretekt", 5)
    }

    @Test
    fun `hent liste med kodeverkverdier for Årsak og bakgrunn`() {
        hentKodeverdilisteFor("aarsakOgBakgrunn", "arbeidstaker", 22)
        hentKodeverdilisteFor("aarsakOgBakgrunn", "laerling", 22)
        hentKodeverdilisteFor("aarsakOgBakgrunn", "elevEllerStudent", 22)
        hentKodeverdilisteFor("aarsakOgBakgrunn", "tiltaksdeltaker", 22)
        hentKodeverdilisteFor("aarsakOgBakgrunn", "vernepliktigIFoerstegangstjenesten", 22)
        hentKodeverdilisteFor("aarsakOgBakgrunn", "innsatt", 22)
        hentKodeverdilisteFor("aarsakOgBakgrunn", "personSomUtfoererSamfunnsstraff", 22)
        hentKodeverdilisteFor("aarsakOgBakgrunn", "personIVaretekt", 22)
    }

    @Test
    fun `hent liste med kodeverkverdier for Hvor på kroppen skjedde skaden`() {
        hentKodeverdilisteFor("skadetKroppsdel", "arbeidstaker", 40)
        hentKodeverdilisteFor("skadetKroppsdel", "laerling", 40)
        hentKodeverdilisteFor("skadetKroppsdel", "elevEllerStudent", 40)
        hentKodeverdilisteFor("skadetKroppsdel", "tiltaksdeltaker", 40)
        hentKodeverdilisteFor("skadetKroppsdel", "vernepliktigIFoerstegangstjenesten", 40)
        hentKodeverdilisteFor("skadetKroppsdel", "innsatt", 40)
        hentKodeverdilisteFor("skadetKroppsdel", "personSomUtfoererSamfunnsstraff", 40)
        hentKodeverdilisteFor("skadetKroppsdel", "personIVaretekt", 40)
    }

    @Test
    fun `hent liste med kodeverkverdier for Hva slags skade er det`() {
        hentKodeverdilisteFor("skadetype", "arbeidstaker", 23)
        hentKodeverdilisteFor("skadetype", "laerling", 23)
        hentKodeverdilisteFor("skadetype", "elevEllerStudent", 23)
        hentKodeverdilisteFor("skadetype", "tiltaksdeltaker", 23)
        hentKodeverdilisteFor("skadetype", "vernepliktigIFoerstegangstjenesten", 23)
        hentKodeverdilisteFor("skadetype", "innsatt", 23)
        hentKodeverdilisteFor("skadetype", "personSomUtfoererSamfunnsstraff", 23)
        hentKodeverdilisteFor("skadetype", "personIVaretekt", 23)
    }

    @Test
    fun `hent liste med kodeverkverdier for Har skadelidt hatt fravær`() {
        hentKodeverdilisteFor("harSkadelidtHattFravaer", "arbeidstaker", 4)
        hentKodeverdilisteFor("harSkadelidtHattFravaer", "laerling", 4)
        hentKodeverdilisteFor("harSkadelidtHattFravaer", "elevEllerStudent", 0)
        hentKodeverdilisteFor("harSkadelidtHattFravaer", "tiltaksdeltaker", 4)
        hentKodeverdilisteFor("harSkadelidtHattFravaer", "innsatt", 0)
        hentKodeverdilisteFor("harSkadelidtHattFravaer", "personSomUtfoererSamfunnsstraff", 0)
        hentKodeverdilisteFor("harSkadelidtHattFravaer", "personIVaretekt", 0)
    }

    @Test
    fun `hent liste med kodeverkverdier for Type arbeidsplass`() {
        hentKodeverdilisteFor("typeArbeidsplass", "arbeidstaker", 21)
        hentKodeverdilisteFor("typeArbeidsplass", "laerling", 21)
        hentKodeverdilisteFor("typeArbeidsplass", "elevEllerStudent", 0)
        hentKodeverdilisteFor("typeArbeidsplass", "tiltaksdeltaker", 21)
        hentKodeverdilisteFor("typeArbeidsplass", "innsatt", 0)
        hentKodeverdilisteFor("typeArbeidsplass", "personSomUtfoererSamfunnsstraff", 0)
        hentKodeverdilisteFor("typeArbeidsplass", "personIVaretekt", 0)
    }

    @Test
    fun `hent liste med kodeverkverdier for Bakgrunnen for hendelsen`() {
        hentKodeverdilisteFor("bakgrunnForHendelsen", "arbeidstaker", 33)
        hentKodeverdilisteFor("bakgrunnForHendelsen", "laerling", 33)
        hentKodeverdilisteFor("bakgrunnForHendelsen", "elevEllerStudent", 0)
        hentKodeverdilisteFor("bakgrunnForHendelsen", "tiltaksdeltaker", 33)
        hentKodeverdilisteFor("bakgrunnForHendelsen", "innsatt", 33)
        hentKodeverdilisteFor("bakgrunnForHendelsen", "personSomUtfoererSamfunnsstraff", 33)
        hentKodeverdilisteFor("bakgrunnForHendelsen", "personIVaretekt", 33)
    }

    @Test
    fun `hent liste med kodeverkverdier for Førte din skade eller sykdom til fravær`() {
        hentKodeverdilisteFor("foerteDinSkadeEllerSykdomTilFravaer", 5)
    }

    @Test
    fun `hent liste med kodeverkverdier for rolletype`() {
        hentKodeverdilisteFor("rolletype", 5)
    }

    @Test
    fun `hent liste med kodeverkverdier for Innmelderroller`() {
        hentKodeverdilisteFor("innmelderrolle", 2)
    }

    @Test
    fun `hent liste med kodeverkverdier for Hva slags sykdom er det`() {
        hentKodeverdilisteFor("sykdomstype", 21)
    }

    @Test
    fun `hent liste med kodeverkverdier for Hvilken skadelig påvirking har personen vært utsatt for`() {
        hentKodeverdilisteFor("paavirkningsform", 15)
    }

    @Test
    fun `hent liste med kodeverkverdier for dokumenttyper`() {
        hentKodeverdilisteFor("dokumenttype", 1, true)
    }

    @Test
    fun `hent liste med kodeverkverdier for framdriftsstatus`() {
        hentKodeverdilisteFor("framdriftsstatus", 4, true)
    }

    @Test
    fun `hent liste med kodeverkverdier for behandlingsresultat`() {
        hentKodeverdilisteFor("behandlingsresultat", 4, true)
    }

    @Test
    fun `hent liste med kodeverkverdier for behandlingsstatus`() {
        hentKodeverdilisteFor("behandlingsstatus", 3, true)
    }

    @Test
    fun `hent liste med kodeverkverdier for saksstatus`() {
        hentKodeverdilisteFor("saksstatus", 2, true)
    }

    @Test
    fun `hent liste med kodeverkverdier for saksstype`() {
        hentKodeverdilisteFor("sakstype", 4, true)
    }

    @Test
    fun `hent liste med kodeverkverdier for aarsakAvvik`() {
        hentKodeverdilisteFor("aarsakAvvik", 5, true)
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
        forventetAntall: Int,
        medToken: Boolean = false
    ) {

        var results: ResultActions
        if (!medToken) {
            results = mvc.perform(
                get("$KODEVERK_V1/typer/$typenavn/kodeverdierliste")
            )
        } else {
            val jwt = token("azuread", "test@nav.test.no", "aad-client-id")
            results = mvc.perform(
                get("$KODEVERK_V1/typer/$typenavn/kodeverdierliste").header("Authorization", "Bearer $jwt")
            )
        }

        results.andDo(MockMvcResultHandlers.print()).andExpect(status().isOk)
            .andExpect(jsonPath("$.kodeverdierListe").isArray)
            .andExpect(jsonPath("$.kodeverdierListe.length()").value(forventetAntall.toString()))
    }


    companion object {
        private const val KODEVERK_V1 = "/api/v1/kodeverk"
    }

    private fun token(issuerId: String, subject: String, audience: String, clientId: String = "theclientid"): String {
        return server.issueToken(
            issuerId = issuerId,
            clientId = clientId,
            tokenCallback = DefaultOAuth2TokenCallback(
                issuerId = issuerId,
                subject = subject,
                audience = listOf(audience),
                claims = emptyMap(),
                expiry = 3600L
            )
        ).serialize()
    }
}