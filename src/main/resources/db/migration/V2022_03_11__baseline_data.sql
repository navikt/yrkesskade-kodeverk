INSERT INTO kode_kategori VALUES (0, 'arbeidstaker', 'Kodeverk for arbeidstakere');
INSERT INTO kode_kategori VALUES (1, 'militær', 'Militær');
INSERT INTO kode_kategori VALUES (2, 'elev', 'Elev/Studen');

INSERT INTO kode_type (type_id, navn, beskrivelse) VALUES (0, 'tidsrom', 'Tidsrom for når en skade skjedde');
INSERT INTO kode_type (type_id, navn, beskrivelse) VALUES (1, 'alvorlighetsgrad', 'Alvorlighetsgrad');
INSERT INTO kode_type VALUES (50, 'landkoder', 'Landkoder', true, 'Landkoder');

INSERT INTO kode_type_kategori VALUES (0,0);
INSERT INTO kode_type_kategori VALUES (0,1);

INSERT INTO kode (kode, type_id, kategori_id) VALUES ('UPTM', 0, 1);
INSERT INTO kode_verdi VALUES ('UPTM', 'nb', 'Under pålagt tjeneste');
INSERT INTO kode (kode, type_id, kategori_id) VALUES ('UNMNV', 0, 1);
INSERT INTO kode_verdi VALUES ('UNMNV', 'nb', 'Under manøver ja/nei tidsrom');
INSERT INTO kode (kode, type_id) VALUES ('UTARB', 0);
INSERT INTO kode_verdi VALUES ('UTARB', 'nb', 'Utenfor arbeidstid');
INSERT INTO kode (kode, type_id) VALUES ('UNPERM', 0);
INSERT INTO kode_verdi VALUES ('UNPERM', 'nb', 'Under Permisjon');
INSERT INTO kode (kode, type_id) VALUES ('UNFSYK', 0);
INSERT INTO kode_verdi VALUES ('UNFSYK', 'nb', 'Under full sykemelding');
INSERT INTO kode (kode, type_id) VALUES ('FRIT', 0);
INSERT INTO kode_verdi VALUES ('FRIT', 'nb', 'Fritid/ privat aktivitet');
INSERT INTO kode (kode, type_id) VALUES ('HVILV', 0);
INSERT INTO kode_verdi VALUES ('HVILV', 'nb', 'Hvilende vakt');
INSERT INTO kode (kode, type_id) VALUES ('UNFRIV', 0);
INSERT INTO kode_verdi VALUES ('UNFRIV', 'nb', 'Under frivillig arbeid');
INSERT INTO kode (kode, type_id) VALUES ('UNRED', 0);
INSERT INTO kode_verdi VALUES ('UNRED', 'nb', 'Under redningsarbeid, vakthold eller redningsøvelse');
INSERT INTO kode (kode, type_id) VALUES ('ANN', 0);
INSERT INTO kode_verdi VALUES ('ANN', 'nb', 'Alternativene passer ikke');
