package no.nav.yrkesskade.kodeverk.config

import org.springframework.boot.context.properties.ConfigurationProperties
import org.springframework.boot.context.properties.EnableConfigurationProperties
import org.springframework.context.annotation.Configuration

@Configuration
@EnableConfigurationProperties
@ConfigurationProperties("api.whitelist")
data class ApiWhitelistAccessProperties(val clients: List<String>)