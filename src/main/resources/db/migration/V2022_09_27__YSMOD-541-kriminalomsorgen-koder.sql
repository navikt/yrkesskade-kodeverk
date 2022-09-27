-- Kriminalomsorg --

-- Rolletyper --
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('personSomUtfoererSamfunnsstraff', '2024-03-15', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('personIVaretekt', '2024-03-15', null);

INSERT INTO type_kode (type_navn, kode) VALUES ('rolletype','personSomUtfoererSamfunnsstraff');
INSERT INTO type_kode (type_navn, kode) VALUES ('rolletype','personIVaretekt');

INSERT INTO verdi (kode, spraak, verdi) VALUES ('personSomUtfoererSamfunnsstraff', 'nb', 'Person som utfører samfunnsstraff');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('personIVaretekt', 'nb', 'Person i varetekt');

-- Kategorier --
INSERT INTO kategori (navn, beskrivelse) VALUES ('innsatt','Innsatt');
INSERT INTO kategori (navn, beskrivelse) VALUES ('personSomUtfoererSamfunnsstraff', 'Person som utfører samfunnsstraff');
INSERT INTO kategori (navn, beskrivelse) VALUES ('personIVaretekt', 'Person i varetekt');

-- Tidsrom --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('innsatt', 'tidsrom');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('personSomUtfoererSamfunnsstraff', 'tidsrom');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('personIVaretekt', 'tidsrom');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('innsatt', 'tidsrom', 'iAvtaltArbeidstid', 1000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('innsatt', 'tidsrom', 'utenforArbeidstid', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('innsatt', 'tidsrom', 'underPermisjon', 6000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('innsatt', 'tidsrom', 'alternativenePasserIkke', 9000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('innsatt', 'tidsrom', 'iUndervisningstid', 3000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('innsatt', 'tidsrom', 'utenforUndervisningstid', 4000);

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personSomUtfoererSamfunnsstraff', 'tidsrom', 'iAvtaltArbeidstid', 1000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personSomUtfoererSamfunnsstraff', 'tidsrom', 'utenforArbeidstid', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personSomUtfoererSamfunnsstraff', 'tidsrom', 'underPermisjon', 6000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personSomUtfoererSamfunnsstraff', 'tidsrom', 'alternativenePasserIkke', 9000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personSomUtfoererSamfunnsstraff', 'tidsrom', 'iUndervisningstid', 3000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personSomUtfoererSamfunnsstraff', 'tidsrom', 'utenforUndervisningstid', 4000);

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personIVaretekt', 'tidsrom', 'iAvtaltArbeidstid', 1000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personIVaretekt', 'tidsrom', 'utenforArbeidstid', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personIVaretekt', 'tidsrom', 'underPermisjon', 6000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personIVaretekt', 'tidsrom', 'alternativenePasserIkke', 9000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personIVaretekt', 'tidsrom', 'iUndervisningstid', 3000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personIVaretekt', 'tidsrom', 'utenforUndervisningstid', 4000);

-- Alvorlighetsgrad --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('innsatt', 'alvorlighetsgrad');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('personSomUtfoererSamfunnsstraff', 'alvorlighetsgrad');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('personIVaretekt', 'alvorlighetsgrad');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
    SELECT 'innsatt', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'alvorlighetsgrad';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
    SELECT 'personSomUtfoererSamfunnsstraff', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'alvorlighetsgrad';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
    SELECT 'personIVaretekt', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'alvorlighetsgrad';

-- Hvor skjedde ulykken --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('innsatt', 'hvorSkjeddeUlykken');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('personSomUtfoererSamfunnsstraff', 'hvorSkjeddeUlykken');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('personIVaretekt', 'hvorSkjeddeUlykken');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('innsatt', 'hvorSkjeddeUlykken', 'arbeidsstedInne', 1000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('innsatt', 'hvorSkjeddeUlykken', 'arbeidsstedUte', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('innsatt', 'hvorSkjeddeUlykken', 'undervisningstedInne', 5000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('innsatt', 'hvorSkjeddeUlykken', 'undervisningsstedUte', 6000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('innsatt', 'hvorSkjeddeUlykken', 'alternativenePasserIkke', 9000);

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personSomUtfoererSamfunnsstraff', 'hvorSkjeddeUlykken', 'arbeidsstedInne', 1000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personSomUtfoererSamfunnsstraff', 'hvorSkjeddeUlykken', 'arbeidsstedUte', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personSomUtfoererSamfunnsstraff', 'hvorSkjeddeUlykken', 'undervisningstedInne', 5000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personSomUtfoererSamfunnsstraff', 'hvorSkjeddeUlykken', 'undervisningsstedUte', 6000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personSomUtfoererSamfunnsstraff', 'hvorSkjeddeUlykken', 'alternativenePasserIkke', 9000);

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personIVaretekt', 'hvorSkjeddeUlykken', 'arbeidsstedInne', 1000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personIVaretekt', 'hvorSkjeddeUlykken', 'arbeidsstedUte', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personIVaretekt', 'hvorSkjeddeUlykken', 'undervisningstedInne', 5000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personIVaretekt', 'hvorSkjeddeUlykken', 'undervisningsstedUte', 6000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('personIVaretekt', 'hvorSkjeddeUlykken', 'alternativenePasserIkke', 9000);

-- Årsak og bakgrunn --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('innsatt', 'aarsakOgBakgrunn');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('personSomUtfoererSamfunnsstraff', 'aarsakOgBakgrunn');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('personIVaretekt', 'aarsakOgBakgrunn');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'innsatt', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'aarsakOgBakgrunn';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'personSomUtfoererSamfunnsstraff', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'aarsakOgBakgrunn';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'personIVaretekt', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'aarsakOgBakgrunn';

-- Bakgrunn for hendelsen
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('innsatt', 'bakgrunnForHendelsen');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('personSomUtfoererSamfunnsstraff', 'bakgrunnForHendelsen');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('personIVaretekt', 'bakgrunnForHendelsen');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'innsatt', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'bakgrunnForHendelsen';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'personSomUtfoererSamfunnsstraff', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'bakgrunnForHendelsen';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'personIVaretekt', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'bakgrunnForHendelsen';

-- Skadet kroppsdel --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('innsatt', 'skadetKroppsdel');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('personSomUtfoererSamfunnsstraff', 'skadetKroppsdel');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('personIVaretekt', 'skadetKroppsdel');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'innsatt', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetKroppsdel';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'personSomUtfoererSamfunnsstraff', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetKroppsdel';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'personIVaretekt', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetKroppsdel';

-- Skadetype --
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('innsatt', 'skadetype');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('personSomUtfoererSamfunnsstraff', 'skadetype');
INSERT INTO kategori_type (kategori_navn, type_navn) VALUES ('personIVaretekt', 'skadetype');

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'innsatt', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetype';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'personSomUtfoererSamfunnsstraff', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetype';

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering)
SELECT 'personIVaretekt', type_navn, kode, sortering FROM kategori_type_kode WHERE kategori_navn = 'arbeidstaker' AND type_navn = 'skadetype';