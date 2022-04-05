-- Kategori Lærling / Type Alvorlighetsgrad
INSERT INTO kategori_type (kategori_id, type_id) VALUES (3, 1);
-- Kategori Elev/Student / Type Alvorlighetsgrad
INSERT INTO kategori_type (kategori_id, type_id) VALUES (2, 1);


-- Kategori Arbeidstaker / Type Alvorlighetsgrad
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('antattIkkeOppsoektLege',      0, 1, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('antattOppsoektLege',          0, 1, '2022-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alvorligKreftsykdom',         0, 1, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('livstruendeSykdomEllerSkade', 0, 1, '2022-03-15', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('innmeldtDoedsfall',           0, 1, '2022-03-15', null, 500);

-- Kategori Lærling / Type Alvorlighetsgrad
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('antattIkkeOppsoektLege',      3, 1, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('antattOppsoektLege',          3, 1, '2022-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alvorligKreftsykdom',         3, 1, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('livstruendeSykdomEllerSkade', 3, 1, '2022-03-15', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('innmeldtDoedsfall',           3, 1, '2022-03-15', null, 500);

-- Kategori Elev/Student / Type Alvorlighetsgrad
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('antattIkkeOppsoektLege',      2, 1, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('antattOppsoektLege',          2, 1, '2022-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('alvorligKreftsykdom',         2, 1, '2022-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('livstruendeSykdomEllerSkade', 2, 1, '2022-03-15', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('innmeldtDoedsfall',           2, 1, '2022-03-15', null, 500);

-- Verdier for type Alvorlighetsgrad
INSERT INTO verdi (kode, spraak, verdi) VALUES ('antattIkkeOppsoektLege',      'nb', 'Det antas at helsehjelp ikke er oppsøkt');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('antattOppsoektLege',          'nb', 'Det antas at helsehjelp er oppsøkt');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('alvorligKreftsykdom',         'nb', 'Alvorlig kreftsykdom');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('livstruendeSykdomEllerSkade', 'nb', 'Livstruende sykdom/skade');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('innmeldtDoedsfall',           'nb', 'Dødsfall');
