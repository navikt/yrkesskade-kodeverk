-- Ny type
INSERT INTO type (type_id, navn, beskrivelse) VALUES (5, 'skadetype', 'Hva slag skade er det');

-- Kategori Arbeidstaker / Type 'Hva slag skade er det'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (0, 5);
-- Kategori Lærling / Type 'Hva slag skade er det'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (3, 5);
-- Kategori Elev/Student / Type 'Hva slag skade er det'
INSERT INTO kategori_type (kategori_id, type_id) VALUES (2, 5);


-- Kategori Arbeidstaker / Type 'Hva slag skade er det'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('bloetdelsskadeUtenSaar',  0, 5, '2022-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('saarskade',               0, 5, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('tapAvLegemsdel',          0, 5, '2022-03-15', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('forstuingOgForvridning',  0, 5, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('bruddskade',              0, 5, '2022-03-15', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('varmeskade',              0, 5, '2022-03-15', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kuldeskade',              0, 5, '2022-03-15', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('etsing',                  0, 5, '2022-03-15', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('akuttForgifning',         0, 5, '2022-03-15', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('psykiskeEttervirkninger', 0, 5, '2022-03-15', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('indreSkade',              0, 5, '2022-03-15', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('akustiskSjokk',           0, 5, '2022-03-15', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('oeyeskade',               0, 5, '2022-03-15', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('knusningsSkade',          0, 5, '2022-03-15', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('traumatiskSjokk',         0, 5, '2022-03-15', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sjokkEtterAggresjon',     0, 5, '2022-03-15', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('infeksjon',               0, 5, '2022-03-15', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('nedsattAllmenntilstand',  0, 5, '2022-03-15', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke', 0, 5, '2022-03-15', null, 1900);

-- Kategori Lærling / Type 'Hva slag skade er det'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('bloetdelsskadeUtenSaar',  3, 5, '2022-03-29', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('saarskade',               3, 5, '2022-03-29', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('tapAvLegemsdel',          3, 5, '2022-03-29', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('forstuingOgForvridning',  3, 5, '2022-03-29', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('bruddskade',              3, 5, '2022-03-29', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('varmeskade',              3, 5, '2022-03-29', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kuldeskade',              3, 5, '2022-03-29', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('etsing',                  3, 5, '2022-03-29', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('akuttForgifning',         3, 5, '2022-03-29', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('psykiskeEttervirkninger', 3, 5, '2022-03-29', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('indreSkade',              3, 5, '2022-03-29', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('akustiskSjokk',           3, 5, '2022-03-29', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('oeyeskade',               3, 5, '2022-03-29', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('knusningsSkade',          3, 5, '2022-03-29', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('traumatiskSjokk',         3, 5, '2022-03-29', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sjokkEtterAggresjon',     3, 5, '2022-03-29', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('infeksjon',               3, 5, '2022-03-29', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('nedsattAllmenntilstand',  3, 5, '2022-03-29', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke', 3, 5, '2022-03-29', null, 1900);

-- Kategori Elev/Student / Type 'Hva slag skade er det'
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('bloetdelsskadeUtenSaar',  2, 5, '2022-04-01', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('saarskade',               2, 5, '2022-04-01', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('tapAvLegemsdel',          2, 5, '2022-04-01', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('forstuingOgForvridning',  2, 5, '2022-04-01', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('bruddskade',              2, 5, '2022-04-01', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('varmeskade',              2, 5, '2022-04-01', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('kuldeskade',              2, 5, '2022-04-01', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('etsing',                  2, 5, '2022-04-01', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('akuttForgifning',         2, 5, '2022-04-01', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('psykiskeEttervirkninger', 2, 5, '2022-04-01', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('indreSkade',              2, 5, '2022-04-01', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('akustiskSjokk',           2, 5, '2022-04-01', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('oeyeskade',               2, 5, '2022-04-01', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('knusningsSkade',          2, 5, '2022-04-01', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('traumatiskSjokk',         2, 5, '2022-04-01', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('sjokkEtterAggresjon',     2, 5, '2022-04-01', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('infeksjon',               2, 5, '2022-04-01', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('nedsattAllmenntilstand',  2, 5, '2022-04-01', null, 1800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alternativenePasserIkke', 2, 5, '2022-04-01', null, 1900);

-- Verdier for type 'Hva slag skade er det'
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bloetdelsskadeUtenSaar',  'nb', 'Bløtdelsskade uten sår (klemskade)');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('saarskade',               'nb', 'Sårskade');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('tapAvLegemsdel',          'nb', 'Tap av legemsdel');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('forstuingOgForvridning',  'nb', 'Forstuing, forvridning');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bruddskade',              'nb', 'Bruddskade');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('varmeskade',              'nb', 'Varmeskade');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kuldeskade',              'nb', 'Kuldeskade');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('etsing',                  'nb', 'Etsing');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('akuttForgifning',         'nb', 'Akutt forgiftning');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('psykiskeEttervirkninger', 'nb', 'Psykiske ettervirkninger');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('indreSkade',              'nb', 'Indre skade');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('akustiskSjokk',           'nb', 'Akustisk sjokk');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('oeyeskade',               'nb', 'Øyeskade');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('knusningsSkade',          'nb', 'Knusningsskade');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('traumatiskSjokk',         'nb', 'Traumatisk sjokk');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sjokkEtterAggresjon',     'nb', 'Sjokk etter aggresjon');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('infeksjon',               'nb', 'Infeksjon');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('nedsattAllmenntilstand',  'nb', 'Nedsatt allmenntilstand');
