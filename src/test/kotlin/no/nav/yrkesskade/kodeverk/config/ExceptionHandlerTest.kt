package no.nav.yrkesskade.kodeverk.config

import no.nav.yrkesskade.kodeverk.error.Feil
import no.nav.yrkesskade.kodeverk.error.ManglendeDataException
import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.exception.ClientException
import org.assertj.core.api.Assertions.assertThat
import org.junit.jupiter.api.Test
import org.springframework.http.HttpStatus

@Suppress("NonAsciiCharacters")
internal class ExceptionHandlerTest {

    private val exceptionHandler: ExceptionHandler = ExceptionHandler()


    @Test
    fun `skal håndtere feil fra felles kodeverk-klient`() {
        val clientException = ClientException("Dette er en feilmeldingstekst", "http://huttiheita", HttpStatus.I_AM_A_TEAPOT.value(), "Dette er response body")

        val responseEntity = exceptionHandler.handleClientException(clientException)

        val feil = responseEntity.body!!
        assertThat(feil::class).isEqualTo(Feil::class)
        assertThat(feil.statuskode).isEqualTo(HttpStatus.NOT_FOUND.value())
        assertThat(feil.melding).contains(clientException.melding)
        assertThat(feil.tidspunkt).isNotEmpty
        assertThat(responseEntity.statusCode).isEqualTo(HttpStatus.NOT_FOUND)
    }

    @Test
    fun `skal håndtere manglende data`() {
        val manglendeDataException = ManglendeDataException("dette er feilmeldingen")

        val responseEntity = exceptionHandler.handleManglendeDataException(manglendeDataException)

        val feil = responseEntity.body!!
        assertThat(feil::class).isEqualTo(Feil::class)
        assertThat(feil.statuskode).isEqualTo(HttpStatus.NOT_FOUND.value())
        assertThat(feil.melding).contains(manglendeDataException.message)
        assertThat(feil.tidspunkt).isNotEmpty
        assertThat(responseEntity.statusCode).isEqualTo(HttpStatus.NOT_FOUND)
    }

    @Test
    fun `skal håndtere alle andre feil`() {
        val annenException = RuntimeException("dette er en annen type feil")

        val responseEntity = exceptionHandler.handleAllUncaughtException(annenException)

        val feil = responseEntity.body!!
        assertThat(feil::class).isEqualTo(Feil::class)
        assertThat(feil.statuskode).isEqualTo(HttpStatus.INTERNAL_SERVER_ERROR.value())
        assertThat(feil.melding).isEqualTo("En feil har oppstått.")
        assertThat(feil.tidspunkt).isNotEmpty
        assertThat(responseEntity.statusCode).isEqualTo(HttpStatus.INTERNAL_SERVER_ERROR)
    }

}