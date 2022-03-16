package no.nav.yrkesskade.kodeverk.config

import no.nav.yrkesskade.kodeverk.exception.ManglendeDataException
import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.exception.ClientException
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.ControllerAdvice
import org.springframework.web.bind.annotation.ExceptionHandler
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler

@ControllerAdvice
class ExceptionHandler : ResponseEntityExceptionHandler() {

    @ExceptionHandler(value = [ClientException::class])
    fun handleClientException(ex: ClientException): ResponseEntity<Exception> {
        logger.error("ClientException: ${ex.message} \n${ex.stackTraceToString()}")
        return ResponseEntity<Exception>(
            Exception(ex.javaClass.name, ex),
            HttpStatus.NOT_FOUND
        )
    }

    @ExceptionHandler(value = [ManglendeDataException::class])
    fun handleManglendeDataException(ex: ManglendeDataException): ResponseEntity<Exception> {
        logger.error("ManglendeDataException: ${ex.message} \n${ex.stackTraceToString()}")
        return ResponseEntity<Exception>(
            Exception(ex.javaClass.name, ex),
            HttpStatus.NOT_FOUND
        )
    }

    @ExceptionHandler(value = [Exception::class])
    fun handleAllUncaughtException(ex: Exception): ResponseEntity<Exception> {
        logger.error("En uventet feil oppstod! ${ex.message} \n${ex.stackTraceToString()}")
        return ResponseEntity<Exception>(
            Exception(ex.javaClass.name, ex),
            HttpStatus.INTERNAL_SERVER_ERROR
        )
    }

}



