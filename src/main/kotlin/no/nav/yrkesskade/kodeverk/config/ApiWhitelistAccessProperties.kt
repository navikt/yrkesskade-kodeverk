package no.nav.yrkesskade.kodeverk.config

import org.springframework.boot.context.properties.ConfigurationProperties

@ConfigurationProperties("api.whitelist")
data class ApiWhitelistAccessProperties(val clients: List<String>)