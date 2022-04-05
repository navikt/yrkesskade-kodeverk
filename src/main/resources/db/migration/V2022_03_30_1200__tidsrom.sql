-- Kategori Elev/Student / Type Tidsrom
INSERT INTO kategori_type (kategori_id, type_id) VALUES (2, 0);

-- Ny kategori / rolletype
INSERT INTO kategori (kategori_id, navn, beskrivelse) VALUES (3, 'lærling', 'Lærling');
-- Kategori Lærling / Type Tidsrom
INSERT INTO kategori_type (kategori_id, type_id) VALUES (3, 0);


-- Kategori Arbeidstaker / Type Tidsrom
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iAvtaltArbeidstid',                                    0, 0, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('utenforArbeidstid',                                    0, 0, '2022-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('underPermisjon',                                       0, 0, '2022-03-15', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('underFullSykemelding',                                 0, 0, '2022-03-15', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fritidEllerPrivatAktivitet',                           0, 0, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hvilendeVakt',                                         0, 0, '2022-03-15', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('underFrivilligArbeid',                                 0, 0, '2022-03-15', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('underRedningsarbeidEllerVaktholdEllerRedningsoevelse', 0, 0, '2022-03-15', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',                              0, 0, '2022-03-15', null, 900);

-- Kategori Lærling / Type Tidsrom
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iAvtaltArbeidstid',                                    3, 0, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('utenforArbeidstid',                                    3, 0, '2022-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('underPermisjon',                                       3, 0, '2022-03-15', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('underFullSykemelding',                                 3, 0, '2022-03-15', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fritidEllerPrivatAktivitet',                           3, 0, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hvilendeVakt',                                         3, 0, '2022-03-15', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('underFrivilligArbeid',                                 3, 0, '2022-03-15', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('underRedningsarbeidEllerVaktholdEllerRedningsoevelse', 3, 0, '2022-03-15', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',                              3, 0, '2022-03-15', null, 900);

-- Kategori Elev/Student / Type Tidsrom
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iUndervisningstid',                                    2, 0, '2022-04-01', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('utenforUndervisningstid',                              2, 0, '2022-04-01', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fritidEllerPrivatAktivitet',                           2, 0, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('underPermisjon',                                       2, 0, '2022-03-15', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',                              2, 0, '2022-03-15', null, 500);

-- Verdier for type Tidsrom
INSERT INTO verdi (kode, spraak, verdi) VALUES ('iAvtaltArbeidstid',                                    'nb', 'I avtalt arbeidstid');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('utenforArbeidstid',                                    'nb', 'Utenfor arbeidstid');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('underPermisjon',                                       'nb', 'Under permisjon');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('underFullSykemelding',                                 'nb', 'Under full sykemelding');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fritidEllerPrivatAktivitet',                           'nb', 'Fritid/privat aktivitet');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hvilendeVakt',                                         'nb', 'Hvilende vakt');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('underFrivilligArbeid',                                 'nb', 'Under frivillig arbeid');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('underRedningsarbeidEllerVaktholdEllerRedningsoevelse', 'nb', 'Under redningsarbeid, vakthold eller redningsøvelse');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('alternativenePasserIkke',                              'nb', 'Alternativene passer ikke');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('iUndervisningstid',                                    'nb', 'I undervisningstid');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('utenforUndervisningstid',                              'nb', 'Utenfor undervisningstid');
