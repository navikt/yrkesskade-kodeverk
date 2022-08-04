-- Kodelisten 'Hvilken type arbeidsplass er det':

-- Ny verdi
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('parkEllerBotaniskHageEllerDyrehage', '2022-08-04', null);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('arbeidstaker',    'typeArbeidsplass', 'parkEllerBotaniskHageEllerDyrehage', 1200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('laerling',        'typeArbeidsplass', 'parkEllerBotaniskHageEllerDyrehage', 1200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('tiltaksdeltaker', 'typeArbeidsplass', 'parkEllerBotaniskHageEllerDyrehage', 1200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('parkEllerBotaniskHageEllerDyrehage', 'nb', 'Park, botanisk hage eller dyrehage');

-- Juster tekster
UPDATE verdi set verdi = 'Museum eller fornøyelsespark' where kode = 'museumEllerFornoeyelsespark' and spraak = 'nb';
UPDATE verdi set verdi = 'I luften over bakkenivå på tak, terrasser eller heiser eksklusive anleggsområder' where kode = 'iLuftenOverBakkenivaaPaaTakEllerTerrasserEllerHeis' and spraak = 'nb';
UPDATE verdi set verdi = 'I luften, fly eller helikopter eksklusive anleggsområder' where kode = 'iLuftenIFlyEllerHelikopter' and spraak = 'nb';
UPDATE verdi set verdi = 'Under jordoverflaten, grøfter, tuneller eller gruve eksklusive anleggsområder' where kode = 'underJordoverflatenIGroeftEllerTunellEllerGruve' and spraak = 'nb';
UPDATE verdi set verdi = 'På eller over vann eksklusive anleggsområder' where kode = 'paaEllerOverVann' and spraak = 'nb';
UPDATE verdi set verdi = 'I høytrykksomgivelser, dykking og dykkerkammer eksklusive anleggsområder' where kode = 'iHoeytrykksomgivelserEllerDykkingEllerDykkerkammer' and spraak = 'nb';

-- Juster sortering
UPDATE kategori_type_kode set sortering = 1300 where type_navn = 'typeArbeidsplass' and kode = 'idrettsomraade';
UPDATE kategori_type_kode set sortering = 1400 where type_navn = 'typeArbeidsplass' and kode = 'offentligSted';
UPDATE kategori_type_kode set sortering = 1500 where type_navn = 'typeArbeidsplass' and kode = 'offentligeTransportmidler';
UPDATE kategori_type_kode set sortering = 1600 where type_navn = 'typeArbeidsplass' and kode = 'iLuftenIFlyEllerHelikopter';
UPDATE kategori_type_kode set sortering = 1700 where type_navn = 'typeArbeidsplass' and kode = 'iHoeytrykksomgivelserEllerDykkingEllerDykkerkammer';
UPDATE kategori_type_kode set sortering = 1800 where type_navn = 'typeArbeidsplass' and kode = 'fiskeoppdrett';
UPDATE kategori_type_kode set sortering = 1900 where type_navn = 'typeArbeidsplass' and kode = 'jordbrukEllerAvlAvDyrEllerSkogbruk';
UPDATE kategori_type_kode set sortering = 2000 where type_navn = 'typeArbeidsplass' and kode = 'privateHjem';
UPDATE kategori_type_kode set sortering = 2100 where type_navn = 'typeArbeidsplass' and kode = 'alternativenePasserIkke';




-- Kodelisten 'Beskriv årsak til hendelsen og bakgrunn for årsak':

-- Nye verdier
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('oppskraptEllerStukketAvGrovtMateriale', '2022-08-04', null);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('arbeidstaker',     'aarsakOgBakgrunn', 'oppskraptEllerStukketAvGrovtMateriale', 200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('laerling',         'aarsakOgBakgrunn', 'oppskraptEllerStukketAvGrovtMateriale', 200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('elevEllerStudent', 'aarsakOgBakgrunn', 'oppskraptEllerStukketAvGrovtMateriale', 200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('tiltaksdeltaker',  'aarsakOgBakgrunn', 'oppskraptEllerStukketAvGrovtMateriale', 200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('oppskraptEllerStukketAvGrovtMateriale', 'nb', 'Oppskrapt eller stukket av et grovt materiale');

INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('skremtAvDyr', '2022-08-04', null);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('arbeidstaker',     'aarsakOgBakgrunn', 'skremtAvDyr', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('laerling',         'aarsakOgBakgrunn', 'skremtAvDyr', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('elevEllerStudent', 'aarsakOgBakgrunn', 'skremtAvDyr', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('tiltaksdeltaker',  'aarsakOgBakgrunn', 'skremtAvDyr', 2000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('skremtAvDyr', 'nb', 'Skremt av dyr');

INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('fareEtterAtUvedkommendeBryterEnSikkerhetssone', '2022-08-04', null);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('arbeidstaker',     'aarsakOgBakgrunn', 'fareEtterAtUvedkommendeBryterEnSikkerhetssone', 2100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('laerling',         'aarsakOgBakgrunn', 'fareEtterAtUvedkommendeBryterEnSikkerhetssone', 2100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('elevEllerStudent', 'aarsakOgBakgrunn', 'fareEtterAtUvedkommendeBryterEnSikkerhetssone', 2100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('tiltaksdeltaker',  'aarsakOgBakgrunn', 'fareEtterAtUvedkommendeBryterEnSikkerhetssone', 2100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fareEtterAtUvedkommendeBryterEnSikkerhetssone', 'nb', 'Fare etter at uvedkommende bryter en sikkerhetssone');

-- Juster tekster
UPDATE verdi set verdi = 'Støt/treff av gjenstand (Gjenstand i bevegelse)' where kode = 'stoetEllerTreffAvGjenstand' and spraak = 'nb';
UPDATE verdi set verdi = 'Sammenstøt med gjenstand eller påkjørsel (Person i bevegelse)' where kode = 'sammenstoetMedGjenstandEllerPaakjoersel' and spraak = 'nb';

-- Juster sortering
UPDATE kategori_type_kode set sortering = 100  where type_navn = 'aarsakOgBakgrunn' and kode = 'stukketEllerKuttet';
UPDATE kategori_type_kode set sortering = 200  where type_navn = 'aarsakOgBakgrunn' and kode = 'oppskraptEllerStukketAvGrovtMateriale';
UPDATE kategori_type_kode set sortering = 300  where type_navn = 'aarsakOgBakgrunn' and kode = 'stoetEllerTreffAvGjenstand';
UPDATE kategori_type_kode set sortering = 400  where type_navn = 'aarsakOgBakgrunn' and kode = 'sammenstoetMedGjenstandEllerPaakjoersel';
UPDATE kategori_type_kode set sortering = 500  where type_navn = 'aarsakOgBakgrunn' and kode = 'sammenstoetEllerBittEllerSpark';
UPDATE kategori_type_kode set sortering = 600  where type_navn = 'aarsakOgBakgrunn' and kode = 'trafikkulykke';
UPDATE kategori_type_kode set sortering = 700  where type_navn = 'aarsakOgBakgrunn' and kode = 'fallAvPerson';
UPDATE kategori_type_kode set sortering = 800  where type_navn = 'aarsakOgBakgrunn' and kode = 'velt';
UPDATE kategori_type_kode set sortering = 900  where type_navn = 'aarsakOgBakgrunn' and kode = 'klemtEllerFanget';
UPDATE kategori_type_kode set sortering = 1000 where type_navn = 'aarsakOgBakgrunn' and kode = 'druknetEllerBegravdEllerOmsvoept';
UPDATE kategori_type_kode set sortering = 1100 where type_navn = 'aarsakOgBakgrunn' and kode = 'brann';
UPDATE kategori_type_kode set sortering = 1200 where type_navn = 'aarsakOgBakgrunn' and kode = 'eksplosjonEllerSprenging';
UPDATE kategori_type_kode set sortering = 1300 where type_navn = 'aarsakOgBakgrunn' and kode = 'kontaktMedKjemikalierEllerFarligeStoffer';
UPDATE kategori_type_kode set sortering = 1400 where type_navn = 'aarsakOgBakgrunn' and kode = 'kontaktMedElektriskSpenning';
UPDATE kategori_type_kode set sortering = 1500 where type_navn = 'aarsakOgBakgrunn' and kode = 'hoeyTemperatur';
UPDATE kategori_type_kode set sortering = 1600 where type_navn = 'aarsakOgBakgrunn' and kode = 'lavTemperatur';
UPDATE kategori_type_kode set sortering = 1700 where type_navn = 'aarsakOgBakgrunn' and kode = 'paafoertVoldsskade';
UPDATE kategori_type_kode set sortering = 1800 where type_navn = 'aarsakOgBakgrunn' and kode = 'truslerOmVold';
UPDATE kategori_type_kode set sortering = 1900 where type_navn = 'aarsakOgBakgrunn' and kode = 'fysiskEllerPsykiskBelastning';
UPDATE kategori_type_kode set sortering = 2000 where type_navn = 'aarsakOgBakgrunn' and kode = 'skremtAvDyr';
UPDATE kategori_type_kode set sortering = 2100 where type_navn = 'aarsakOgBakgrunn' and kode = 'fareEtterAtUvedkommendeBryterEnSikkerhetssone';
UPDATE kategori_type_kode set sortering = 2200 where type_navn = 'aarsakOgBakgrunn' and kode = 'alternativenePasserIkke';




-- Kodelisten 'Hva slags skade er det':

-- Nye verdier
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('straaleskade', '2022-08-04', null);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('arbeidstaker',     'skadetype', 'straaleskade', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('laerling',         'skadetype', 'straaleskade', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('elevEllerStudent', 'skadetype', 'straaleskade', 2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('tiltaksdeltaker',  'skadetype', 'straaleskade', 2000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('straaleskade', 'nb', 'Stråleskade');

INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('barotraume', '2022-08-04', null);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('arbeidstaker',     'skadetype', 'barotraume', 2100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('laerling',         'skadetype', 'barotraume', 2100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('elevEllerStudent', 'skadetype', 'barotraume', 2100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('tiltaksdeltaker',  'skadetype', 'barotraume', 2100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('barotraume', 'nb', 'Barotraume');

INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('drukning', '2022-08-04', null);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('arbeidstaker',     'skadetype', 'drukning', 1800);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('laerling',         'skadetype', 'drukning', 1800);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('elevEllerStudent', 'skadetype', 'drukning', 1800);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('tiltaksdeltaker',  'skadetype', 'drukning', 1800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('drukning', 'nb', 'Drukning');

INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('kvelning', '2022-08-04', null);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('arbeidstaker',     'skadetype', 'kvelning', 1900);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('laerling',         'skadetype', 'kvelning', 1900);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('elevEllerStudent', 'skadetype', 'kvelning', 1900);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('tiltaksdeltaker',  'skadetype', 'kvelning', 1900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kvelning', 'nb', 'Kvelning');

-- Juster sortering
UPDATE kategori_type_kode set sortering = 2200 where type_navn = 'skadetype' and kode = 'nedsattAllmenntilstand';
UPDATE kategori_type_kode set sortering = 2300 where type_navn = 'skadetype' and kode = 'alternativenePasserIkke';

