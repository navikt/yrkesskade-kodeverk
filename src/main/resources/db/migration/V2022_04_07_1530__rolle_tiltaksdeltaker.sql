-- Ny kategori / rolletype
INSERT INTO kategori (kategori_id, navn, beskrivelse) VALUES (4, 'tiltaksdeltaker', 'I tiltak regi av NAV');

-- Kategori 'I tiltak regi av NAV' / Type Tidsrom
INSERT INTO kategori_type (kategori_id, type_id) VALUES (4, 0);
-- Kategori 'I tiltak regi av NAV' / Type Alvorlighetsgrad
INSERT INTO kategori_type (kategori_id, type_id) VALUES (4, 1);
-- Kategori 'I tiltak regi av NAV' / Type 'Hvor skjedde ulykken'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (4, 2);
-- Kategori 'I tiltak regi av NAV' / Type 'Årsak til hendelsen og bakgrunn for årsak
INSERT INTO kategori_type (kategori_id, type_id) VALUES (4, 3);
-- Kategori 'I tiltak regi av NAV' / Type 'Hvor på kroppen skjedde skaden'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (4, 4);
-- Kategori 'I tiltak regi av NAV' / Type 'Hva slag skade er det'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (4, 5);

-- Til info: Kategori 'I tiltak regi av NAV' skal ikke ha kodelisten/typen 'Har den skadelidte hatt fravær'

-- Kategori 'I tiltak regi av NAV' / Type 'Hvilken type arbeidsplass er det'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (4, 7);
-- Kategori 'I tiltak regi av NAV' / Type 'Hva var bakgrunnen for hendelsen'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (4, 8);


-- Kategori 'I tiltak regi av NAV' / Type Tidsrom
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iAvtaltArbeidstid',          4, 0, '2022-04-07', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('utenforArbeidstid',          4, 0, '2022-04-07', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('underPermisjon',             4, 0, '2022-04-07', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('underFullSykemelding',       4, 0, '2022-04-07', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fritidEllerPrivatAktivitet', 4, 0, '2022-04-07', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',    4, 0, '2022-04-07', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iUndervisningstid',          4, 0, '2022-04-07', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('utenforUndervisningstid',    4, 0, '2022-04-07', null, 400);


