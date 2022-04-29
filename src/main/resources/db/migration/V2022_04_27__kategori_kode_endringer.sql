-- Fjern eksisterende PK
ALTER TABLE kategori DROP CONSTRAINT kategori_pkey CASCADE;
ALTER TABLE type DROP CONSTRAINT type_pkey CASCADE;

-- Legg til nye FK kolonner
ALTER TABLE kategori_type ADD COLUMN kategori_navn VARCHAR(40) NOT NULL DEFAULT 'changeme';
ALTER TABLE kategori_type ADD COLUMN type_navn VARCHAR(40) NOT NULL DEFAULT 'changeme';

-- Opprett temp tabell kopi av KODE
CREATE TABLE kode_temp (LIKE kode);
ALTER TABLE kode_temp ALTER column kategori_id DROP NOT NULL;
ALTER TABLE kode_temp ALTER column type_id DROP NOT NULL;

-- Sett nye PK
ALTER TABLE kategori ADD PRIMARY KEY (navn);
ALTER TABLE type ADD PRIMARY KEY (navn);

-- FIKS kategori_type koblingstabell med nye nøkler
UPDATE kategori_type kt SET kategori_navn = k.navn FROM kategori k WHERE kt.kategori_id = k.kategori_id;
UPDATE kategori_type kt SET type_navn = t.navn FROM type t WHERE kt.type_id = t.type_id;

-- Opprett koblingstabell for kategori og kode
CREATE TABLE kategori_type_kode
(
    kategori_navn VARCHAR(40) NOT NULL,
    type_navn VARCHAR(40) NOT NULL,
    kode VARCHAR(100) NOT NULL,
    PRIMARY KEY (kategori_navn, type_navn, kode)
);

CREATE TABLE type_kode
(
    type_navn VARCHAR(40) NOT NULL,
    kode VARCHAR(100) NOT NULL,
    PRIMARY KEY (type_navn, kode)
);

INSERT INTO kategori_type_kode
SELECT ka.navn, t.navn, kode FROM kode k JOIN kategori ka on ka.kategori_id = k.kategori_id JOIN kategori_type kt on ka.kategori_id = kt.kategori_id
JOIN type t ON t.type_id = kt.type_id
AND k.type_id = kt.type_id
ON conflict do nothing;

INSERT INTO type_kode
    SELECT t.navn, kode FROM kode k JOIN type t on k.type_id = t.type_id
ON conflict do nothing;

-- Fyll kode_temp med data og rydd opp
INSERT INTO kode_temp (kode, sortering, gyldig_fra, gyldig_til)
SELECT DISTINCT kode, min(sortering), min(gyldig_fra), min(gyldig_til) FROM kode GROUP BY kode;

DROP TABLE kode;

ALTER TABLE kode_temp
    RENAME TO kode;

-- Fjern kolonner
ALTER TABLE kode DROP COLUMN kategori_id;
ALTER TABLE kode DROP COLUMN type_id;
ALTER TABLE kategori DROP COLUMN kategori_id;
ALTER TABLE type DROP COLUMN type_id;
ALTER TABLE kategori_type DROP COLUMN kategori_id;
ALTER TABLE kategori_type DROP COLUMN type_id;

