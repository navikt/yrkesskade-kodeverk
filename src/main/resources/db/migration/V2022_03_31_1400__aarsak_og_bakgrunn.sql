-- Ny type
INSERT INTO type (type_id, navn, beskrivelse) VALUES (3, 'aarsakOgBakgrunn', 'Årsak til hendelsen og bakgrunn for årsak');

-- Kategori Arbeidstaker / Type 'Årsak til hendelsen og bakgrunn for årsak
INSERT INTO kategori_type (kategori_id, type_id) VALUES (0, 3);
-- Kategori Lærling / Type 'Årsak til hendelsen og bakgrunn for årsak'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (3, 3);
-- Kategori Elev/Student / Type 'Årsak til hendelsen og bakgrunn for årsak'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (2, 3);


-- Kategori Arbeidstaker / Type 'Årsak til hendelsen og bakgrunn for årsak'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('stoetEllerTreffAvGjenstand',                     0, 3, '2022-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('trafikkulykke',                                  0, 3, '2022-03-15', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sammenstoetEllerBittEllerSpark',                 0, 3, '2022-03-15', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sammenstoetMedGjenstandEllerPaakjoersel',        0, 3, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('velt',                                           0, 3, '2022-03-15', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('klemtEllerFanget',                               0, 3, '2022-03-15', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fallAvPerson',                                   0, 3, '2022-03-15', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('stukketEllerKuttet',                             0, 3, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kontaktMedElektriskSpenning',                    0, 3, '2022-03-15', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyTemperatur',                                 0, 3, '2022-03-15', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('lavTemperatur',                                  0, 3, '2022-03-15', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kontaktMedKjemikalierEllerFarligeStoffer',       0, 3, '2022-03-15', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('eksplosjonEllerSprenging',                       0, 3, '2022-03-15', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('brann',                                          0, 3, '2022-03-15', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('truslerOmVold',                                  0, 3, '2022-03-15', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paafoertVoldsskade',                             0, 3, '2022-03-15', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('druktnetEllerBegravdEllerOmsvoept',              0, 3, '2022-03-15', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fysiskEllerPsykiskBelastning',                   0, 3, '2022-03-15', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',                        0, 3, '2022-03-15', null, 1900);

-- Kategori Lærling / Type 'Årsak til hendelsen og bakgrunn for årsak'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('stoetEllerTreffAvGjenstand',                     3, 3, '2022-03-29', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('trafikkulykke',                                  3, 3, '2022-03-29', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sammenstoetEllerBittEllerSpark',                 3, 3, '2022-03-29', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sammenstoetMedGjenstandEllerPaakjoersel',        3, 3, '2022-03-29', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('velt',                                           3, 3, '2022-03-29', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('klemtEllerFanget',                               3, 3, '2022-03-29', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fallAvPerson',                                   3, 3, '2022-03-29', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('stukketEllerKuttet',                             3, 3, '2022-03-29', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kontaktMedElektriskSpenning',                    3, 3, '2022-03-29', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyTemperatur',                                 3, 3, '2022-03-29', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('lavTemperatur',                                  3, 3, '2022-03-29', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kontaktMedKjemikalierEllerFarligeStoffer',       3, 3, '2022-03-29', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('eksplosjonEllerSprenging',                       3, 3, '2022-03-29', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('brann',                                          3, 3, '2022-03-29', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('truslerOmVold',                                  3, 3, '2022-03-29', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paafoertVoldsskade',                             3, 3, '2022-03-29', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('druktnetEllerBegravdEllerOmsvoept',              3, 3, '2022-03-29', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fysiskEllerPsykiskBelastning',                   3, 3, '2022-03-29', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',                        3, 3, '2022-03-29', null, 1900);

-- Kategori Elev/Student / Type 'Årsak til hendelsen og bakgrunn for årsak'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('stoetEllerTreffAvGjenstand',                     2, 3, '2022-04-01', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('trafikkulykke',                                  2, 3, '2022-04-01', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sammenstoetEllerBittEllerSpark',                 2, 3, '2022-04-01', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sammenstoetMedGjenstandEllerPaakjoersel',        2, 3, '2022-04-01', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('velt',                                           2, 3, '2022-04-01', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('klemtEllerFanget',                               2, 3, '2022-04-01', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fallAvPerson',                                   2, 3, '2022-04-01', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('stukketEllerKuttet',                             2, 3, '2022-04-01', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kontaktMedElektriskSpenning',                    2, 3, '2022-04-01', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyTemperatur',                                 2, 3, '2022-04-01', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('lavTemperatur',                                  2, 3, '2022-04-01', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kontaktMedKjemikalierEllerFarligeStoffer',       2, 3, '2022-04-01', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('eksplosjonEllerSprenging',                       2, 3, '2022-04-01', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('brann',                                          2, 3, '2022-04-01', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('truslerOmVold',                                  2, 3, '2022-04-01', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paafoertVoldsskade',                             2, 3, '2022-04-01', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('druktnetEllerBegravdEllerOmsvoept',              2, 3, '2022-04-01', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fysiskEllerPsykiskBelastning',                   2, 3, '2022-04-01', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',                        2, 3, '2022-04-01', null, 1900);

-- Verdier for type 'Årsak til hendelsen og bakgrunn for årsak'
INSERT INTO verdi (kode, spraak, verdi) VALUES ('stoetEllerTreffAvGjenstand',                     'nb', 'Støt/treff av gjenstand');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('trafikkulykke',                                  'nb', 'Trafikkulykke');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sammenstoetEllerBittEllerSpark',                 'nb', 'Sammenstøt, bitt, spark (dyr eller menneske)');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sammenstoetMedGjenstandEllerPaakjoersel',        'nb', 'Sammenstøt med gjenstand eller påkjørsel');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('velt',                                           'nb', 'Velt');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('klemtEllerFanget',                               'nb', 'Klemt eller fanget');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fallAvPerson',                                   'nb', 'Fall av person');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('stukketEllerKuttet',                             'nb', 'Stukket/kuttet av skarp/spiss gjenstand');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kontaktMedElektriskSpenning',                    'nb', 'Kontakt med elektrisk spenning');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hoeyTemperatur',                                 'nb', 'Høy temperatur');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('lavTemperatur',                                  'nb', 'Lav temperatur');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kontaktMedKjemikalierEllerFarligeStoffer',       'nb', 'Kontakt med kjemikalier eller andre farlige stoffer');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('eksplosjonEllerSprenging',                       'nb', 'Eksplosjon eller sprenging');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('brann',                                          'nb', 'Brann');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('truslerOmVold',                                  'nb', 'Trusler om vold');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('paafoertVoldsskade',                             'nb', 'Påført voldsskade');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('druktnetEllerBegravdEllerOmsvoept',              'nb', 'Druknet, begravd, omsvøpt');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fysiskEllerPsykiskBelastning',                   'nb', 'Fysisk eller psykisk belastning');
