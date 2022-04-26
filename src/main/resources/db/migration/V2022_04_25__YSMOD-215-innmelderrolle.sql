-- Ny type
INSERT INTO type (type_id, navn, beskrivelse) VALUES (11, 'innmelderrolle', 'Innmelder roller');

-- Koder
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('denSkadelidte', 100, 11, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('vergeOgForesatt', 100, 11, '2022-03-15', null, 200);

-- Verdier
INSERT INTO verdi (kode, spraak, verdi) VALUES ('denSkadelidte', 'nb', 'Den skadelidte selv');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('vergeOgForesatt', 'nb', 'Verge/Foresatt');

