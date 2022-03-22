package no.nav.yrkesskade.kodeverk.oppslag.kodeverk

import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule
import com.fasterxml.jackson.module.kotlin.jacksonObjectMapper
import no.nav.security.token.support.client.core.oauth2.OAuth2AccessTokenService
import no.nav.security.token.support.client.spring.ClientConfigurationProperties
import no.nav.yrkesskade.kodeverk.CONSUMER_ID
import no.nav.yrkesskade.kodeverk.HEADER_AUTHORIZATION
import no.nav.yrkesskade.kodeverk.HEADER_NAV_CALL_ID
import no.nav.yrkesskade.kodeverk.HEADER_NAV_CONSUMER_ID
import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodeStreng
import no.nav.yrkesskade.kodeverk.controller.v1.dto.KodeverdiDto
import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.api.GetKodeverkKoderBetydningerResponse
import no.nav.yrkesskade.kodeverk.oppslag.kodeverk.exception.ClientException
import org.springframework.beans.factory.annotation.Value
import org.springframework.cache.annotation.Cacheable
import org.springframework.stereotype.Component
import java.util.*
import javax.ws.rs.client.Client
import javax.ws.rs.client.ClientBuilder
import javax.ws.rs.client.Invocation
import javax.ws.rs.core.Response.Status.Family.SUCCESSFUL


@Component
class KodeverkClient(
    @Value("\${api.client.kodeverk.url}") private val kodeServiceUri: String,
    private val clientConfigurationProperties: ClientConfigurationProperties,
    private val oAuth2AccessTokenService: OAuth2AccessTokenService
) {

    private val client: Client = ClientBuilder.newClient()
    private val objectMapper = jacksonObjectMapper().registerModule(JavaTimeModule())

    @Cacheable
    fun hentKodeverkVerdier(eksternNavn: String?): Map<KodeStreng, KodeverdiDto> {
        return hentKodeverkBetydning(eksternNavn!!, ekskluderUgyldige = true)
    }

    private fun buildRequest(path: String, eksluderUgyldige: Boolean): Invocation.Builder {
        val accessToken = getAppAccessToken()
        return client.target(kodeServiceUri)
            .path(path)
            .queryParam("spraak", "nb")
            .queryParam("ekskluderUgyldige", eksluderUgyldige)
            .request()
            .header(HEADER_NAV_CALL_ID, UUID.randomUUID().toString())
            .header(HEADER_NAV_CONSUMER_ID, CONSUMER_ID)
            .header(HEADER_AUTHORIZATION, accessToken)
    }

    @Suppress("SameParameterValue")
    private fun hentKodeverkBetydning(navn: String, ekskluderUgyldige: Boolean): Map<KodeStreng, KodeverdiDto> {
        buildRequest("api/v1/kodeverk/$navn/koder/betydninger", ekskluderUgyldige).get().use { response ->
            val responseBody = response.readEntity(String::class.java)
            if (SUCCESSFUL != response.statusInfo.family) {
                throw ClientException("Kunne ikke hente kodeverk $navn", response.location.toString(), response.status, responseBody)
            }
            return objectMapper.readValue(responseBody, GetKodeverkKoderBetydningerResponse::class.java)
                .let { KodeverdiDto.fromKoderBetydningerResponse(navn, it) }
        }
    }

    private fun getAppAccessToken(): String {
        val clientProperties = clientConfigurationProperties.registration["yrkesskade-proxy"]
        val response = oAuth2AccessTokenService.getAccessToken(clientProperties)
        return response.accessToken
    }

}