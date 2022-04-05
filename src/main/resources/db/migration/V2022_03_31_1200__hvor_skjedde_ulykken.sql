-- Ny type
INSERT INTO type (type_id, navn, beskrivelse) VALUES (2, 'hvorSkjeddeUlykken', 'Hvor skjedde ulykken');

-- Kategori Arbeidstaker / Type 'Hvor skjedde ulykken'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (0, 2);
-- Kategori Lærling / Type 'Hvor skjedde ulykken'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (3, 2);
-- Kategori Elev/Student / Type 'Hvor skjedde ulykken'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (2, 2);


-- Kategori Arbeidstaker / Type 'Hvor skjedde ulykken'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidsstedInne',                     0, 2, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidsstedUte',                      0, 2, '2022-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidsstedLukketOmraade',            0, 2, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paaVeiTilEllerFraArbeidssted',        0, 2, '2022-03-15', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kommetFremTilMidlertidigArbeidssted', 0, 2, '2022-03-15', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('transportIArbeidsgiversRegi',         0, 2, '2022-03-31', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paaVeiMellomArbeidssteder',           0, 2, '2022-03-15', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('offentligSted' ,                      0, 2, '2022-03-15', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('avtaltHjemmekontor',                  0, 2, '2022-03-15', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',             0, 2, '2022-03-15', null, 1000);

-- Kategori Lærling / Type 'Hvor skjedde ulykken'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidsstedInne',                     3, 2, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidsstedUte',                      3, 2, '2022-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidsstedLukketOmraade',            3, 2, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paaVeiTilEllerFraArbeidssted',        3, 2, '2022-03-15', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kommetFremTilMidlertidigArbeidssted', 3, 2, '2022-03-15', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('transportIArbeidsgiversRegi',         3, 2, '2022-03-31', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paaVeiMellomArbeidssteder',           3, 2, '2022-03-15', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('offentligSted' ,                      3, 2, '2022-03-15', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('avtaltHjemmekontor',                  3, 2, '2022-03-15', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',             3, 2, '2022-03-15', null, 1000);

-- Kategori Elev/Student / Type 'Hvor skjedde ulykken'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('undervisningstedInne',               2, 2, '2022-04-20', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('undervisningsstedUte',               2, 2, '2022-04-20', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sfoEllerAks',                        2, 2, '2022-04-20', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paaVeiTilEllerFraUndervisningssted', 2, 2, '2022-04-20', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paalagtHjemmeskole',                 2, 2, '2022-04-20', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('transportISkolensRegi',              2, 2, '2022-04-20', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('arrangementISkolensRegi',            2, 2, '2022-04-20', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('paaInternatskole',                   2, 2, '2022-04-20', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('omBordISkoleskip',                   2, 2, '2022-04-20', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke',            2, 2, '2022-04-20', null, 1000);

-- Verdier for type 'Hvor skjedde ulykken'
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arbeidsstedInne',                     'nb', 'På arbeidsstedet inne');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arbeidsstedUte',                      'nb', 'På arbeidsstedet ute');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arbeidsstedLukketOmraade',            'nb', 'På arbeidsstedet lukket område');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('paaVeiTilEllerFraArbeidssted',        'nb', 'På vei til/fra arbeidsstedet');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kommetFremTilMidlertidigArbeidssted', 'nb', 'Kommet frem til/ på midlertidig arbeidsstedet');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('transportIArbeidsgiversRegi',         'nb', 'Transport i arbeidsgivers regi');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('paaVeiMellomArbeidssteder',           'nb', 'På vei mellom arbeidssteder');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('offentligSted',                       'nb', 'Offentlig sted');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('avtaltHjemmekontor',                  'nb', 'Avtalt hjemmekontor');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('undervisningstedInne',                'nb', 'På undervisningsstedet inne');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('undervisningsstedUte',                'nb', 'På undervisningsstedet ute');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sfoEllerAks',                         'nb', 'På SFO/AKS');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('paaVeiTilEllerFraUndervisningssted',  'nb', 'På vei til/fra undervisningssted');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('paalagtHjemmeskole',                  'nb', 'Pålagt hjemmeskole');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('transportISkolensRegi',               'nb', 'Under transport i skolens regi');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arrangementISkolensRegi',             'nb', 'På arrangement i skolens regi');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('paaInternatskole',                    'nb', 'På internatskole');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('omBordISkoleskip',                    'nb', 'Om bord i skoleskip');
