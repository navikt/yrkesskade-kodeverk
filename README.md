Dette repoet er flyttet til https://github.com/navikt/yrkesskade

Kodeverk Yrkesskade
================

Kodeverk tjenesten til yrkesskade tilgjengeliggjør koder, betydninger og termer som brukes for yrkesskade og 
yrkessykdom.

Tjenesten tilbyr også tilgang til diverse kodeverk fra NAVs felles kodeverk.

# Terminologi

- Kategori: Tilsvarer de forskjellige typer yrkesskademeldingsskjema (arbeidstaker, elev, lærling, etc.)
- Type: Kan sees på som et felt/spørsmål som gjelder for en kategori
- Kodeverdi: En gyldig verdi for en type

# Dokumentasjon
Dokumentasjon for en kjørende instans av dette kodeverket er tilgjengelig i form av en Swaggerdoc på url `<url>/v3/api-docs`, f.eks. `https://yrkesskade-kodeverk.dev.intern.nav.no/v3/api-docs`.
Dersom man ikke har tilgang til kodeverket i noen av NAVs miljøer, er det ingenting i veien for å klone dette prosjektet, kjøre det lokalt og hente Swaggerdocen på [localhost](http://localhost:8080/swagger-ui/index.html).

# Komme i gang

For å starte applikasjonen må det kjøre en lokal postgres database.
1. Opprett database `yrkesskade_kodeverk`

2. Sett JVM variablene `YRKESSKADE_KODEVERK_DB_USERNAME` og `YRKESSKADE_KODEVERK_DB_PASSWORD` 

3. Kjør KodeverkApplication.kt

---

# Henvendelser

Enten:
Spørsmål knyttet til koden eller prosjektet kan stilles som issues her på GitHub

Eller:
Spørsmål knyttet til koden eller prosjektet kan stilles til yrkesskade@nav.no

## For NAV-ansatte

Interne henvendelser kan sendes via Slack i kanalen #team-yrkesskade.
