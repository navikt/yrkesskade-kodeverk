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

-- Opprett rolletype for Militær repetisjonsøvelse --
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('vernepliktigIRepetisjonstjeneste', '2022-09-29', null);
INSERT INTO type_kode (type_navn, kode) VALUES ('rolletype','vernepliktigIRepetisjonstjeneste');
INSERT INTO kategori (navn, beskrivelse) VALUES ('vernepliktigIRepetisjonstjeneste', 'Vernepliktig i repetisjonstjeneste');

-- Tidsrom --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('vernepliktigIRepetisjonstjeneste', 'tidsrom');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'vernepliktigIRepetisjonstjeneste', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'vernepliktigIFoerstegangstjenesten' AND type_navn = 'tidsrom';