-- kode kategori
CREATE TABLE kode_kategori (
    kategori_id INTEGER PRIMARY KEY,
    navn VARCHAR(40) NOT NULL,
    beskrivelse TEXT NOT NULL DEFAULT ''
);

-- kode kategori type koblings tabell
CREATE TABLE kode_type_kategori (
  kategori_id INTEGER NOT NULL,
  type_id INTEGER NOT NULL,
  PRIMARY KEY(kategori_id, type_id)
);

-- kode type
CREATE TABLE kode_type (
    type_id INTEGER PRIMARY KEY,
    navn VARCHAR(40) NOT NULL,
    beskrivelse TEXT NOT NULL DEFAULT '',
    ekstern boolean NOT NULL DEFAULT FALSE,
    ekstern_navn VARCHAR(40)
);

-- kode
CREATE TABLE kode (
    kode VARCHAR(10) PRIMARY KEY,
    kategori_id INTEGER,
    type_id INTEGER NOT NULL,
    gyldig_fra TIMESTAMP,
    gyldig_til TIMESTAMP,
    CONSTRAINT fk_type
        FOREIGN KEY(type_id)
            REFERENCES kode_type(type_id)
);
-- Kode verdi
CREATE TABLE kode_verdi (
    kode VARCHAR (10) NOT NULL,
    spraak VARCHAR(4) NOT NULL,
    verdi VARCHAR(255) NOT NULL,
    PRIMARY KEY(kode, spraak)
);