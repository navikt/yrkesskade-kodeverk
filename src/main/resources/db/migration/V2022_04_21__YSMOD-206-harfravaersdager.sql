-- Ny type
INSERT INTO type (type_id, navn, beskrivelse) VALUES (10, 'foerteDinSkadeEllerSykdomTilFravaer', 'Førte din skade eller sykdom til fravær');

-- Koder
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('nei', 100, 10, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('treDagerEllerMindre', 100, 10, '2022-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('merEnnTreDager', 100, 10, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fravaersdagerUkjent', 100, 10, '2022-03-15', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('oenskerIkkeAaOppgi', 100, 10, '2022-03-15', null, 1000);

-- Verdier
INSERT INTO verdi (kode, spraak, verdi) VALUES ('oenskerIkkeAaOppgi', 'nb', 'Ønsker ikke å oppgi');

-- Generiske verdier for Ja/Nei
INSERT INTO verdi (kode, spraak, verdi) VALUES ('nei', 'nb', 'Nei');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ja', 'nb', 'Ja');