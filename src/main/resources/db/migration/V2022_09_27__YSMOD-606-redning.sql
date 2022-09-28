-- DDL for kategori navn --
ALTER TABLE kategori ALTER COLUMN navn TYPE varchar(100);
ALTER TABLE kategori_type ALTER COLUMN kategori_navn TYPE varchar(100);
ALTER TABLE kategori_type_kode ALTER COLUMN kategori_navn TYPE varchar(100);

-- Redning eller branntjeneste utenfor arbeidsforhold--

-- Rolletyper --
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('tjenestepliktigOgfrivilligTjenestegjoerende', '2022-09-28', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('redningsEllerBranntjenesteUtenforArbeidsforhold', '2022-09-28', null);

INSERT INTO type_kode (type_navn, kode) VALUES ('rolletype','tjenestepliktigOgfrivilligTjenestegjoerende');
INSERT INTO type_kode (type_navn, kode) VALUES ('rolletype','redningsEllerBranntjenesteUtenforArbeidsforhold');

INSERT INTO verdi (kode, spraak, verdi) VALUES ('tjenestepliktigOgfrivilligTjenestegjoerende', 'nb', 'Tjenestepliktig og frivillig tjenestegjørende');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('redningsEllerBranntjenesteUtenforArbeidsforhold', 'nb', 'Rednings eller branntjeneste utenfor arbeidsforhold');

-- Kategorier --
INSERT INTO kategori (navn, beskrivelse) VALUES ('tjenestepliktigOgfrivilligTjenestegjoerende','Tjenestepliktig og frivillig tjenestegjørende');
INSERT INTO kategori (navn, beskrivelse) VALUES ('redningsEllerBranntjenesteUtenforArbeidsforhold', 'Rednings eller branntjeneste utenfor arbeidsforhold');

-- Tidsrom --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('tjenestepliktigOgfrivilligTjenestegjoerende', 'tidsrom');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('redningsEllerBranntjenesteUtenforArbeidsforhold', 'tidsrom');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('tjenestepliktigOgfrivilligTjenestegjoerende', 'tidsrom', 'fritidEllerPrivatAktivitet', 1000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('tjenestepliktigOgfrivilligTjenestegjoerende', 'tidsrom', 'hvilendeVakt', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('tjenestepliktigOgfrivilligTjenestegjoerende', 'tidsrom', 'underFrivilligArbeid', 3000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('tjenestepliktigOgfrivilligTjenestegjoerende', 'tidsrom', 'underRedningsarbeidEllerVaktholdEllerRedningsoevelse', 4000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('tjenestepliktigOgfrivilligTjenestegjoerende', 'tidsrom', 'alternativenePasserIkke', 9000);

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('redningsEllerBranntjenesteUtenforArbeidsforhold', 'tidsrom', 'fritidEllerPrivatAktivitet', 1000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('redningsEllerBranntjenesteUtenforArbeidsforhold', 'tidsrom', 'hvilendeVakt', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('redningsEllerBranntjenesteUtenforArbeidsforhold', 'tidsrom', 'underFrivilligArbeid', 3000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('redningsEllerBranntjenesteUtenforArbeidsforhold', 'tidsrom', 'underRedningsarbeidEllerVaktholdEllerRedningsoevelse', 4000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('redningsEllerBranntjenesteUtenforArbeidsforhold', 'tidsrom', 'alternativenePasserIkke', 9000);

-- Alvorlighetsgrad --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('tjenestepliktigOgfrivilligTjenestegjoerende', 'alvorlighetsgrad');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('redningsEllerBranntjenesteUtenforArbeidsforhold', 'alvorlighetsgrad');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'tjenestepliktigOgfrivilligTjenestegjoerende', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'alvorlighetsgrad';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'redningsEllerBranntjenesteUtenforArbeidsforhold', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'alvorlighetsgrad';

-- Årsak og bakgrunn --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('tjenestepliktigOgfrivilligTjenestegjoerende', 'aarsakOgBakgrunn');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('redningsEllerBranntjenesteUtenforArbeidsforhold', 'aarsakOgBakgrunn');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'tjenestepliktigOgfrivilligTjenestegjoerende', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'aarsakOgBakgrunn';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'redningsEllerBranntjenesteUtenforArbeidsforhold', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'aarsakOgBakgrunn';

-- Bakgrunn for hendelsen --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('tjenestepliktigOgfrivilligTjenestegjoerende', 'bakgrunnForHendelsen');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('redningsEllerBranntjenesteUtenforArbeidsforhold', 'bakgrunnForHendelsen');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'tjenestepliktigOgfrivilligTjenestegjoerende', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'bakgrunnForHendelsen';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'redningsEllerBranntjenesteUtenforArbeidsforhold', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'bakgrunnForHendelsen';

-- Skadet kroppsdel --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('tjenestepliktigOgfrivilligTjenestegjoerende', 'skadetKroppsdel');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('redningsEllerBranntjenesteUtenforArbeidsforhold', 'skadetKroppsdel');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'tjenestepliktigOgfrivilligTjenestegjoerende', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetKroppsdel';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'redningsEllerBranntjenesteUtenforArbeidsforhold', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetKroppsdel';

-- Skadetype --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('tjenestepliktigOgfrivilligTjenestegjoerende', 'skadetype');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('redningsEllerBranntjenesteUtenforArbeidsforhold', 'skadetype');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'tjenestepliktigOgfrivilligTjenestegjoerende', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetype';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'redningsEllerBranntjenesteUtenforArbeidsforhold', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetype';