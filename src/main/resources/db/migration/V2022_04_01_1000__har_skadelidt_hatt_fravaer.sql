-- Ny type
INSERT INTO type (type_id, navn, beskrivelse) VALUES (6, 'harSkadelidtHattFravaer', 'Har den skadelidte hatt fravær');

-- Kategori Arbeidstaker / Type 'Har den skadelidte hatt fravær'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (0, 6);
-- Kategori Lærling / Type 'Har den skadelidte hatt fravær'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (3, 6);
-- Kategori Elev/Student skal ikke bruke denne kodelisten


-- Kategori Arbeidstaker / Type 'Har den skadelidte hatt fravær'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fravaersdagerUkjent',     0, 6, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('treDagerEllerMindre',     0, 6, '2022-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('merEnnTreDager',          0, 6, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke', 0, 6, '2022-03-15', null, 400);

-- Kategori Lærling / Type 'Har den skadelidte hatt fravær'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fravaersdagerUkjent',     3, 6, '2022-03-29', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('treDagerEllerMindre',     3, 6, '2022-03-29', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('merEnnTreDager',          3, 6, '2022-03-29', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke', 3, 6, '2022-03-29', null, 400);

-- Verdier for type 'Har den skadelidte hatt fravær'
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fravaersdagerUkjent', 'nb', 'Fraværsdager ukjent');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('treDagerEllerMindre', 'nb', 'Kjent fravær tre dager eller mindre');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('merEnnTreDager',      'nb', 'Kjent fravær mer enn tre dager');
