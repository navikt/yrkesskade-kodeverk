package no.nav.yrkesskade.kodeverk.config

import no.nav.security.token.support.core.configuration.MultiIssuerConfiguration
import no.nav.security.token.support.core.context.TokenValidationContextHolder
import no.nav.security.token.support.core.validation.JwtTokenValidationHandler
import no.nav.security.token.support.filter.JwtTokenValidationFilter
import org.springframework.boot.web.servlet.FilterRegistrationBean
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration

@Configuration
class WebSecurityConfig {

    /**
     * Filter som fyller en [TokenValidationContextHolder] med en kontekst som gir info om hvilke gyldige tokens
     * som ligger i requestet.
     */
    @Bean
    fun oidcTokenValidationContextFilter(
        multiIssuerConfiguration: MultiIssuerConfiguration,
        oidcRequestContextHolder: TokenValidationContextHolder,
        oidcTokenValidationFilterRegistrationBean: FilterRegistrationBean<JwtTokenValidationFilter>
    ): FilterRegistrationBean<JwtTokenValidationFilter>? {
        val jwtTokenValidationHandler = JwtTokenValidationHandler(multiIssuerConfiguration)
        return oidcTokenValidationFilterRegistrationBean.apply {
            filter = JwtTokenValidationFilter(jwtTokenValidationHandler, oidcRequestContextHolder)
            addUrlPatterns("/*")
        }
    }

}