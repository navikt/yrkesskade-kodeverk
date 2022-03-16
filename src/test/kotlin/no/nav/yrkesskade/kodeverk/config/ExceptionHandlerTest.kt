package no.nav.yrkesskade.kodeverk.config

import no.nav.yrkesskade.kodeverk.exception.ManglendeDataException
import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.exception.ClientException
import org.assertj.core.api.Assertions.assertThat
import org.junit.jupiter.api.Test
import org.springframework.http.HttpStatus
import java.lang.Exception

@Suppress("NonAsciiCharacters")
internal class ExceptionHandlerTest {

    private val exceptionHandler: ExceptionHandler = ExceptionHandler()


    @Test
    fun `skal håndtere feil fra felles kodeverk-klient`() {
        val clientException = ClientException("http://huttiheita", HttpStatus.I_AM_A_TEAPOT.value(), "Dette er response body")

        val responseEntity = exceptionHandler.handleClientException(clientException)

        val newException = responseEntity.body!!
        assertThat(newException.javaClass).isEqualTo(Exception().javaClass)
        assertThat(newException.cause).isEqualTo(clientException)
        assertThat(responseEntity.statusCode).isEqualTo(HttpStatus.NOT_FOUND)
    }

    @Test
    fun `skal håndtere manglende data`() {
        val manglendeDataException = ManglendeDataException("dette er feilmeldingen")

        val responseEntity = exceptionHandler.handleManglendeDataException(manglendeDataException)

        val newException = responseEntity.body!!
        assertThat(newException.javaClass).isEqualTo(Exception().javaClass)
        assertThat(newException.cause).isEqualTo(manglendeDataException)
        assertThat(responseEntity.statusCode).isEqualTo(HttpStatus.NOT_FOUND)
    }

    @Test
    fun `skal håndtere alle andre feil`() {
        val annenException = RuntimeException("dette er en annen type feil")

        val responseEntity = exceptionHandler.handleAllUncaughtException(annenException)

        val newException = responseEntity.body!!
        assertThat(newException.javaClass).isEqualTo(Exception().javaClass)
        assertThat(newException.cause).isEqualTo(annenException)
        assertThat(responseEntity.statusCode).isEqualTo(HttpStatus.INTERNAL_SERVER_ERROR)
    }

}