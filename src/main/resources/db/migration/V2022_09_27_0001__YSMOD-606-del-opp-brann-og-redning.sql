-- Endringer på rolletype navn YSMOD-606 ver.2 --

-- Rolletyper --
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('branntjenesteUtenforArbeidsforhold', '2022-09-28', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('redningspersonellIOrganisasjonerOgForeninger', '2022-09-28', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', '2022-09-28', null);

INSERT INTO type_kode (type_navn, kode) VALUES ('rolletype','branntjenesteUtenforArbeidsforhold');
INSERT INTO type_kode (type_navn, kode) VALUES ('rolletype','redningspersonellIOrganisasjonerOgForeninger');
INSERT INTO type_kode (type_navn, kode) VALUES ('rolletype','privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap');

INSERT INTO verdi (kode, spraak, verdi) VALUES ('branntjenesteUtenforArbeidsforhold', 'nb', 'Branntjeneste utenfor arbeidsforhold');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('redningspersonellIOrganisasjonerOgForeninger', 'nb', 'Redningspersonell i organisasjoner og foreninger');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', 'nb', 'Privatperson som søker å redde andres liv eller avverge materielle tap');

-- Kategorier --
INSERT INTO kategori (navn, beskrivelse) VALUES ('branntjenesteUtenforArbeidsforhold','Branntjeneste utenfor arbeidsforhold');
INSERT INTO kategori (navn, beskrivelse) VALUES ('redningspersonellIOrganisasjonerOgForeninger', 'Redningspersonell i organisasjoner og foreninger');
INSERT INTO kategori (navn, beskrivelse) VALUES ('privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', 'Privatperson som søker å redde andres liv eller avverge materielle tap');

-- Tidsrom --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('branntjenesteUtenforArbeidsforhold', 'tidsrom');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('redningspersonellIOrganisasjonerOgForeninger', 'tidsrom');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', 'tidsrom');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('branntjenesteUtenforArbeidsforhold', 'tidsrom', 'fritidEllerPrivatAktivitet', 1000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('branntjenesteUtenforArbeidsforhold', 'tidsrom', 'hvilendeVakt', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('branntjenesteUtenforArbeidsforhold', 'tidsrom', 'underFrivilligArbeid', 3000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('branntjenesteUtenforArbeidsforhold', 'tidsrom', 'underRedningsarbeidEllerVaktholdEllerRedningsoevelse', 4000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('branntjenesteUtenforArbeidsforhold', 'tidsrom', 'alternativenePasserIkke', 9000);

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'redningspersonellIOrganisasjonerOgForeninger', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'branntjenesteUtenforArbeidsforhold' and type_navn = 'tidsrom';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'branntjenesteUtenforArbeidsforhold' and type_navn = 'tidsrom';


-- Alvorlighetsgrad --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('branntjenesteUtenforArbeidsforhold', 'alvorlighetsgrad');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('redningspersonellIOrganisasjonerOgForeninger', 'alvorlighetsgrad');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', 'alvorlighetsgrad');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'branntjenesteUtenforArbeidsforhold', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'alvorlighetsgrad';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'redningspersonellIOrganisasjonerOgForeninger', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'alvorlighetsgrad';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'alvorlighetsgrad';


-- Årsak og bakgrunn --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('branntjenesteUtenforArbeidsforhold', 'aarsakOgBakgrunn');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('redningspersonellIOrganisasjonerOgForeninger', 'aarsakOgBakgrunn');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', 'aarsakOgBakgrunn');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'branntjenesteUtenforArbeidsforhold', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'aarsakOgBakgrunn';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'redningspersonellIOrganisasjonerOgForeninger', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'aarsakOgBakgrunn';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'aarsakOgBakgrunn';

-- Bakgrunn for hendelsen --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('branntjenesteUtenforArbeidsforhold', 'bakgrunnForHendelsen');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('redningspersonellIOrganisasjonerOgForeninger', 'bakgrunnForHendelsen');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', 'bakgrunnForHendelsen');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'branntjenesteUtenforArbeidsforhold', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'bakgrunnForHendelsen';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'redningspersonellIOrganisasjonerOgForeninger', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'bakgrunnForHendelsen';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'bakgrunnForHendelsen';

-- Skadet kroppsdel --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('branntjenesteUtenforArbeidsforhold', 'skadetKroppsdel');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('redningspersonellIOrganisasjonerOgForeninger', 'skadetKroppsdel');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', 'skadetKroppsdel');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'branntjenesteUtenforArbeidsforhold', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetKroppsdel';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'redningspersonellIOrganisasjonerOgForeninger', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetKroppsdel';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetKroppsdel';

-- Skadetype --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('branntjenesteUtenforArbeidsforhold', 'skadetype');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('redningspersonellIOrganisasjonerOgForeninger', 'skadetype');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', 'skadetype');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'branntjenesteUtenforArbeidsforhold', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetype';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'redningspersonellIOrganisasjonerOgForeninger', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetype';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'privatpersonSomUtfoererLivredningEllerAvvergerMaterielleTap', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetype';

-- endre på navn --
DELETE FROM kategori_type_kode where kode in ('tjenestepliktigOgfrivilligTjenestegjoerende', 'redningsEllerBranntjenesteUtenforArbeidsforhold');
DELETE FROM kategori_type_kode where kategori_navn in ('tjenestepliktigOgfrivilligTjenestegjoerende', 'redningsEllerBranntjenesteUtenforArbeidsforhold');
DELETE FROM type_kode where kode in ('tjenestepliktigOgfrivilligTjenestegjoerende', 'redningsEllerBranntjenesteUtenforArbeidsforhold');
DELETE FROM verdi where kode in ('tjenestepliktigOgfrivilligTjenestegjoerende', 'redningsEllerBranntjenesteUtenforArbeidsforhold');
DELETE FROM kode where kode in ('tjenestepliktigOgfrivilligTjenestegjoerende', 'redningsEllerBranntjenesteUtenforArbeidsforhold');
DELETE FROM kategori where navn in ('tjenestepliktigOgfrivilligTjenestegjoerende', 'redningsEllerBranntjenesteUtenforArbeidsforhold');