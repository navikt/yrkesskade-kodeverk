DELETE FROM kode WHERE kode = 'idrettsområde'                                     AND kategori_id = 4 AND type_id = 7 AND gyldig_fra = '2022-04-07';
DELETE FROM kode WHERE kode = 'iLuftenOverBakkenivaaPaaTakEllerTerasserEllerHeis' AND kategori_id = 4 AND type_id = 7 AND gyldig_fra = '2022-04-07';

-- Korrigerte kodenavn
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('idrettsomraade',                                     4, 7, '2022-04-07', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('iLuftenOverBakkenivaaPaaTakEllerTerrasserEllerHeis', 4, 7, '2022-04-07', null, 300);
