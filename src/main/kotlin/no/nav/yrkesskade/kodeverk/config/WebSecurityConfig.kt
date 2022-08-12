package no.nav.yrkesskade.kodeverk.config

import no.nav.security.token.support.core.configuration.MultiIssuerConfiguration
import no.nav.security.token.support.core.context.TokenValidationContextHolder
import no.nav.security.token.support.core.validation.JwtTokenValidationHandler
import no.nav.security.token.support.filter.JwtTokenValidationFilter
import org.springframework.boot.web.servlet.FilterRegistrationBean
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.core.Ordered
import org.springframework.core.env.Environment

@Configuration
class WebSecurityConfig {

    /**
     * Filter som fyller en [TokenValidationContextHolder] med en kontekst som gir info om hvilke gyldige tokens
     * som ligger i requestet.
     */
    @Bean
    fun graphqlOidcTokenValidationContextFilter(
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

    /**
     * Filter som tar en ferdigutfylt [TokenValidationContextHolder] (fra [graphqlOidcTokenValidationContextFilter])
     * og returnerer 401 unauthorized dersom det ikke foreligger gyldig token.
     * Filteret har lavest presedens og vil dermed alltid kjøre etter [graphqlOidcTokenValidationContextFilter].
     */
    @Bean
    fun graphqlOidcTokenValidationFilter(
        multiIssuerConfiguration: MultiIssuerConfiguration,
        oidcRequestContextHolder: TokenValidationContextHolder
    ): FilterRegistrationBean<JwtTokenValidationFilter>? {
        val jwtTokenValidationHandler = JwtTokenValidationHandler(multiIssuerConfiguration)
        return FilterRegistrationBean(JwtTokenValidationFilter(jwtTokenValidationHandler, oidcRequestContextHolder)).apply {
            addUrlPatterns("/*")
            order = Ordered.LOWEST_PRECEDENCE
        }
    }
}