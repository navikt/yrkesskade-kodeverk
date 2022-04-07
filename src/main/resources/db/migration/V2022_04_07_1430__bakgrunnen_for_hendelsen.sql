-- Ny type
INSERT INTO type (type_id, navn, beskrivelse) VALUES (8, 'bakgrunnForHendelsen', 'Hva var bakgrunnen for hendelsen');

-- Kategori Arbeidstaker / Type 'Hva var bakgrunnen for hendelsen'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (0, 8);
-- Kategori Lærling / Type 'Hva var bakgrunnen for hendelsen'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (3, 8);
-- Kategori Elev/Student skal ikke bruke denne kodelisten


-- Kategori Arbeidstaker / Type 'Hva var bakgrunnen for hendelsen'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('manglendeMerkingEllerVarsling',                                       0, 8, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('mangelfulleSikkerhetsrutiner',                                        0, 8, '2022-03-15', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('utilstrekkeligSikring',                                               0, 8, '2022-03-15', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('vernetiltakIkkeGjennomfoert',                                         0, 8, '2022-03-15', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('verneutstyrUtAvFunksjon',                                             0, 8, '2022-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('verneutstyrFjernet',                                                  0, 8, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('uautorisertBrukAvUtstyr',                                             0, 8, '2022-03-15', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('defektUtstyr',                                                        0, 8, '2022-03-15', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilBrukEllerTapAvKontrollOverMaskinEllerTransportmiddel',            0, 8, '2022-03-15', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilBrukEllerTapAvKontrollAvHaandholdtVerktoeyEllerAnnenGjenstand',   0, 8, '2022-03-15', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('tapAvKontrollOverDyr',                                                0, 8, '2022-03-15', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilPaalasting',                                                      0, 8, '2022-03-15', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilPlassering',                                                      0, 8, '2022-03-15', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilLoefting',                                                        0, 8, '2022-03-15', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilUtfoerelseAvOppgaven',                                            0, 8, '2022-03-15', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('mangelfullOpplaering',                                                0, 8, '2022-03-15', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('angrepetEllerTruetAvEnPerson',                                        0, 8, '2022-03-15', null, 3100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('uforsvarligLekEllerSpoekEllerVeddemaal',                              0, 8, '2022-03-15', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paavirkningAvAlkoholEllerAndreRusmidler',                             0, 8, '2022-03-15', null, 1900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('bedriftsidrett',                                                      0, 8, '2022-03-15', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('avvikSomFoelgeAvElektriskeProblemerEllerEksplosjonEllerBrann',        0, 8, '2022-03-15', null, 2800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('avvikSomFoelgeAvLekkasjeEllerOversvoemmelse',                         0, 8, '2022-03-15', null, 2900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('avvikSomFoelgeAvGassutslippEllerKjemikalierEllerStoevEllerPartikler', 0, 8, '2022-03-15', null, 3000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('materialsvikt',                                                       0, 8, '2022-03-15', null, 2000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fallendeObjekt',                                                      0, 8, '2022-03-15', null, 2200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sviktIUnderlag',                                                      0, 8, '2022-03-15', null, 2100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('glidningEllerSnubling',                                               0, 8, '2022-03-15', null, 2300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fallFraEgenHoeyde',                                                   0, 8, '2022-03-15', null, 2400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fallAvPersonTilLavereNivaa',                                          0, 8, '2022-03-15', null, 2500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kroppsbevegelseUtenFysiskBelastning',                                 0, 8, '2022-03-15', null, 2600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kroppsbevegelseMedFysiskBelastning',                                  0, 8, '2022-03-15', null, 2700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('tilstedeVedVoldEllerAggresjonEllerTrussel',                           0, 8, '2022-03-15', null, 3200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',                                             0, 8, '2022-03-15', null, 3300);

-- Kategori Lærling / Type 'Hva var bakgrunnen for hendelsen'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('manglendeMerkingEllerVarsling',                                       3, 8, '2022-03-29', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('mangelfulleSikkerhetsrutiner',                                        3, 8, '2022-03-29', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('utilstrekkeligSikring',                                               3, 8, '2022-03-29', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('vernetiltakIkkeGjennomfoert',                                         3, 8, '2022-03-29', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('verneutstyrUtAvFunksjon',                                             3, 8, '2022-03-29', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('verneutstyrFjernet',                                                  3, 8, '2022-03-29', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('uautorisertBrukAvUtstyr',                                             3, 8, '2022-03-29', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('defektUtstyr',                                                        3, 8, '2022-03-29', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilBrukEllerTapAvKontrollOverMaskinEllerTransportmiddel',            3, 8, '2022-03-29', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilBrukEllerTapAvKontrollAvHaandholdtVerktoeyEllerAnnenGjenstand',   3, 8, '2022-03-29', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('tapAvKontrollOverDyr',                                                3, 8, '2022-03-29', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilPaalasting',                                                      3, 8, '2022-03-29', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilPlassering',                                                      3, 8, '2022-03-29', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilLoefting',                                                        3, 8, '2022-03-29', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('feilUtfoerelseAvOppgaven',                                            3, 8, '2022-03-29', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('mangelfullOpplaering',                                                3, 8, '2022-03-29', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('angrepetEllerTruetAvEnPerson',                                        3, 8, '2022-03-29', null, 3100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('uforsvarligLekEllerSpoekEllerVeddemaal',                              3, 8, '2022-03-29', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paavirkningAvAlkoholEllerAndreRusmidler',                             3, 8, '2022-03-29', null, 1900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('bedriftsidrett',                                                      3, 8, '2022-03-29', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('avvikSomFoelgeAvElektriskeProblemerEllerEksplosjonEllerBrann',        3, 8, '2022-03-29', null, 2800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('avvikSomFoelgeAvLekkasjeEllerOversvoemmelse',                         3, 8, '2022-03-29', null, 2900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('avvikSomFoelgeAvGassutslippEllerKjemikalierEllerStoevEllerPartikler', 3, 8, '2022-03-29', null, 3000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('materialsvikt',                                                       3, 8, '2022-03-29', null, 2000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fallendeObjekt',                                                      3, 8, '2022-03-29', null, 2200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sviktIUnderlag',                                                      3, 8, '2022-03-29', null, 2100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('glidningEllerSnubling',                                               3, 8, '2022-03-29', null, 2300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fallFraEgenHoeyde',                                                   3, 8, '2022-03-29', null, 2400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fallAvPersonTilLavereNivaa',                                          3, 8, '2022-03-29', null, 2500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kroppsbevegelseUtenFysiskBelastning',                                 3, 8, '2022-03-29', null, 2600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kroppsbevegelseMedFysiskBelastning',                                  3, 8, '2022-03-29', null, 2700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('tilstedeVedVoldEllerAggresjonEllerTrussel',                           3, 8, '2022-03-29', null, 3200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',                                             3, 8, '2022-03-29', null, 3300);


-- Verdier for type 'Hva var bakgrunnen for hendelsen'
INSERT INTO verdi (kode, spraak, verdi) VALUES ('manglendeMerkingEllerVarsling',                                       'nb', 'Manglende merking, varsling, skilting');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('mangelfulleSikkerhetsrutiner',                                        'nb', 'Mangelfulle sikkerhetsrutiner');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('utilstrekkeligSikring',                                               'nb', 'Utilstrekkelig sikring');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('vernetiltakIkkeGjennomfoert',                                         'nb', 'Vernetiltak kun delvis eller ikke gjennomført');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('verneutstyrUtAvFunksjon',                                             'nb', 'Verneutstyr satt ut av funksjon');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('verneutstyrFjernet',                                                  'nb', 'Verneutstyr fjernet');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('uautorisertBrukAvUtstyr',                                             'nb', 'Uautorisert bruk av utstyr');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('defektUtstyr',                                                        'nb', 'Defekt utstyr');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('feilBrukEllerTapAvKontrollOverMaskinEllerTransportmiddel',            'nb', 'Feil bruk eller tap av kontroll over maskin eller transportmiddel.');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('feilBrukEllerTapAvKontrollAvHaandholdtVerktoeyEllerAnnenGjenstand',   'nb', 'Feil bruk eller tap av kontroll av håndholdt verktøy eller annen gjenstand.');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('tapAvKontrollOverDyr',                                                'nb', 'Tap av kontroll over dyr.');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('feilPaalasting',                                                      'nb', 'Feil pålasting');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('feilPlassering',                                                      'nb', 'Feil plassering');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('feilLoefting',                                                        'nb', 'Feil løfting');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('feilUtfoerelseAvOppgaven',                                            'nb', 'Feil utførelse av oppgaven');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('mangelfullOpplaering',                                                'nb', 'Mangelfull opplæring');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('angrepetEllerTruetAvEnPerson',                                        'nb', 'Angrepet eller truet av en annen person');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('uforsvarligLekEllerSpoekEllerVeddemaal',                              'nb', 'Uforsvarlig «lek», spøk eller veddemål');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('paavirkningAvAlkoholEllerAndreRusmidler',                             'nb', 'Påvirkning av alkohol eller andre rusmidler');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bedriftsidrett',                                                      'nb', 'Bedriftsidrett eller lignende');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('avvikSomFoelgeAvElektriskeProblemerEllerEksplosjonEllerBrann',        'nb', 'Avvik som følge av elektriske problemer, eksplosjon, brann');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('avvikSomFoelgeAvLekkasjeEllerOversvoemmelse',                         'nb', 'Avvik som følge av lekkasje eller oversvømmelse');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('avvikSomFoelgeAvGassutslippEllerKjemikalierEllerStoevEllerPartikler', 'nb', 'Avvik som følge av gassutslipp, kjemikalier, støv eller partikler');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('materialsvikt',                                                       'nb', 'Materialsvikt');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fallendeObjekt',                                                      'nb', 'Fallende objekt');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sviktIUnderlag',                                                      'nb', 'Svikt i underlag');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('glidningEllerSnubling',                                               'nb', 'Glidning eller snubling');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fallFraEgenHoeyde',                                                   'nb', 'Fall fra egen høyde');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fallAvPersonTilLavereNivaa',                                          'nb', 'Fall av person til lavere nivå');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kroppsbevegelseUtenFysiskBelastning',                                 'nb', 'Kroppsbevegelse uten fysisk belastning');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kroppsbevegelseMedFysiskBelastning',                                  'nb', 'Kroppsbevegelse med fysisk belastning');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('tilstedeVedVoldEllerAggresjonEllerTrussel',                           'nb', 'Tilstedeværelse ved vold, aggresjon, trussel');
