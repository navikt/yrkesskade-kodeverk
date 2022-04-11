-- Opprett en default kategori
INSERT INTO kategori VALUES (100, 'alle', 'En kategori for alle koder som ikke tilhører en kategori');

-- Ny type
INSERT INTO type (type_id, navn, beskrivelse) VALUES (9, 'fravaertype', 'Fraværstype');

-- Koder
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sykemelding', 100, 9, '2022-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('egenmelding', 100, 9, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kombinasjonSykemeldingEgenmelding', 100, 9, '2022-03-15', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke', 100, 9, '2022-03-15', null, 10000);

-- Verdier
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sykemelding', 'nb', 'Traumatisk sjokk');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('egenmelding', 'nb', 'Sjokk etter aggresjon');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kombinasjonSykemeldingEgenmelding', 'nb', 'Infeksjon');


