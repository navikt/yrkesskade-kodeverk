package no.nav.yrkesskade.kodeverk

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class KodeverkApplication

fun main(args: Array<String>) {
    runApplication<KodeverkApplication>(*args)
}