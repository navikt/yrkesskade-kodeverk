INSERT INTO spraak VALUES ('nb', 'NO');
INSERT INTO spraak VALUES ('nn', 'NO');

INSERT INTO kategori VALUES (0, 'arbeidstaker', 'Kodeverk for arbeidstakere');
INSERT INTO kategori VALUES (1, 'militær', 'Militær');
INSERT INTO kategori VALUES (2, 'elev', 'Elev/Studen');

INSERT INTO type (type_id, navn, beskrivelse) VALUES (0, 'tidsrom', 'Tidsrom for når en skade skjedde');
INSERT INTO type (type_id, navn, beskrivelse) VALUES (1, 'alvorlighetsgrad', 'Alvorlighetsgrad');
INSERT INTO type VALUES (50, 'landkoder', 'Landkoder', true, 'Landkoder');
INSERT INTO type VALUES (60, 'landkoderISO2', 'Landkoder', true, 'LandkoderISO2');

INSERT INTO kategori_type VALUES (0,0);
INSERT INTO kategori_type VALUES (0,1);

INSERT INTO kode (kode, type_id, kategori_id) VALUES ('underPaalagtTjeneste', 0, 1);
INSERT INTO verdi VALUES ('underPaalagtTjeneste', 'nb', 'Under pålagt tjeneste');
INSERT INTO kode (kode, type_id, kategori_id) VALUES ('underManoverJaNei', 0, 1);
INSERT INTO verdi VALUES ('underManoverJaNei', 'nb', 'Under manøver ja/nei tidsrom');
INSERT INTO kode (kode, type_id, kategori_id, sortering) VALUES ('utenforArbeidstid', 0, null, 1);
INSERT INTO verdi VALUES ('utenforArbeidstid', 'nb', 'Utenfor arbeidstid');
INSERT INTO kode (kode, type_id) VALUES ('underPermisjon', 0);
INSERT INTO verdi VALUES ('underPermisjon', 'nb', 'Under Permisjon');
INSERT INTO kode (kode, type_id) VALUES ('underFullSykemelding', 0);
INSERT INTO verdi VALUES ('underFullSykemelding', 'nb', 'Under full sykemelding');
INSERT INTO kode (kode, type_id) VALUES ('fritidPrivatAktivitet', 0);
INSERT INTO verdi VALUES ('fritidPrivatAktivitet', 'nb', 'Fritid/ privat aktivitet');
INSERT INTO kode (kode, type_id) VALUES ('hvilendeVakt', 0);
INSERT INTO verdi VALUES ('hvilendeVakt', 'nb', 'Hvilende vakt');
INSERT INTO kode (kode, type_id) VALUES ('underFrivilligArbeid', 0);
INSERT INTO verdi VALUES ('underFrivilligArbeid', 'nb', 'Under frivillig arbeid');
INSERT INTO kode (kode, type_id) VALUES ('underRedningsarbeid', 0);
INSERT INTO verdi VALUES ('underRedningsarbeid', 'nb', 'Under redningsarbeid, vakthold eller redningsøvelse');
INSERT INTO kode (kode, type_id) VALUES ('alternativenePasserIkke', 0);
INSERT INTO verdi VALUES ('alternativenePasserIkke', 'nb', 'Alternativene passer ikke');
INSERT INTO kode (kode, type_id, kategori_id, sortering) VALUES ('iAvtaltArbeidstid', 0, null, 0);
INSERT INTO verdi VALUES ('iAvtaltArbeidstid', 'nb', 'I avtalt arbeidstid');
