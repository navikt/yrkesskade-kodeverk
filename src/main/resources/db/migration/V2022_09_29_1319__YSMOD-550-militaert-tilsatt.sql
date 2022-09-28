-- Militært tilsatt --

UPDATE kode SET kode = 'militaerTilsatt', gyldig_fra = '2022-09-29' where kode = 'militaerArbeidstaker';
UPDATE verdi SET kode = 'militaerTilsatt', verdi = 'Militært tilsatt' where kode = 'militaerArbeidstaker' and spraak = 'nb';
UPDATE type_kode SET kode = 'militaerTilsatt' where kode = 'militaerArbeidstaker';

INSERT INTO kategori (navn, beskrivelse) VALUES ('militaerTilsatt', 'Militært tilsatt');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('militaerTilsatt', 'tidsrom');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('militaerTilsatt', 'hvorSkjeddeUlykken');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('militaerTilsatt', 'aarsakOgBakgrunn');

-- Nye tidsrom koder --
INSERT INTO kode (kode, gyldig_fra) VALUES ('iSpisepausePaaArbeidsstedet', '2022-09-28');
INSERT INTO kode (kode, gyldig_fra) VALUES ('iSpisepauseUtenforArbeidsstedet', '2022-09-28');

INSERT INTO verdi (kode, spraak, verdi) VALUES ('iSpisepausePaaArbeidsstedet', 'nb', 'I spisepause på arbeidsstedet');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('iSpisepauseUtenforArbeidsstedet', 'nb', 'I spisepause utenfor arbeidsstedet');

-- Tidsrom --
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerTilsatt', 'tidsrom', 'iAvtaltArbeidstid', 1000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerTilsatt', 'tidsrom', 'utenforArbeidstid', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerTilsatt', 'tidsrom', 'underPermisjon', 3000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerTilsatt', 'tidsrom', 'underFullSykemelding', 4000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerTilsatt', 'tidsrom', 'fritidEllerPrivatAktivitet', 5000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerTilsatt', 'tidsrom', 'hvilendeVakt', 6000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerTilsatt', 'tidsrom', 'iSpisepausePaaArbeidsstedet', 7000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerTilsatt', 'tidsrom', 'iSpisepauseUtenforArbeidsstedet', 8000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerTilsatt', 'tidsrom', 'alternativenePasserIkke', 10000);

-- Ny hvorSkjeddeUlykke koder --
INSERT INTO kode (kode, gyldig_fra) VALUES ('omBordIskip100BrRegistertonn', '2022-09-28');
INSERT INTO kode (kode, gyldig_fra) VALUES ('omBordIAnnetFartøy', '2022-09-28');

INSERT INTO verdi (kode, spraak, verdi) VALUES ('omBordIskip100BrRegistertonn', 'nb', 'Om bord i skip over 100 bruttoregistertonn');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('omBordIAnnetFartøy', 'nb', 'Om bord i annet fartøy');

-- Hvor skjedde ulykken --
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'militaerTilsatt', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'hvorSkjeddeUlykken';
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerTilsatt', 'hvorSkjeddeUlykken', 'omBordIskip100BrRegistertonn',
    (select count (*) * 1000 - 1000 from kategori_type_kode where kategori_navn = 'militiaerTilsatt' and type_navn = 'hvorSkjeddeUlykken'));
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('militaerTilsatt', 'hvorSkjeddeUlykken', 'omBordIAnnetFartøy',
    (select count (*) * 1000 - 1000 from kategori_type_kode where kategori_navn = 'militiaerTilsatt' and type_navn = 'hvorSkjeddeUlykken'));
UPDATE kategori_type_kode SET sortering = (select count (*) * 2000 from kategori_type_kode where kategori_navn = 'militiaerTilsatt' and type_navn = 'hvorSkjeddeUlykken')
    WHERE kategori_navn = 'militaerTilsatt' AND type_navn = 'hvorSkjeddeUlykken' AND kode = 'alternativenePasserIkke';

-- Årsak og bakgrunn --
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'militaerTilsatt', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'aarsakOgBakgrunn';