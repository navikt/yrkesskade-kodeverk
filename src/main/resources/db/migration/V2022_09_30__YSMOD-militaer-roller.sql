-- Legg til manglende koder for generelle kodelister
INSERT INTO type_kode (type_navn, kode)
SELECT DISTINCT type_navn, kode FROM kategori_type_kode WHERE type_navn = 'aarsakOgBakgrunn' AND kode NOT IN (
    SELECT kode FROM type_kode WHERE type_navn = 'aarsakOgBakgrunn');

INSERT INTO type_kode (type_navn, kode)
SELECT DISTINCT type_navn, kode FROM kategori_type_kode WHERE type_navn = 'skadetype' AND kode NOT IN (
    SELECT kode FROM type_kode WHERE type_navn = 'skadetype');

-- Fjern relasjon mellom type og kategori for generelle kodelister --

DELETE FROM kategori_type_kode WHERE type_navn IN ('alvorlighetsgrad', 'aarsakOgBakgrunn', 'skadetKroppsdel', 'skadetype');
DELETE FROM kategori_type WHERE type_navn IN ('alvorlighetsgrad', 'aarsakOgBakgrunn', 'skadetKroppsdel', 'skadetype');

--  Militær lærling --
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('militaerLaerling', '2022-09-29', null);
INSERT INTO kategori (navn, beskrivelse) VALUES ('militaerLaerling', 'Militær lærling');

INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('militaerLaerling', 'tidsrom');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'militaerLaerling', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'militaerTilsatt' AND type_navn = 'tidsrom';

INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('militaerLaerling', 'tidsrom');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'militaerLaerling', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'militaerTilsatt' AND type_navn = 'hvorSkjeddeUlykken';

-- Militær elev --
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('militaerElev', '2022-09-29', null);
INSERT INTO kategori (navn, beskrivelse) VALUES ('militaerElev', 'Militær elev');

INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('militaerElev', 'tidsrom');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerElev', 'tidsrom', 'iUndervisningstid', 100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerElev', 'tidsrom', 'utenforUndervisningstid', 200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerElev', 'tidsrom', 'fritidEllerPrivatAktivitet', 300);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerElev', 'tidsrom', 'underPaalagtTjeneste', 400);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerElev', 'tidsrom', 'underPermisjon', 500);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerElev', 'tidsrom', 'alternativenePasserIkke', 1000);

-- Frivillig tjenestegjørende --
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('frivilligTjenestegjoerendeIForsvaret', '2022-09-29', null);
INSERT INTO type_kode (type_navn, kode) VALUES ('rolletype','frivilligTjenestegjoerendeIForsvaret');
INSERT INTO kategori (navn, beskrivelse) VALUES ('frivilligTjenestegjoerendeIForsvaret', 'Frivillig tjenestegjørende i Forsvaret');
INSERT INTO verdi(kode, verdi, spraak) VALUES ('frivillingTjenestegjoerendeIForsvaret', 'Frivillig tjenestegjørende i Forsvaret', 'nb');

INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('frivilligTjenestegjoerendeIForsvaret', 'tidsrom');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'frivilligTjenestegjoerendeIForsvaret', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'vernepliktigIFoerstegangstjenesten' AND type_navn = 'tidsrom';

