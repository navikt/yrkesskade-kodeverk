package no.nav.yrkesskade.kodeverk.config

import no.nav.yrkesskade.kodeverk.error.Feil
import no.nav.yrkesskade.kodeverk.error.ManglendeDataException
import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.exception.ClientException
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.ControllerAdvice
import org.springframework.web.bind.annotation.ExceptionHandler
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler

@ControllerAdvice
class ExceptionHandler : ResponseEntityExceptionHandler() {

    @ExceptionHandler(value = [ClientException::class])
    fun handleClientException(ex: ClientException): ResponseEntity<Feil> {
        logger.error("ClientException: ${ex.message} \n${ex.stackTraceToString()}")
        return ResponseEntity<Feil>(
            Feil(HttpStatus.NOT_FOUND.value(), "En feil har oppstått. ${ex.melding}"),
            HttpStatus.NOT_FOUND
        )
    }

    @ExceptionHandler(value = [ManglendeDataException::class])
    fun handleManglendeDataException(ex: ManglendeDataException): ResponseEntity<Feil> {
        logger.error("ManglendeDataException: ${ex.message} \n${ex.stackTraceToString()}")
        return ResponseEntity<Feil>(
            Feil(HttpStatus.NOT_FOUND.value(), "En feil har oppstått. ${ex.message}"),
            HttpStatus.NOT_FOUND
        )
    }

    @ExceptionHandler(value = [Exception::class])
    fun handleAllUncaughtException(ex: Exception): ResponseEntity<Feil> {
        logger.error("En uventet feil oppstod! ${ex.message} \n${ex.stackTraceToString()}")
        return ResponseEntity<Feil>(
            Feil(HttpStatus.INTERNAL_SERVER_ERROR.value(), "En feil har oppstått."),
            HttpStatus.INTERNAL_SERVER_ERROR
        )
    }

}



