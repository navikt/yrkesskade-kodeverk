-- kode kategori
CREATE TABLE kategori
(
    kategori_id INTEGER PRIMARY KEY,
    navn        VARCHAR(40) NOT NULL,
    beskrivelse TEXT        NOT NULL DEFAULT ''
);

-- kode kategori type koblings tabell
CREATE TABLE kategori_type
(
    kategori_id INTEGER NOT NULL,
    type_id     INTEGER NOT NULL,
    PRIMARY KEY (kategori_id, type_id)
);

-- kode type
CREATE TABLE type
(
    type_id      INTEGER PRIMARY KEY,
    navn         VARCHAR(40) NOT NULL,
    beskrivelse  TEXT        NOT NULL DEFAULT '',
    ekstern      boolean     NOT NULL DEFAULT FALSE,
    ekstern_navn VARCHAR(40)
);

-- kode
CREATE TABLE kode
(
    kode        VARCHAR(100) PRIMARY KEY,
    kategori_id INTEGER,
    type_id     INTEGER NOT NULL,
    gyldig_fra  TIMESTAMP,
    gyldig_til  TIMESTAMP,
    sortering   INTEGER,
    CONSTRAINT fk_type FOREIGN KEY (type_id) REFERENCES type (type_id)
);

-- språk tabell
CREATE TABLE spraak
(
    spraak        VARCHAR(8) PRIMARY KEY,
    landkode_iso2 VARCHAR(2) NOT NULL
);

-- Kode verdi
CREATE TABLE verdi
(
    kode   VARCHAR(100)  NOT NULL,
    spraak VARCHAR(8)   NOT NULL,
    verdi  VARCHAR(255) NOT NULL,
    PRIMARY KEY (kode, spraak),
    CONSTRAINT fk_spraak FOREIGN KEY (spraak) REFERENCES spraak (spraak)
);