-- Kategori 'I tiltak regi av NAV' / Type Alvorlighetsgrad
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('antattIkkeOppsoektLege',      4, 1, '2022-04-07', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('antattOppsoektLege',          4, 1, '2022-04-07', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alvorligKreftsykdom',         4, 1, '2022-04-07', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('livstruendeSykdomEllerSkade', 4, 1, '2022-04-07', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('innmeldtDoedsfall',           4, 1, '2022-04-07', null, 500);


-- Kategori 'I tiltak regi av NAV' / Type 'Hvor skjedde ulykken'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidsstedInne',                     4, 2, '2022-04-07', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidsstedUte',                      4, 2, '2022-04-07', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidsstedLukketOmraade',            4, 2, '2022-04-07', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paaVeiTilEllerFraArbeidssted',        4, 2, '2022-04-07', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kommetFremTilMidlertidigArbeidssted', 4, 2, '2022-04-07', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('transportIArbeidsgiversRegi',         4, 2, '2022-04-07', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paaVeiMellomArbeidssteder',           4, 2, '2022-04-07', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('offentligSted' ,                      4, 2, '2022-04-07', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('undervisningstedInne',                4, 2, '2022-04-07', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('undervisningsstedUte',                4, 2, '2022-04-07', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paaVeiTilEllerFraUndervisningssted',  4, 2, '2022-04-07', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('transportISkolensRegi',               4, 2, '2022-04-07', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('arrangementISkolensRegi',             4, 2, '2022-04-07', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',             4, 2, '2022-04-07', null, 1400);


-- Kategori 'I tiltak regi av NAV' / Type 'Hvilken type arbeidsplass er det'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('industriellVirksomhet',                                 4, 7, '2022-04-07', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('anleggsomraadeEllerByggeplassEllerStenbruddEllerGruve', 4, 7, '2022-04-07', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('jordbrukEllerAvlAvDyrEllerSkogbruk',                    4, 7, '2022-04-07', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fiskeoppdrett',                                         4, 7, '2022-04-07', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kontorEllerKonferanseEllerBibliotek',                   4, 7, '2022-04-07', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('undervisningEllerBarnehage',                            4, 7, '2022-04-07', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('handel',                                                4, 7, '2022-04-07', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('restauranterEllerOvernattingssted',                     4, 7, '2022-04-07', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('museumEllerFornoeyelsespark',                           4, 7, '2022-04-07', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('helseinstitusjoner',                                    4, 7, '2022-04-07', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('offentligSted',                                         4, 7, '2022-04-07', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('offentligeTransportmidler',                             4, 7, '2022-04-07', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('privateHjem',                                           4, 7, '2022-04-07', null, 1900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('idrettsområde',                                         4, 7, '2022-04-07', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iLuftenOverBakkenivaaPaaTakEllerTerasserEllerHeis',     4, 7, '2022-04-07', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iLuftenIFlyEllerHelikopter',                            4, 7, '2022-04-07', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('underJordoverflatenIGroeftEllerTunellEllerGruve',       4, 7, '2022-04-07', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paaEllerOverVann',                                      4, 7, '2022-04-07', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iHoeytrykksomgivelserEllerDykkingEllerDykkerkammer',    4, 7, '2022-04-07', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',                               4, 7, '2022-04-07', null, 2000);


-- Kategori 'I tiltak regi av NAV' / Type 'Årsak til hendelsen og bakgrunn for årsak'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('stoetEllerTreffAvGjenstand',               4, 3, '2022-04-07', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('trafikkulykke',                            4, 3, '2022-04-07', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sammenstoetEllerBittEllerSpark',           4, 3, '2022-04-07', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sammenstoetMedGjenstandEllerPaakjoersel',  4, 3, '2022-04-07', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('velt',                                     4, 3, '2022-04-07', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('klemtEllerFanget',                         4, 3, '2022-04-07', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fallAvPerson',                             4, 3, '2022-04-07', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('stukketEllerKuttet',                       4, 3, '2022-04-07', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kontaktMedElektriskSpenning',              4, 3, '2022-04-07', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyTemperatur',                           4, 3, '2022-04-07', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('lavTemperatur',                            4, 3, '2022-04-07', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kontaktMedKjemikalierEllerFarligeStoffer', 4, 3, '2022-04-07', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('eksplosjonEllerSprenging',                 4, 3, '2022-04-07', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('brann',                                    4, 3, '2022-04-07', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('truslerOmVold',                            4, 3, '2022-04-07', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paafoertVoldsskade',                       4, 3, '2022-04-07', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('druknetEllerBegravdEllerOmsvoept',         4, 3, '2022-04-07', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fysiskEllerPsykiskBelastning',             4, 3, '2022-04-07', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',                  4, 3, '2022-04-07', null, 1900);


-- Kategori 'I tiltak regi av NAV' / Type 'Hva var bakgrunnen for hendelsen'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('manglendeMerkingEllerVarsling',                                       4, 8, '2022-04-07', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('mangelfulleSikkerhetsrutiner',                                        4, 8, '2022-04-07', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('utilstrekkeligSikring',                                               4, 8, '2022-04-07', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('vernetiltakIkkeGjennomfoert',                                         4, 8, '2022-04-07', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('verneutstyrUtAvFunksjon',                                             4, 8, '2022-04-07', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('verneutstyrFjernet',                                                  4, 8, '2022-04-07', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('uautorisertBrukAvUtstyr',                                             4, 8, '2022-04-07', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('defektUtstyr',                                                        4, 8, '2022-04-07', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilBrukEllerTapAvKontrollOverMaskinEllerTransportmiddel',            4, 8, '2022-04-07', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilBrukEllerTapAvKontrollAvHaandholdtVerktoeyEllerAnnenGjenstand',   4, 8, '2022-04-07', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('tapAvKontrollOverDyr',                                                4, 8, '2022-04-07', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilPaalasting',                                                      4, 8, '2022-04-07', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilPlassering',                                                      4, 8, '2022-04-07', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilLoefting',                                                        4, 8, '2022-04-07', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilUtfoerelseAvOppgaven',                                            4, 8, '2022-04-07', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('mangelfullOpplaering',                                                4, 8, '2022-04-07', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('angrepetEllerTruetAvEnPerson',                                        4, 8, '2022-04-07', null, 3100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('uforsvarligLekEllerSpoekEllerVeddemaal',                              4, 8, '2022-04-07', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paavirkningAvAlkoholEllerAndreRusmidler',                             4, 8, '2022-04-07', null, 1900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('bedriftsidrett',                                                      4, 8, '2022-04-07', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('avvikSomFoelgeAvElektriskeProblemerEllerEksplosjonEllerBrann',        4, 8, '2022-04-07', null, 2800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('avvikSomFoelgeAvLekkasjeEllerOversvoemmelse',                         4, 8, '2022-04-07', null, 2900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('avvikSomFoelgeAvGassutslippEllerKjemikalierEllerStoevEllerPartikler', 4, 8, '2022-04-07', null, 3000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('materialsvikt',                                                       4, 8, '2022-04-07', null, 2000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fallendeObjekt',                                                      4, 8, '2022-04-07', null, 2200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sviktIUnderlag',                                                      4, 8, '2022-04-07', null, 2100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('glidningEllerSnubling',                                               4, 8, '2022-04-07', null, 2300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fallFraEgenHoeyde',                                                   4, 8, '2022-04-07', null, 2400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fallAvPersonTilLavereNivaa',                                          4, 8, '2022-04-07', null, 2500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kroppsbevegelseUtenFysiskBelastning',                                 4, 8, '2022-04-07', null, 2600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kroppsbevegelseMedFysiskBelastning',                                  4, 8, '2022-04-07', null, 2700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('tilstedeVedVoldEllerAggresjonEllerTrussel',                           4, 8, '2022-04-07', null, 3200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',                                             4, 8, '2022-04-07', null, 3300);


-- Kategori 'I tiltak regi av NAV' / Type 'Hvor på kroppen skjedde skaden'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hode',                         4, 4, '2022-04-07', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('ansikt',                       4, 4, '2022-04-07', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('venstreOeye',                  4, 4, '2022-04-07', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyreOeye',                   4, 4, '2022-04-07', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('venstreOere',                  4, 4, '2022-04-07', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyreOere',                   4, 4, '2022-04-07', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('tenner',                       4, 4, '2022-04-07', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kjeve',                        4, 4, '2022-04-07', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('halsOgNakke',                  4, 4, '2022-04-07', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('rygg',                         4, 4, '2022-04-07', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('seteEllerBekkenEllerHalebein', 4, 4, '2022-04-07', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('ribbenOgSkulderblad',          4, 4, '2022-04-07', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('brystkasseOgLunger',           4, 4, '2022-04-07', null, 3300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hjerte',                       4, 4, '2022-04-07', null, 3400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('spiseroer',                    4, 4, '2022-04-07', null, 3500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('mage',                         4, 4, '2022-04-07', null, 3600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fordoeyelsesorgan',            4, 4, '2022-04-07', null, 3700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('nyrerOgUrinveier',             4, 4, '2022-04-07', null, 3800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('venstreSkulder',               4, 4, '2022-04-07', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyreSkulder',                4, 4, '2022-04-07', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('venstreArmOgAlbue',            4, 4, '2022-04-07', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyreArmOgAlbue',             4, 4, '2022-04-07', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('venstreHaandledd',             4, 4, '2022-04-07', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyreHaandledd',              4, 4, '2022-04-07', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('venstreHaand',                 4, 4, '2022-04-07', null, 1900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyreHaand',                  4, 4, '2022-04-07', null, 2000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('venstreFingre',                4, 4, '2022-04-07', null, 2100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyreFingre',                 4, 4, '2022-04-07', null, 2200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('venstreHofte',                 4, 4, '2022-04-07', null, 2300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyreHofte',                  4, 4, '2022-04-07', null, 2400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kjoennsorgan',                 4, 4, '2022-04-07', null, 3900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('venstreBenOgKne',              4, 4, '2022-04-07', null, 2500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyreBenOgKne',               4, 4, '2022-04-07', null, 2600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('venstreAnkel',                 4, 4, '2022-04-07', null, 2700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyreAnkel',                  4, 4, '2022-04-07', null, 2800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('venstreFot',                   4, 4, '2022-04-07', null, 2900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyreFot',                    4, 4, '2022-04-07', null, 3000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('venstreTaer',                  4, 4, '2022-04-07', null, 3100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('hoeyreTaer',                   4, 4, '2022-04-07', null, 3200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('heleKroppen',                  4, 4, '2022-04-07', null, 4000);


-- Kategori 'I tiltak regi av NAV' / Type 'Hva slags skade er det'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('bloetdelsskadeUtenSaar',  4, 5, '2022-04-07', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('saarskade',               4, 5, '2022-04-07', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('tapAvLegemsdel',          4, 5, '2022-04-07', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('forstuingOgForvridning',  4, 5, '2022-04-07', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('bruddskade',              4, 5, '2022-04-07', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('varmeskade',              4, 5, '2022-04-07', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kuldeskade',              4, 5, '2022-04-07', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('etsing',                  4, 5, '2022-04-07', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('akuttForgiftning',        4, 5, '2022-04-07', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('psykiskeEttervirkninger', 4, 5, '2022-04-07', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('indreSkade',              4, 5, '2022-04-07', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('akustiskSjokk',           4, 5, '2022-04-07', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('oeyeskade',               4, 5, '2022-04-07', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('knusningsskade',          4, 5, '2022-04-07', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('traumatiskSjokk',         4, 5, '2022-04-07', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sjokkEtterAggresjon',     4, 5, '2022-04-07', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('infeksjon',               4, 5, '2022-04-07', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('nedsattAllmenntilstand',  4, 5, '2022-04-07', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke', 4, 5, '2022-04-07', null, 1900);
