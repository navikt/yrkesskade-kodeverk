-- Ny type
INSERT INTO type (type_id, navn, beskrivelse) VALUES (7, 'typeArbeidsplass', 'Hvilken type arbeidsplass er det');

-- Kategori Arbeidstaker / Type 'Hvilken type arbeidsplass er det'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (0, 7);
-- Kategori Lærling / Type 'Hvilken type arbeidsplass er det'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (3, 7);
-- Kategori Elev/Student skal ikke bruke denne kodelisten


-- Kategori Arbeidstaker / Type 'Hvilken type arbeidsplass er det'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('industriellVirksomhet',                                 0, 7, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('anleggsomraadeEllerByggeplassEllerStenbruddEllerGruve', 0, 7, '2022-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('jordbrukEllerAvlAvDyrEllerSkogbruk',                    0, 7, '2022-03-15', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fiskeoppdrett',                                         0, 7, '2022-03-15', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kontorEllerKonferanseEllerBibliotek',                   0, 7, '2022-03-15', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('undervisningEllerBarnehage',                            0, 7, '2022-03-15', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('handel',                                                0, 7, '2022-03-15', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('restauranterEllerOvernattingssted',                     0, 7, '2022-03-15', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('museumEllerFornoeyelsespark',                           0, 7, '2022-03-15', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('helseinstitusjoner',                                    0, 7, '2022-03-15', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('offentligSted',                                         0, 7, '2022-03-15', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('offentligeTransportmidler',                             0, 7, '2022-03-15', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('privateHjem',                                           0, 7, '2022-03-15', null, 1900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('idrettsomraade',                                        0, 7, '2022-03-15', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iLuftenOverBakkenivaaPaaTakEllerTerrasserEllerHeis',    0, 7, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iLuftenIFlyEllerHelikopter',                            0, 7, '2022-03-15', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('underJordoverflatenIGroeftEllerTunellEllerGruve',       0, 7, '2022-03-15', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paaEllerOverVann',                                      0, 7, '2022-03-15', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iHoeytrykksomgivelserEllerDykkingEllerDykkerkammer',    0, 7, '2022-03-15', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',                               0, 7, '2022-03-15', null, 2000);

-- Kategori Lærling / Type 'Hvilken type arbeidsplass er det'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('industriellVirksomhet',                                 3, 7, '2022-03-29', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('anleggsomraadeEllerByggeplassEllerStenbruddEllerGruve', 3, 7, '2022-03-29', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('jordbrukEllerAvlAvDyrEllerSkogbruk',                    3, 7, '2022-03-29', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fiskeoppdrett',                                         3, 7, '2022-03-29', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kontorEllerKonferanseEllerBibliotek',                   3, 7, '2022-03-29', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('undervisningEllerBarnehage',                            3, 7, '2022-03-29', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('handel',                                                3, 7, '2022-03-29', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('restauranterEllerOvernattingssted',                     3, 7, '2022-03-29', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('museumEllerFornoeyelsespark',                           3, 7, '2022-03-29', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('helseinstitusjoner',                                    3, 7, '2022-03-29', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('offentligSted',                                         3, 7, '2022-03-29', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('offentligeTransportmidler',                             3, 7, '2022-03-29', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('privateHjem',                                           3, 7, '2022-03-29', null, 1900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('idrettsomraade',                                        3, 7, '2022-03-29', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iLuftenOverBakkenivaaPaaTakEllerTerrasserEllerHeis',    3, 7, '2022-03-29', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iLuftenIFlyEllerHelikopter',                            3, 7, '2022-03-29', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('underJordoverflatenIGroeftEllerTunellEllerGruve',       3, 7, '2022-03-29', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paaEllerOverVann',                                      3, 7, '2022-03-29', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iHoeytrykksomgivelserEllerDykkingEllerDykkerkammer',    3, 7, '2022-03-29', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',                               3, 7, '2022-03-29', null, 2000);

-- Verdier for type 'Hvilken type arbeidsplass er det'
INSERT INTO verdi (kode, spraak, verdi) VALUES ('industriellVirksomhet',                                 'nb', 'Plass for industriell virksomhet');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('anleggsomraadeEllerByggeplassEllerStenbruddEllerGruve', 'nb', 'Anleggsområde, byggeplass, stenbrudd eller gruve');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('jordbrukEllerAvlAvDyrEllerSkogbruk',                    'nb', 'Plass for jordbruk, avl av dyr eller skogbruk');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fiskeoppdrett',                                         'nb', 'Plass for fiskeoppdrett');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kontorEllerKonferanseEllerBibliotek',                   'nb', 'Lokale for kontor, konferanse eller bibliotek');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('undervisningEllerBarnehage',                            'nb', 'Undervisningssted eller barnehage');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('handel',                                                'nb', 'Plass for handel');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('restauranterEllerOvernattingssted',                     'nb', 'Restaurant eller overnattingssted');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('museumEllerFornoeyelsespark',                           'nb', 'Museum, fornøyelsespark og lignende');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('helseinstitusjoner',                                    'nb', 'Helseinstitusjoner');
-- INSERT INTO verdi (kode, spraak, verdi) VALUES ('offentligSted',                                         'nb', 'Offentlig sted');   -- koden offentligSted er allerede definert
INSERT INTO verdi (kode, spraak, verdi) VALUES ('offentligeTransportmidler',                             'nb', 'Offentlige transportmidler');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('privateHjem',                                           'nb', 'Private hjem');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('idrettsomraade',                                        'nb', 'Idrettsområde');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('iLuftenOverBakkenivaaPaaTakEllerTerrasserEllerHeis',    'nb', 'I luften over bakkenivå på tak, terrasser eller heiser');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('iLuftenIFlyEllerHelikopter',                            'nb', 'I luften, fly eller helikopter');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('underJordoverflatenIGroeftEllerTunellEllerGruve',       'nb', 'Under jordoverflaten, grøfter, tuneller eller gruve.');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('paaEllerOverVann',                                      'nb', 'På eller over vann');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('iHoeytrykksomgivelserEllerDykkingEllerDykkerkammer',    'nb', 'I høytrykksomgivelser, dykking og dykkerkammer');
