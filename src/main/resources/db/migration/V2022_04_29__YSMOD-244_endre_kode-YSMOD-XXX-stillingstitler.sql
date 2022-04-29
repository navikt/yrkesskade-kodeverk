-- YSMOD-244
INSERT INTO kode (kode, gyldig_fra, sortering) VALUES ('ikkeRelevant', '2022-03-15', 1000);
INSERT INTO verdi (kode, spraak, verdi) VALUES('ikkeRelevant', 'nb', 'Ikke relevant');
INSERT INTO type_kode (type_navn, kode) VALUES ('foerteDinSkadeEllerSykdomTilFravaer', 'ikkeRelevant');
UPDATE kode SET gyldig_til = '2022-04-29' WHERE kode = 'oenskerIkkeAaOppgi';

update kode set sortering = 0 where kode = 'nei';
update kode set sortering = 1 where kode = 'ja';

-- Stillingstitler -- RESTEN er generert ut fra SSB sine stillingstitler
INSERT INTO type (navn, beskrivelse) VALUES ('stillingstittel', 'Gyldige stillingstitler for yrkesskade domenet.');

-- Politikere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('politikere', '2022-03-15', null, 100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('politikere', 'nb', 'Politikere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'politikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'politikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'politikere');

-- Toppledere i offentlig administrasjon
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('toppledereIOffentligAdministrasjon', '2022-03-15', null, 200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('toppledereIOffentligAdministrasjon', 'nb', 'Toppledere i offentlig administrasjon');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'toppledereIOffentligAdministrasjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'toppledereIOffentligAdministrasjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'toppledereIOffentligAdministrasjon');

-- Toppledere i interesseorganisasjoner
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('toppledereIInteresseorganisasjoner', '2022-03-15', null, 300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('toppledereIInteresseorganisasjoner', 'nb', 'Toppledere i interesseorganisasjoner');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'toppledereIInteresseorganisasjoner');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'toppledereIInteresseorganisasjoner');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'toppledereIInteresseorganisasjoner');

-- Administrerende direktører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('administrerendeDirektorer', '2022-03-15', null, 400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('administrerendeDirektorer', 'nb', 'Administrerende direktører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'administrerendeDirektorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'administrerendeDirektorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'administrerendeDirektorer');

-- Finans- og økonomisjefer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('finansOgOkonomisjefer', '2022-03-15', null, 500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('finansOgOkonomisjefer', 'nb', 'Finans- og økonomisjefer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'finansOgOkonomisjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'finansOgOkonomisjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'finansOgOkonomisjefer');

-- Personalsjefer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('personalsjefer', '2022-03-15', null, 600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('personalsjefer', 'nb', 'Personalsjefer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'personalsjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'personalsjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'personalsjefer');

-- Strategi- og planleggingssjefer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('strategiOgPlanleggingssjefer', '2022-03-15', null, 700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('strategiOgPlanleggingssjefer', 'nb', 'Strategi- og planleggingssjefer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'strategiOgPlanleggingssjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'strategiOgPlanleggingssjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'strategiOgPlanleggingssjefer');

-- Andre administrative ledere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreAdministrativeLedere', '2022-03-15', null, 800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreAdministrativeLedere', 'nb', 'Andre administrative ledere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreAdministrativeLedere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreAdministrativeLedere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreAdministrativeLedere');

-- Salgs- og markedssjefer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('salgsOgMarkedssjefer', '2022-03-15', null, 900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('salgsOgMarkedssjefer', 'nb', 'Salgs- og markedssjefer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'salgsOgMarkedssjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'salgsOgMarkedssjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'salgsOgMarkedssjefer');

-- PR- og informasjonssjefer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('prOgInformasjonssjefer', '2022-03-15', null, 1000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('prOgInformasjonssjefer', 'nb', 'PR- og informasjonssjefer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'prOgInformasjonssjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'prOgInformasjonssjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'prOgInformasjonssjefer');

-- Forsknings- og utviklingsledere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('forskningsOgUtviklingsledere', '2022-03-15', null, 1100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('forskningsOgUtviklingsledere', 'nb', 'Forsknings- og utviklingsledere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'forskningsOgUtviklingsledere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'forskningsOgUtviklingsledere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'forskningsOgUtviklingsledere');

-- Ledere i skogbruk, gartnerier mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ledereISkogbrukGartnerierMv', '2022-03-15', null, 1200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ledereISkogbrukGartnerierMv', 'nb', 'Ledere i skogbruk, gartnerier mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ledereISkogbrukGartnerierMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ledereISkogbrukGartnerierMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ledereISkogbrukGartnerierMv');

-- Ledere innen akvakultur mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ledereInnenAkvakulturMv', '2022-03-15', null, 1300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ledereInnenAkvakulturMv', 'nb', 'Ledere innen akvakultur mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ledereInnenAkvakulturMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ledereInnenAkvakulturMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ledereInnenAkvakulturMv');

-- Ledere av industriproduksjon mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ledereAvIndustriproduksjonMv', '2022-03-15', null, 1400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ledereAvIndustriproduksjonMv', 'nb', 'Ledere av industriproduksjon mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ledereAvIndustriproduksjonMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ledereAvIndustriproduksjonMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ledereAvIndustriproduksjonMv');

-- Ledere av olje- og gassutvinning mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ledereAvOljeOgGassutvinningMv', '2022-03-15', null, 1500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ledereAvOljeOgGassutvinningMv', 'nb', 'Ledere av olje- og gassutvinning mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ledereAvOljeOgGassutvinningMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ledereAvOljeOgGassutvinningMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ledereAvOljeOgGassutvinningMv');

-- Ledere av bygge- og anleggsvirksomhet
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ledereAvByggeOgAnleggsvirksomhet', '2022-03-15', null, 1600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ledereAvByggeOgAnleggsvirksomhet', 'nb', 'Ledere av bygge- og anleggsvirksomhet');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ledereAvByggeOgAnleggsvirksomhet');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ledereAvByggeOgAnleggsvirksomhet');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ledereAvByggeOgAnleggsvirksomhet');

-- Ledere av logistikk og transport mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ledereAvLogistikkOgTransportMv', '2022-03-15', null, 1700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ledereAvLogistikkOgTransportMv', 'nb', 'Ledere av logistikk og transport mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ledereAvLogistikkOgTransportMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ledereAvLogistikkOgTransportMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ledereAvLogistikkOgTransportMv');

-- Ledere av IKT-enheter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ledereAvIktEnheter', '2022-03-15', null, 1800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ledereAvIktEnheter', 'nb', 'Ledere av IKT-enheter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ledereAvIktEnheter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ledereAvIktEnheter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ledereAvIktEnheter');

-- Ledere av omsorgstjenester for barn
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ledereAvOmsorgstjenesterForBarn', '2022-03-15', null, 1900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ledereAvOmsorgstjenesterForBarn', 'nb', 'Ledere av omsorgstjenester for barn');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ledereAvOmsorgstjenesterForBarn');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ledereAvOmsorgstjenesterForBarn');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ledereAvOmsorgstjenesterForBarn');

-- Ledere av helsetjenester
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ledereAvHelsetjenester', '2022-03-15', null, 2000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ledereAvHelsetjenester', 'nb', 'Ledere av helsetjenester');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ledereAvHelsetjenester');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ledereAvHelsetjenester');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ledereAvHelsetjenester');

-- Ledere av eldreomsorg
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ledereAvEldreomsorg', '2022-03-15', null, 2100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ledereAvEldreomsorg', 'nb', 'Ledere av eldreomsorg');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ledereAvEldreomsorg');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ledereAvEldreomsorg');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ledereAvEldreomsorg');

-- Ledere av sosialomsorg
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ledereAvSosialomsorg', '2022-03-15', null, 2200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ledereAvSosialomsorg', 'nb', 'Ledere av sosialomsorg');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ledereAvSosialomsorg');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ledereAvSosialomsorg');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ledereAvSosialomsorg');

-- Ledere av utdanning og undervisning
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ledereAvUtdanningOgUndervisning', '2022-03-15', null, 2300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ledereAvUtdanningOgUndervisning', 'nb', 'Ledere av utdanning og undervisning');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ledereAvUtdanningOgUndervisning');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ledereAvUtdanningOgUndervisning');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ledereAvUtdanningOgUndervisning');

-- Ledere av forsikring og finansvirksomhet
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ledereAvForsikringOgFinansvirksomhet', '2022-03-15', null, 2400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ledereAvForsikringOgFinansvirksomhet', 'nb', 'Ledere av forsikring og finansvirksomhet');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ledereAvForsikringOgFinansvirksomhet');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ledereAvForsikringOgFinansvirksomhet');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ledereAvForsikringOgFinansvirksomhet');

-- Andre ledere av produksjon og tjenesteyting
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreLedereAvProduksjonOgTjenesteyting', '2022-03-15', null, 2500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreLedereAvProduksjonOgTjenesteyting', 'nb', 'Andre ledere av produksjon og tjenesteyting');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreLedereAvProduksjonOgTjenesteyting');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreLedereAvProduksjonOgTjenesteyting');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreLedereAvProduksjonOgTjenesteyting');

-- Hotellsjefer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('hotellsjefer', '2022-03-15', null, 2600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hotellsjefer', 'nb', 'Hotellsjefer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'hotellsjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'hotellsjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'hotellsjefer');

-- Restaurantsjefer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('restaurantsjefer', '2022-03-15', null, 2700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('restaurantsjefer', 'nb', 'Restaurantsjefer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'restaurantsjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'restaurantsjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'restaurantsjefer');

-- Varehandelssjefer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('varehandelssjefer', '2022-03-15', null, 2800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('varehandelssjefer', 'nb', 'Varehandelssjefer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'varehandelssjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'varehandelssjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'varehandelssjefer');

-- Sports-, rekreasjons- og kultursenterledere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sportsRekreasjonsOgKultursenterledere', '2022-03-15', null, 2900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sportsRekreasjonsOgKultursenterledere', 'nb', 'Sports-, rekreasjons- og kultursenterledere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sportsRekreasjonsOgKultursenterledere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sportsRekreasjonsOgKultursenterledere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sportsRekreasjonsOgKultursenterledere');

-- Andre daglige ledere i tjenesteytende virksomheter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreDagligeLedereITjenesteytendeVirksomheter', '2022-03-15', null, 3000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreDagligeLedereITjenesteytendeVirksomheter', 'nb', 'Andre daglige ledere i tjenesteytende virksomheter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreDagligeLedereITjenesteytendeVirksomheter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreDagligeLedereITjenesteytendeVirksomheter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreDagligeLedereITjenesteytendeVirksomheter');

-- Fysikere og astronomer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('fysikereOgAstronomer', '2022-03-15', null, 3100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fysikereOgAstronomer', 'nb', 'Fysikere og astronomer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'fysikereOgAstronomer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'fysikereOgAstronomer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'fysikereOgAstronomer');

-- Meteorologer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('meteorologer', '2022-03-15', null, 3200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('meteorologer', 'nb', 'Meteorologer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'meteorologer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'meteorologer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'meteorologer');

-- Kjemikere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kjemikere', '2022-03-15', null, 3300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kjemikere', 'nb', 'Kjemikere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kjemikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kjemikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kjemikere');

-- Geologer og geofysikere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('geologerOgGeofysikere', '2022-03-15', null, 3400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('geologerOgGeofysikere', 'nb', 'Geologer og geofysikere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'geologerOgGeofysikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'geologerOgGeofysikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'geologerOgGeofysikere');

-- Matematikere, statistikere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('matematikereStatistikereMv', '2022-03-15', null, 3500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('matematikereStatistikereMv', 'nb', 'Matematikere, statistikere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'matematikereStatistikereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'matematikereStatistikereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'matematikereStatistikereMv');

-- Biologer, botanikere, zoologer mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('biologerBotanikereZoologerMv', '2022-03-15', null, 3600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('biologerBotanikereZoologerMv', 'nb', 'Biologer, botanikere, zoologer mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'biologerBotanikereZoologerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'biologerBotanikereZoologerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'biologerBotanikereZoologerMv');

-- Sivilagronomer mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sivilagronomerMv', '2022-03-15', null, 3700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sivilagronomerMv', 'nb', 'Sivilagronomer mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sivilagronomerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sivilagronomerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sivilagronomerMv');

-- Miljøvernrådgivere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('miljovernradgivere', '2022-03-15', null, 3800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('miljovernradgivere', 'nb', 'Miljøvernrådgivere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'miljovernradgivere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'miljovernradgivere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'miljovernradgivere');

-- Sivilingeniører (industri og produksjon)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sivilingeniorerIndustriOgProduksjon', '2022-03-15', null, 3900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sivilingeniorerIndustriOgProduksjon', 'nb', 'Sivilingeniører (industri og produksjon)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sivilingeniorerIndustriOgProduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sivilingeniorerIndustriOgProduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sivilingeniorerIndustriOgProduksjon');

-- Sivilingeniører (bygg og anlegg)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sivilingeniorerByggOgAnlegg', '2022-03-15', null, 4000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sivilingeniorerByggOgAnlegg', 'nb', 'Sivilingeniører (bygg og anlegg)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sivilingeniorerByggOgAnlegg');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sivilingeniorerByggOgAnlegg');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sivilingeniorerByggOgAnlegg');

-- Sivilingeniører (miljøteknikk)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sivilingeniorerMiljoteknikk', '2022-03-15', null, 4100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sivilingeniorerMiljoteknikk', 'nb', 'Sivilingeniører (miljøteknikk)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sivilingeniorerMiljoteknikk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sivilingeniorerMiljoteknikk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sivilingeniorerMiljoteknikk');

-- Sivilingeniører (maskin- og marin-teknikk)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sivilingeniorerMaskinOgMarinTeknikk', '2022-03-15', null, 4200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sivilingeniorerMaskinOgMarinTeknikk', 'nb', 'Sivilingeniører (maskin- og marin-teknikk)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sivilingeniorerMaskinOgMarinTeknikk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sivilingeniorerMaskinOgMarinTeknikk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sivilingeniorerMaskinOgMarinTeknikk');

-- Sivilingeniører (kjemi)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sivilingeniorerKjemi', '2022-03-15', null, 4300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sivilingeniorerKjemi', 'nb', 'Sivilingeniører (kjemi)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sivilingeniorerKjemi');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sivilingeniorerKjemi');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sivilingeniorerKjemi');

-- Sivilingeniører (geofag, petro-leumsteknologi, metallurgi mv.)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sivilingeniorerGeofagPetroLeumsteknologiMetallurgiMv', '2022-03-15', null, 4400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sivilingeniorerGeofagPetroLeumsteknologiMetallurgiMv', 'nb', 'Sivilingeniører (geofag, petro-leumsteknologi, metallurgi mv.)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sivilingeniorerGeofagPetroLeumsteknologiMetallurgiMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sivilingeniorerGeofagPetroLeumsteknologiMetallurgiMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sivilingeniorerGeofagPetroLeumsteknologiMetallurgiMv');

-- Andre sivilingeniører (unntatt elektroteknologi)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreSivilingeniorerUnntattElektroteknologi', '2022-03-15', null, 4500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreSivilingeniorerUnntattElektroteknologi', 'nb', 'Andre sivilingeniører (unntatt elektroteknologi)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreSivilingeniorerUnntattElektroteknologi');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreSivilingeniorerUnntattElektroteknologi');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreSivilingeniorerUnntattElektroteknologi');

-- Sivilingeniører (elkraftteknikk)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sivilingeniorerElkraftteknikk', '2022-03-15', null, 4600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sivilingeniorerElkraftteknikk', 'nb', 'Sivilingeniører (elkraftteknikk)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sivilingeniorerElkraftteknikk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sivilingeniorerElkraftteknikk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sivilingeniorerElkraftteknikk');

-- Sivilingeniører (elektronikk)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sivilingeniorerElektronikk', '2022-03-15', null, 4700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sivilingeniorerElektronikk', 'nb', 'Sivilingeniører (elektronikk)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sivilingeniorerElektronikk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sivilingeniorerElektronikk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sivilingeniorerElektronikk');

-- Sivilingeniører (telekommunikasjon)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sivilingeniorerTelekommunikasjon', '2022-03-15', null, 4800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sivilingeniorerTelekommunikasjon', 'nb', 'Sivilingeniører (telekommunikasjon)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sivilingeniorerTelekommunikasjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sivilingeniorerTelekommunikasjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sivilingeniorerTelekommunikasjon');

-- Sivilarkitekter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sivilarkitekter', '2022-03-15', null, 4900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sivilarkitekter', 'nb', 'Sivilarkitekter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sivilarkitekter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sivilarkitekter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sivilarkitekter');

-- Landskapsarkitekter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('landskapsarkitekter', '2022-03-15', null, 5000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('landskapsarkitekter', 'nb', 'Landskapsarkitekter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'landskapsarkitekter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'landskapsarkitekter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'landskapsarkitekter');

-- Produkt- og klesdesignere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('produktOgKlesdesignere', '2022-03-15', null, 5100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('produktOgKlesdesignere', 'nb', 'Produkt- og klesdesignere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'produktOgKlesdesignere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'produktOgKlesdesignere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'produktOgKlesdesignere');

-- Arealplanleggere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('arealplanleggere', '2022-03-15', null, 5200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arealplanleggere', 'nb', 'Arealplanleggere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'arealplanleggere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'arealplanleggere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'arealplanleggere');

-- Landmålere, kartografer mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('landmalereKartograferMv', '2022-03-15', null, 5300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('landmalereKartograferMv', 'nb', 'Landmålere, kartografer mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'landmalereKartograferMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'landmalereKartograferMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'landmalereKartograferMv');

-- Grafiske- og multimediadesignere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('grafiskeOgMultimediadesignere', '2022-03-15', null, 5400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('grafiskeOgMultimediadesignere', 'nb', 'Grafiske- og multimediadesignere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'grafiskeOgMultimediadesignere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'grafiskeOgMultimediadesignere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'grafiskeOgMultimediadesignere');

-- Allmennpraktiserende leger
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('allmennpraktiserendeLeger', '2022-03-15', null, 5500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('allmennpraktiserendeLeger', 'nb', 'Allmennpraktiserende leger');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'allmennpraktiserendeLeger');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'allmennpraktiserendeLeger');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'allmennpraktiserendeLeger');

-- Legespesialister
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('legespesialister', '2022-03-15', null, 5600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('legespesialister', 'nb', 'Legespesialister');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'legespesialister');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'legespesialister');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'legespesialister');

-- Spesialsykepleiere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('spesialsykepleiere', '2022-03-15', null, 5700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('spesialsykepleiere', 'nb', 'Spesialsykepleiere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'spesialsykepleiere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'spesialsykepleiere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'spesialsykepleiere');

-- Jordmødre
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('jordmodre', '2022-03-15', null, 5800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('jordmodre', 'nb', 'Jordmødre');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'jordmodre');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'jordmodre');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'jordmodre');

-- Sykepleiere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sykepleiere', '2022-03-15', null, 5900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sykepleiere', 'nb', 'Sykepleiere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sykepleiere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sykepleiere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sykepleiere');

-- Vernepleiere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('vernepleiere', '2022-03-15', null, 6000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('vernepleiere', 'nb', 'Vernepleiere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'vernepleiere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'vernepleiere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'vernepleiere');

-- Veterinærer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('veterinaerer', '2022-03-15', null, 6100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('veterinaerer', 'nb', 'Veterinærer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'veterinaerer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'veterinaerer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'veterinaerer');

-- Tannleger
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('tannleger', '2022-03-15', null, 6200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('tannleger', 'nb', 'Tannleger');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'tannleger');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'tannleger');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'tannleger');

-- Farmasøyter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('farmasoyter', '2022-03-15', null, 6300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('farmasoyter', 'nb', 'Farmasøyter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'farmasoyter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'farmasoyter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'farmasoyter');

-- Helse- og miljørådgivere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('helseOgMiljoradgivere', '2022-03-15', null, 6400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('helseOgMiljoradgivere', 'nb', 'Helse- og miljørådgivere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'helseOgMiljoradgivere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'helseOgMiljoradgivere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'helseOgMiljoradgivere');

-- Fysioterapeuter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('fysioterapeuter', '2022-03-15', null, 6500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fysioterapeuter', 'nb', 'Fysioterapeuter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'fysioterapeuter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'fysioterapeuter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'fysioterapeuter');

-- Ernæringsfysiologer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ernaeringsfysiologer', '2022-03-15', null, 6600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ernaeringsfysiologer', 'nb', 'Ernæringsfysiologer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ernaeringsfysiologer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ernaeringsfysiologer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ernaeringsfysiologer');

-- Audiografer og logopeder
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('audiograferOgLogopeder', '2022-03-15', null, 6700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('audiograferOgLogopeder', 'nb', 'Audiografer og logopeder');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'audiograferOgLogopeder');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'audiograferOgLogopeder');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'audiograferOgLogopeder');

-- Ergoterapeuter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ergoterapeuter', '2022-03-15', null, 6800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ergoterapeuter', 'nb', 'Ergoterapeuter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ergoterapeuter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ergoterapeuter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ergoterapeuter');

-- Kiropraktorer mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kiropraktorerMv', '2022-03-15', null, 6900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kiropraktorerMv', 'nb', 'Kiropraktorer mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kiropraktorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kiropraktorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kiropraktorerMv');

-- Universitets- og høyskolelektorer/-lærere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('universitetsOgHoyskolelektorerLaerere', '2022-03-15', null, 7000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('universitetsOgHoyskolelektorerLaerere', 'nb', 'Universitets- og høyskolelektorer/-lærere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'universitetsOgHoyskolelektorerLaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'universitetsOgHoyskolelektorerLaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'universitetsOgHoyskolelektorerLaerere');

-- Yrkesfaglærere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('yrkesfaglaerere', '2022-03-15', null, 7100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('yrkesfaglaerere', 'nb', 'Yrkesfaglærere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'yrkesfaglaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'yrkesfaglaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'yrkesfaglaerere');

-- Lektorer mv. (videregående skole)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('lektorerMvVideregaendeSkole', '2022-03-15', null, 7200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('lektorerMvVideregaendeSkole', 'nb', 'Lektorer mv. (videregående skole)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'lektorerMvVideregaendeSkole');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'lektorerMvVideregaendeSkole');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'lektorerMvVideregaendeSkole');

-- Grunnskolelærere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('grunnskolelaerere', '2022-03-15', null, 7300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('grunnskolelaerere', 'nb', 'Grunnskolelærere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'grunnskolelaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'grunnskolelaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'grunnskolelaerere');

-- Førskolelærere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('forskolelaerere', '2022-03-15', null, 7400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('forskolelaerere', 'nb', 'Førskolelærere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'forskolelaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'forskolelaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'forskolelaerere');

-- Spesialister i pedagogikk
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('spesialisterIPedagogikk', '2022-03-15', null, 7500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('spesialisterIPedagogikk', 'nb', 'Spesialister i pedagogikk');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'spesialisterIPedagogikk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'spesialisterIPedagogikk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'spesialisterIPedagogikk');

-- Spesiallærere / spesialpedagoger
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('spesiallaerereSpesialpedagoger', '2022-03-15', null, 7600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('spesiallaerereSpesialpedagoger', 'nb', 'Spesiallærere / spesialpedagoger');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'spesiallaerereSpesialpedagoger');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'spesiallaerereSpesialpedagoger');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'spesiallaerereSpesialpedagoger');

-- Andre språklærere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreSpraklaerere', '2022-03-15', null, 7700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreSpraklaerere', 'nb', 'Andre språklærere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreSpraklaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreSpraklaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreSpraklaerere');

-- Andre musikklærere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreMusikklaerere', '2022-03-15', null, 7800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreMusikklaerere', 'nb', 'Andre musikklærere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreMusikklaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreMusikklaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreMusikklaerere');

-- Andre lærere i estetiske fag
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreLaerereIEstetiskeFag', '2022-03-15', null, 7900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreLaerereIEstetiskeFag', 'nb', 'Andre lærere i estetiske fag');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreLaerereIEstetiskeFag');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreLaerereIEstetiskeFag');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreLaerereIEstetiskeFag');

-- Andre IKT-lærere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreIktLaerere', '2022-03-15', null, 8000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreIktLaerere', 'nb', 'Andre IKT-lærere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreIktLaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreIktLaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreIktLaerere');

-- Andre lærere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreLaerere', '2022-03-15', null, 8100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreLaerere', 'nb', 'Andre lærere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreLaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreLaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreLaerere');

-- Revisorer, regnskapsrådgivere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('revisorerRegnskapsradgivere', '2022-03-15', null, 8200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('revisorerRegnskapsradgivere', 'nb', 'Revisorer, regnskapsrådgivere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'revisorerRegnskapsradgivere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'revisorerRegnskapsradgivere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'revisorerRegnskapsradgivere');

-- Finans- og investeringsrådgivere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('finansOgInvesteringsradgivere', '2022-03-15', null, 8300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('finansOgInvesteringsradgivere', 'nb', 'Finans- og investeringsrådgivere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'finansOgInvesteringsradgivere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'finansOgInvesteringsradgivere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'finansOgInvesteringsradgivere');

-- Finansanalytikere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('finansanalytikere', '2022-03-15', null, 8400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('finansanalytikere', 'nb', 'Finansanalytikere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'finansanalytikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'finansanalytikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'finansanalytikere');

-- Organisasjonsrådgivere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('organisasjonsradgivereMv', '2022-03-15', null, 8500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('organisasjonsradgivereMv', 'nb', 'Organisasjonsrådgivere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'organisasjonsradgivereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'organisasjonsradgivereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'organisasjonsradgivereMv');

-- Høyere saksbehandlere i offentlig og privat virksomhet
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('hoyereSaksbehandlereIOffentligOgPrivatVirksomhet', '2022-03-15', null, 8600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hoyereSaksbehandlereIOffentligOgPrivatVirksomhet', 'nb', 'Høyere saksbehandlere i offentlig og privat virksomhet');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'hoyereSaksbehandlereIOffentligOgPrivatVirksomhet');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'hoyereSaksbehandlereIOffentligOgPrivatVirksomhet');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'hoyereSaksbehandlereIOffentligOgPrivatVirksomhet');

-- Personal- og karriererådgivere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('personalOgKarriereradgivere', '2022-03-15', null, 8700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('personalOgKarriereradgivere', 'nb', 'Personal- og karriererådgivere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'personalOgKarriereradgivere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'personalOgKarriereradgivere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'personalOgKarriereradgivere');

-- Rådgivere innen kompetanseutvikling
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('radgivereInnenKompetanseutvikling', '2022-03-15', null, 8800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('radgivereInnenKompetanseutvikling', 'nb', 'Rådgivere innen kompetanseutvikling');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'radgivereInnenKompetanseutvikling');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'radgivereInnenKompetanseutvikling');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'radgivereInnenKompetanseutvikling');

-- Reklame- og markedsføringsrådgivere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('reklameOgMarkedsforingsradgivere', '2022-03-15', null, 8900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('reklameOgMarkedsforingsradgivere', 'nb', 'Reklame- og markedsføringsrådgivere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'reklameOgMarkedsforingsradgivere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'reklameOgMarkedsforingsradgivere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'reklameOgMarkedsforingsradgivere');

-- Informasjonsrådgivere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('informasjonsradgivere', '2022-03-15', null, 9000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('informasjonsradgivere', 'nb', 'Informasjonsrådgivere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'informasjonsradgivere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'informasjonsradgivere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'informasjonsradgivere');

-- Salgskonsulenter innen tekniske og medisinske produkter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('salgskonsulenterInnenTekniskeOgMedisinskeProdukter', '2022-03-15', null, 9100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('salgskonsulenterInnenTekniskeOgMedisinskeProdukter', 'nb', 'Salgskonsulenter innen tekniske og medisinske produkter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'salgskonsulenterInnenTekniskeOgMedisinskeProdukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'salgskonsulenterInnenTekniskeOgMedisinskeProdukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'salgskonsulenterInnenTekniskeOgMedisinskeProdukter');

-- Salgskonsulenter innen IKT-produkter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('salgskonsulenterInnenIktProdukter', '2022-03-15', null, 9200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('salgskonsulenterInnenIktProdukter', 'nb', 'Salgskonsulenter innen IKT-produkter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'salgskonsulenterInnenIktProdukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'salgskonsulenterInnenIktProdukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'salgskonsulenterInnenIktProdukter');

-- Systemanalytikere/-arkitekter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('systemanalytikereArkitekter', '2022-03-15', null, 9300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('systemanalytikereArkitekter', 'nb', 'Systemanalytikere/-arkitekter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'systemanalytikereArkitekter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'systemanalytikereArkitekter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'systemanalytikereArkitekter');

-- Programvareutviklere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('programvareutviklere', '2022-03-15', null, 9400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('programvareutviklere', 'nb', 'Programvareutviklere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'programvareutviklere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'programvareutviklere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'programvareutviklere');

-- Nett- og multimediautviklere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('nettOgMultimediautviklere', '2022-03-15', null, 9500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('nettOgMultimediautviklere', 'nb', 'Nett- og multimediautviklere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'nettOgMultimediautviklere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'nettOgMultimediautviklere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'nettOgMultimediautviklere');

-- Applikasjonsprogrammerere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('applikasjonsprogrammerere', '2022-03-15', null, 9600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('applikasjonsprogrammerere', 'nb', 'Applikasjonsprogrammerere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'applikasjonsprogrammerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'applikasjonsprogrammerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'applikasjonsprogrammerere');

-- Andre programvare- og applikasjonsutviklere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreProgramvareOgApplikasjonsutviklere', '2022-03-15', null, 9700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreProgramvareOgApplikasjonsutviklere', 'nb', 'Andre programvare- og applikasjonsutviklere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreProgramvareOgApplikasjonsutviklere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreProgramvareOgApplikasjonsutviklere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreProgramvareOgApplikasjonsutviklere');

-- Databasedesignere og -administratorer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('databasedesignereOgAdministratorer', '2022-03-15', null, 9800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('databasedesignereOgAdministratorer', 'nb', 'Databasedesignere og -administratorer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'databasedesignereOgAdministratorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'databasedesignereOgAdministratorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'databasedesignereOgAdministratorer');

-- Systemadministratorer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('systemadministratorer', '2022-03-15', null, 9900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('systemadministratorer', 'nb', 'Systemadministratorer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'systemadministratorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'systemadministratorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'systemadministratorer');

-- Nettverksansvarlige
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('nettverksansvarlige', '2022-03-15', null, 10000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('nettverksansvarlige', 'nb', 'Nettverksansvarlige');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'nettverksansvarlige');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'nettverksansvarlige');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'nettverksansvarlige');

-- Sikkerhetsanalytikere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sikkerhetsanalytikereMv', '2022-03-15', null, 10100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sikkerhetsanalytikereMv', 'nb', 'Sikkerhetsanalytikere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sikkerhetsanalytikereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sikkerhetsanalytikereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sikkerhetsanalytikereMv');

-- Jurister og advokater
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('juristerOgAdvokater', '2022-03-15', null, 10200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('juristerOgAdvokater', 'nb', 'Jurister og advokater');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'juristerOgAdvokater');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'juristerOgAdvokater');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'juristerOgAdvokater');

-- Dommere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('dommere', '2022-03-15', null, 10300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('dommere', 'nb', 'Dommere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'dommere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'dommere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'dommere');

-- Andre juridiske yrker
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreJuridiskeYrker', '2022-03-15', null, 10400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreJuridiskeYrker', 'nb', 'Andre juridiske yrker');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreJuridiskeYrker');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreJuridiskeYrker');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreJuridiskeYrker');

-- Arkivarer og kuratorer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('arkivarerOgKuratorer', '2022-03-15', null, 10500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arkivarerOgKuratorer', 'nb', 'Arkivarer og kuratorer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'arkivarerOgKuratorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'arkivarerOgKuratorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'arkivarerOgKuratorer');

-- Bibliotekarer og andre informasjonsarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('bibliotekarerOgAndreInformasjonsarbeidere', '2022-03-15', null, 10600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bibliotekarerOgAndreInformasjonsarbeidere', 'nb', 'Bibliotekarer og andre informasjonsarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'bibliotekarerOgAndreInformasjonsarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'bibliotekarerOgAndreInformasjonsarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'bibliotekarerOgAndreInformasjonsarbeidere');

-- Rådgivere/forskere, samfunnsøkonomi
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('radgivereForskereSamfunnsokonomi', '2022-03-15', null, 10700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('radgivereForskereSamfunnsokonomi', 'nb', 'Rådgivere/forskere, samfunnsøkonomi');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'radgivereForskereSamfunnsokonomi');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'radgivereForskereSamfunnsokonomi');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'radgivereForskereSamfunnsokonomi');

-- Rådgivere/forskere, samfunnsvitenskap
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('radgivereForskereSamfunnsvitenskap', '2022-03-15', null, 10800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('radgivereForskereSamfunnsvitenskap', 'nb', 'Rådgivere/forskere, samfunnsvitenskap');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'radgivereForskereSamfunnsvitenskap');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'radgivereForskereSamfunnsvitenskap');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'radgivereForskereSamfunnsvitenskap');

-- Rådgivere/forskere, humanistiske fag
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('radgivereForskereHumanistiskeFag', '2022-03-15', null, 10900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('radgivereForskereHumanistiskeFag', 'nb', 'Rådgivere/forskere, humanistiske fag');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'radgivereForskereHumanistiskeFag');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'radgivereForskereHumanistiskeFag');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'radgivereForskereHumanistiskeFag');

-- Psykologer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('psykologer', '2022-03-15', null, 11000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('psykologer', 'nb', 'Psykologer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'psykologer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'psykologer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'psykologer');

-- Rådgivere innen sosiale fagfelt
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('radgivereInnenSosialeFagfelt', '2022-03-15', null, 11100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('radgivereInnenSosialeFagfelt', 'nb', 'Rådgivere innen sosiale fagfelt');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'radgivereInnenSosialeFagfelt');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'radgivereInnenSosialeFagfelt');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'radgivereInnenSosialeFagfelt');

-- Geistlige yrker
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('geistligeYrker', '2022-03-15', null, 11200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('geistligeYrker', 'nb', 'Geistlige yrker');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'geistligeYrker');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'geistligeYrker');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'geistligeYrker');

-- Forfattere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('forfattereMv', '2022-03-15', null, 11300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('forfattereMv', 'nb', 'Forfattere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'forfattereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'forfattereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'forfattereMv');

-- Journalister
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('journalister', '2022-03-15', null, 11400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('journalister', 'nb', 'Journalister');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'journalister');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'journalister');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'journalister');

-- Oversettere, tolker mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('oversettereTolkerMv', '2022-03-15', null, 11500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('oversettereTolkerMv', 'nb', 'Oversettere, tolker mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'oversettereTolkerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'oversettereTolkerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'oversettereTolkerMv');

-- Skulptører, kunstmalere og andre billedkunstnere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('skulptorerKunstmalereOgAndreBilledkunstnere', '2022-03-15', null, 11600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('skulptorerKunstmalereOgAndreBilledkunstnere', 'nb', 'Skulptører, kunstmalere og andre billedkunstnere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'skulptorerKunstmalereOgAndreBilledkunstnere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'skulptorerKunstmalereOgAndreBilledkunstnere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'skulptorerKunstmalereOgAndreBilledkunstnere');

-- Dirigenter, komponister, musikere og sangere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('dirigenterKomponisterMusikereOgSangere', '2022-03-15', null, 11700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('dirigenterKomponisterMusikereOgSangere', 'nb', 'Dirigenter, komponister, musikere og sangere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'dirigenterKomponisterMusikereOgSangere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'dirigenterKomponisterMusikereOgSangere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'dirigenterKomponisterMusikereOgSangere');

-- Koreografer og dansere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('koreograferOgDansere', '2022-03-15', null, 11800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('koreograferOgDansere', 'nb', 'Koreografer og dansere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'koreograferOgDansere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'koreograferOgDansere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'koreograferOgDansere');

-- Regissører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('regissorer', '2022-03-15', null, 11900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('regissorer', 'nb', 'Regissører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'regissorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'regissorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'regissorer');

-- Skuespillere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('skuespillere', '2022-03-15', null, 12000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('skuespillere', 'nb', 'Skuespillere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'skuespillere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'skuespillere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'skuespillere');

-- Programledere i TV og radio
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('programledereITvOgRadio', '2022-03-15', null, 12100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('programledereITvOgRadio', 'nb', 'Programledere i TV og radio');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'programledereITvOgRadio');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'programledereITvOgRadio');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'programledereITvOgRadio');

-- Andre utøvende kunstneriske yrker
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreUtovendeKunstneriskeYrker', '2022-03-15', null, 12200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreUtovendeKunstneriskeYrker', 'nb', 'Andre utøvende kunstneriske yrker');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreUtovendeKunstneriskeYrker');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreUtovendeKunstneriskeYrker');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreUtovendeKunstneriskeYrker');

-- Bygningsingeniører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('bygningsingeniorer', '2022-03-15', null, 12300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bygningsingeniorer', 'nb', 'Bygningsingeniører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'bygningsingeniorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'bygningsingeniorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'bygningsingeniorer');

-- Elkraftingeniører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('elkraftingeniorer', '2022-03-15', null, 12400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('elkraftingeniorer', 'nb', 'Elkraftingeniører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'elkraftingeniorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'elkraftingeniorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'elkraftingeniorer');

-- Elektronikkingeniører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('elektronikkingeniorer', '2022-03-15', null, 12500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('elektronikkingeniorer', 'nb', 'Elektronikkingeniører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'elektronikkingeniorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'elektronikkingeniorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'elektronikkingeniorer');

-- Maskiningeniører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('maskiningeniorer', '2022-03-15', null, 12600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('maskiningeniorer', 'nb', 'Maskiningeniører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'maskiningeniorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'maskiningeniorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'maskiningeniorer');

-- Kjemiingeniører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kjemiingeniorer', '2022-03-15', null, 12700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kjemiingeniorer', 'nb', 'Kjemiingeniører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kjemiingeniorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kjemiingeniorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kjemiingeniorer');

-- Ingeniører innen petroleum, bergverk og metallurgi
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ingeniorerInnenPetroleumBergverkOgMetallurgi', '2022-03-15', null, 12800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ingeniorerInnenPetroleumBergverkOgMetallurgi', 'nb', 'Ingeniører innen petroleum, bergverk og metallurgi');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ingeniorerInnenPetroleumBergverkOgMetallurgi');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ingeniorerInnenPetroleumBergverkOgMetallurgi');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ingeniorerInnenPetroleumBergverkOgMetallurgi');

-- Tekniske tegnere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('tekniskeTegnere', '2022-03-15', null, 12900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('tekniskeTegnere', 'nb', 'Tekniske tegnere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'tekniskeTegnere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'tekniskeTegnere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'tekniskeTegnere');

-- Andre ingeniører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreIngeniorer', '2022-03-15', null, 13000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreIngeniorer', 'nb', 'Andre ingeniører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreIngeniorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreIngeniorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreIngeniorer');

-- Arbeidsleder, bergfag
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidslederBergfag', '2022-03-15', null, 13100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arbeidslederBergfag', 'nb', 'Arbeidsleder, bergfag');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'arbeidslederBergfag');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'arbeidslederBergfag');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'arbeidslederBergfag');

-- Arbeidsleder, industri
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidslederIndustri', '2022-03-15', null, 13200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arbeidslederIndustri', 'nb', 'Arbeidsleder, industri');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'arbeidslederIndustri');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'arbeidslederIndustri');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'arbeidslederIndustri');

-- Arbeidsleder, bygg og anlegg
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidslederByggOgAnlegg', '2022-03-15', null, 13300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arbeidslederByggOgAnlegg', 'nb', 'Arbeidsleder, bygg og anlegg');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'arbeidslederByggOgAnlegg');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'arbeidslederByggOgAnlegg');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'arbeidslederByggOgAnlegg');

-- Energikontrolloperatører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('energikontrolloperatorer', '2022-03-15', null, 13400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('energikontrolloperatorer', 'nb', 'Energikontrolloperatører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'energikontrolloperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'energikontrolloperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'energikontrolloperatorer');

-- Kontrolloperatører ved forbrennings- kjøle- og vannrenseanlegg mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kontrolloperatorerVedForbrenningsKjoleOgVannrenseanleggMv', '2022-03-15', null, 13500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kontrolloperatorerVedForbrenningsKjoleOgVannrenseanleggMv', 'nb', 'Kontrolloperatører ved forbrennings- kjøle- og vannrenseanlegg mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kontrolloperatorerVedForbrenningsKjoleOgVannrenseanleggMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kontrolloperatorerVedForbrenningsKjoleOgVannrenseanleggMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kontrolloperatorerVedForbrenningsKjoleOgVannrenseanleggMv');

-- Kontrolloperatører innen kjemisk prosessindustri
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kontrolloperatorerInnenKjemiskProsessindustri', '2022-03-15', null, 13600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kontrolloperatorerInnenKjemiskProsessindustri', 'nb', 'Kontrolloperatører innen kjemisk prosessindustri');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kontrolloperatorerInnenKjemiskProsessindustri');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kontrolloperatorerInnenKjemiskProsessindustri');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kontrolloperatorerInnenKjemiskProsessindustri');

-- Kontrolloperatører ved olje- og naturgassraffineringsanlegg
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kontrolloperatorerVedOljeOgNaturgassraffineringsanlegg', '2022-03-15', null, 13700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kontrolloperatorerVedOljeOgNaturgassraffineringsanlegg', 'nb', 'Kontrolloperatører ved olje- og naturgassraffineringsanlegg');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kontrolloperatorerVedOljeOgNaturgassraffineringsanlegg');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kontrolloperatorerVedOljeOgNaturgassraffineringsanlegg');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kontrolloperatorerVedOljeOgNaturgassraffineringsanlegg');

-- Kontrolloperatører innen metallproduksjon
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kontrolloperatorerInnenMetallproduksjon', '2022-03-15', null, 13800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kontrolloperatorerInnenMetallproduksjon', 'nb', 'Kontrolloperatører innen metallproduksjon');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kontrolloperatorerInnenMetallproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kontrolloperatorerInnenMetallproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kontrolloperatorerInnenMetallproduksjon');

-- Andre prosesskontrolloperatører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreProsesskontrolloperatorer', '2022-03-15', null, 13900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreProsesskontrolloperatorer', 'nb', 'Andre prosesskontrolloperatører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreProsesskontrolloperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreProsesskontrolloperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreProsesskontrolloperatorer');

-- Bioteknikere (ikke-medisinske laboratorier)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('bioteknikereIkkeMedisinskeLaboratorier', '2022-03-15', null, 14000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bioteknikereIkkeMedisinskeLaboratorier', 'nb', 'Bioteknikere (ikke-medisinske laboratorier)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'bioteknikereIkkeMedisinskeLaboratorier');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'bioteknikereIkkeMedisinskeLaboratorier');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'bioteknikereIkkeMedisinskeLaboratorier');

-- Agroteknikere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('agroteknikere', '2022-03-15', null, 14100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('agroteknikere', 'nb', 'Agroteknikere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'agroteknikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'agroteknikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'agroteknikere');

-- Skogteknikere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('skogteknikere', '2022-03-15', null, 14200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('skogteknikere', 'nb', 'Skogteknikere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'skogteknikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'skogteknikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'skogteknikere');

-- Skipsmaskinister
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('skipsmaskinister', '2022-03-15', null, 14300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('skipsmaskinister', 'nb', 'Skipsmaskinister');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'skipsmaskinister');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'skipsmaskinister');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'skipsmaskinister');

-- Dekksoffiserer og loser
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('dekksoffisererOgLoser', '2022-03-15', null, 14400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('dekksoffisererOgLoser', 'nb', 'Dekksoffiserer og loser');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'dekksoffisererOgLoser');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'dekksoffisererOgLoser');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'dekksoffisererOgLoser');

-- Flygere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('flygere', '2022-03-15', null, 14500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('flygere', 'nb', 'Flygere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'flygere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'flygere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'flygere');

-- Flygeledere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('flygeledere', '2022-03-15', null, 14600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('flygeledere', 'nb', 'Flygeledere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'flygeledere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'flygeledere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'flygeledere');

-- Teknikere innen luftfartssikkerhet
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('teknikereInnenLuftfartssikkerhet', '2022-03-15', null, 14700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('teknikereInnenLuftfartssikkerhet', 'nb', 'Teknikere innen luftfartssikkerhet');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'teknikereInnenLuftfartssikkerhet');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'teknikereInnenLuftfartssikkerhet');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'teknikereInnenLuftfartssikkerhet');

-- Radiografer mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('radiograferMv', '2022-03-15', null, 14800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('radiograferMv', 'nb', 'Radiografer mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'radiograferMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'radiograferMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'radiograferMv');

-- Bioingeniører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('bioingeniorer', '2022-03-15', null, 14900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bioingeniorer', 'nb', 'Bioingeniører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'bioingeniorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'bioingeniorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'bioingeniorer');

-- Reseptarer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('reseptarer', '2022-03-15', null, 15000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('reseptarer', 'nb', 'Reseptarer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'reseptarer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'reseptarer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'reseptarer');

-- Protese- og tannteknikere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('proteseOgTannteknikere', '2022-03-15', null, 15100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('proteseOgTannteknikere', 'nb', 'Protese- og tannteknikere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'proteseOgTannteknikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'proteseOgTannteknikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'proteseOgTannteknikere');

-- Yrker innen alternativ medisin
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('yrkerInnenAlternativMedisin', '2022-03-15', null, 15200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('yrkerInnenAlternativMedisin', 'nb', 'Yrker innen alternativ medisin');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'yrkerInnenAlternativMedisin');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'yrkerInnenAlternativMedisin');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'yrkerInnenAlternativMedisin');

-- Dyrepleiere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('dyrepleiere', '2022-03-15', null, 15300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('dyrepleiere', 'nb', 'Dyrepleiere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'dyrepleiere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'dyrepleiere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'dyrepleiere');

-- Tannpleiere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('tannpleiere', '2022-03-15', null, 15400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('tannpleiere', 'nb', 'Tannpleiere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'tannpleiere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'tannpleiere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'tannpleiere');

-- Optikere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('optikere', '2022-03-15', null, 15500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('optikere', 'nb', 'Optikere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'optikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'optikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'optikere');

-- Helsesekretærer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('helsesekretaerer', '2022-03-15', null, 15600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('helsesekretaerer', 'nb', 'Helsesekretærer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'helsesekretaerer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'helsesekretaerer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'helsesekretaerer');

-- Helse- og miljøkontrollører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('helseOgMiljokontrollorer', '2022-03-15', null, 15700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('helseOgMiljokontrollorer', 'nb', 'Helse- og miljøkontrollører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'helseOgMiljokontrollorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'helseOgMiljokontrollorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'helseOgMiljokontrollorer');

-- Ambulansepersonell
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ambulansepersonell', '2022-03-15', null, 15800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ambulansepersonell', 'nb', 'Ambulansepersonell');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ambulansepersonell');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ambulansepersonell');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ambulansepersonell');

-- Andre helseyrker
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreHelseyrker', '2022-03-15', null, 15900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreHelseyrker', 'nb', 'Andre helseyrker');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreHelseyrker');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreHelseyrker');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreHelseyrker');

-- Finansmeglere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('finansmeglere', '2022-03-15', null, 16000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('finansmeglere', 'nb', 'Finansmeglere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'finansmeglere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'finansmeglere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'finansmeglere');

-- Kundebehandlere lån og kreditt
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kundebehandlereLanOgKreditt', '2022-03-15', null, 16100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kundebehandlereLanOgKreditt', 'nb', 'Kundebehandlere lån og kreditt');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kundebehandlereLanOgKreditt');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kundebehandlereLanOgKreditt');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kundebehandlereLanOgKreditt');

-- Regnskapsførere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('regnskapsforere', '2022-03-15', null, 16200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('regnskapsforere', 'nb', 'Regnskapsførere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'regnskapsforere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'regnskapsforere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'regnskapsforere');

-- Takstmenn
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('takstmenn', '2022-03-15', null, 16300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('takstmenn', 'nb', 'Takstmenn');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'takstmenn');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'takstmenn');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'takstmenn');

-- Forsikringsagenter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('forsikringsagenter', '2022-03-15', null, 16400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('forsikringsagenter', 'nb', 'Forsikringsagenter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'forsikringsagenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'forsikringsagenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'forsikringsagenter');

-- Selgere (engros)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('selgereEngros', '2022-03-15', null, 16500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('selgereEngros', 'nb', 'Selgere (engros)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'selgereEngros');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'selgereEngros');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'selgereEngros');

-- Innkjøpere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('innkjopere', '2022-03-15', null, 16600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('innkjopere', 'nb', 'Innkjøpere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'innkjopere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'innkjopere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'innkjopere');

-- Handels- og skipsmeglere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('handelsOgSkipsmeglere', '2022-03-15', null, 16700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('handelsOgSkipsmeglere', 'nb', 'Handels- og skipsmeglere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'handelsOgSkipsmeglere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'handelsOgSkipsmeglere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'handelsOgSkipsmeglere');

-- Speditører og befraktere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('speditorerOgBefraktere', '2022-03-15', null, 16800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('speditorerOgBefraktere', 'nb', 'Speditører og befraktere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'speditorerOgBefraktere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'speditorerOgBefraktere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'speditorerOgBefraktere');

-- Konferanse- og arrangementsplanleggere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('konferanseOgArrangementsplanleggereMv', '2022-03-15', null, 16900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('konferanseOgArrangementsplanleggereMv', 'nb', 'Konferanse- og arrangementsplanleggere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'konferanseOgArrangementsplanleggereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'konferanseOgArrangementsplanleggereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'konferanseOgArrangementsplanleggereMv');

-- Arbeidsformidlere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidsformidlere', '2022-03-15', null, 17000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arbeidsformidlere', 'nb', 'Arbeidsformidlere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'arbeidsformidlere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'arbeidsformidlere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'arbeidsformidlere');

-- Eiendomsmeglere og - forvaltere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('eiendomsmeglereOgForvaltere', '2022-03-15', null, 17100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('eiendomsmeglereOgForvaltere', 'nb', 'Eiendomsmeglere og - forvaltere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'eiendomsmeglereOgForvaltere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'eiendomsmeglereOgForvaltere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'eiendomsmeglereOgForvaltere');

-- Andre yrker innen forretningstjenester
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreYrkerInnenForretningstjenester', '2022-03-15', null, 17200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreYrkerInnenForretningstjenester', 'nb', 'Andre yrker innen forretningstjenester');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreYrkerInnenForretningstjenester');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreYrkerInnenForretningstjenester');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreYrkerInnenForretningstjenester');

-- Arbeidsledere for kontorpersonell
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidsledereForKontorpersonell', '2022-03-15', null, 17300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arbeidsledereForKontorpersonell', 'nb', 'Arbeidsledere for kontorpersonell');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'arbeidsledereForKontorpersonell');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'arbeidsledereForKontorpersonell');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'arbeidsledereForKontorpersonell');

-- Advokatsekretær
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('advokatsekretaer', '2022-03-15', null, 17400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('advokatsekretaer', 'nb', 'Advokatsekretær');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'advokatsekretaer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'advokatsekretaer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'advokatsekretaer');

-- Sjefssekretærer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sjefssekretaerer', '2022-03-15', null, 17500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sjefssekretaerer', 'nb', 'Sjefssekretærer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sjefssekretaerer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sjefssekretaerer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sjefssekretaerer');

-- Tollere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('tollere', '2022-03-15', null, 17600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('tollere', 'nb', 'Tollere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'tollere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'tollere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'tollere');

-- Skattefunksjonærer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('skattefunksjonaerer', '2022-03-15', null, 17700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('skattefunksjonaerer', 'nb', 'Skattefunksjonærer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'skattefunksjonaerer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'skattefunksjonaerer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'skattefunksjonaerer');

-- Saksbehandlere innen sosiale ytelser
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('saksbehandlereInnenSosialeYtelser', '2022-03-15', null, 17800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('saksbehandlereInnenSosialeYtelser', 'nb', 'Saksbehandlere innen sosiale ytelser');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'saksbehandlereInnenSosialeYtelser');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'saksbehandlereInnenSosialeYtelser');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'saksbehandlereInnenSosialeYtelser');

-- Saksbehandlere for førerkort, importlisenser mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('saksbehandlereForForerkortImportlisenserMv', '2022-03-15', null, 17900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('saksbehandlereForForerkortImportlisenserMv', 'nb', 'Saksbehandlere for førerkort, importlisenser mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'saksbehandlereForForerkortImportlisenserMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'saksbehandlereForForerkortImportlisenserMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'saksbehandlereForForerkortImportlisenserMv');

-- Politibetjenter mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('politibetjenterMv', '2022-03-15', null, 18000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('politibetjenterMv', 'nb', 'Politibetjenter mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'politibetjenterMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'politibetjenterMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'politibetjenterMv');

-- Andre yrker innen offentlig forvaltning
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreYrkerInnenOffentligForvaltning', '2022-03-15', null, 18100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreYrkerInnenOffentligForvaltning', 'nb', 'Andre yrker innen offentlig forvaltning');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreYrkerInnenOffentligForvaltning');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreYrkerInnenOffentligForvaltning');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreYrkerInnenOffentligForvaltning');

-- Privatetterforskere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('privatetterforskereMv', '2022-03-15', null, 18200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('privatetterforskereMv', 'nb', 'Privatetterforskere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'privatetterforskereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'privatetterforskereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'privatetterforskereMv');

-- Miljøarbeidere innen sosiale fagfelt
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('miljoarbeidereInnenSosialeFagfelt', '2022-03-15', null, 18300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('miljoarbeidereInnenSosialeFagfelt', 'nb', 'Miljøarbeidere innen sosiale fagfelt');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'miljoarbeidereInnenSosialeFagfelt');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'miljoarbeidereInnenSosialeFagfelt');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'miljoarbeidereInnenSosialeFagfelt');

-- Religiøse yrker
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('religioseYrker', '2022-03-15', null, 18400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('religioseYrker', 'nb', 'Religiøse yrker');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'religioseYrker');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'religioseYrker');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'religioseYrker');

-- Idrettsutøvere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('idrettsutovere', '2022-03-15', null, 18500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('idrettsutovere', 'nb', 'Idrettsutøvere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'idrettsutovere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'idrettsutovere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'idrettsutovere');

-- Trenere og idrettsdommere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('trenereOgIdrettsdommere', '2022-03-15', null, 18600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('trenereOgIdrettsdommere', 'nb', 'Trenere og idrettsdommere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'trenereOgIdrettsdommere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'trenereOgIdrettsdommere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'trenereOgIdrettsdommere');

-- Sports- og aktivitetsinstruktører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sportsOgAktivitetsinstruktorer', '2022-03-15', null, 18700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sportsOgAktivitetsinstruktorer', 'nb', 'Sports- og aktivitetsinstruktører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sportsOgAktivitetsinstruktorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sportsOgAktivitetsinstruktorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sportsOgAktivitetsinstruktorer');

-- Fotografer og filmfotografer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('fotograferOgFilmfotografer', '2022-03-15', null, 18800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fotograferOgFilmfotografer', 'nb', 'Fotografer og filmfotografer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'fotograferOgFilmfotografer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'fotograferOgFilmfotografer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'fotograferOgFilmfotografer');

-- Interiørdesignere og dekoratører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('interiordesignereOgDekoratorer', '2022-03-15', null, 18900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('interiordesignereOgDekoratorer', 'nb', 'Interiørdesignere og dekoratører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'interiordesignereOgDekoratorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'interiordesignereOgDekoratorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'interiordesignereOgDekoratorer');

-- Tekniske konservatorer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('tekniskeKonservatorer', '2022-03-15', null, 19000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('tekniskeKonservatorer', 'nb', 'Tekniske konservatorer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'tekniskeKonservatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'tekniskeKonservatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'tekniskeKonservatorer');

-- Sjefskokker
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sjefskokker', '2022-03-15', null, 19100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sjefskokker', 'nb', 'Sjefskokker');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sjefskokker');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sjefskokker');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sjefskokker');

-- Andre yrker innen estetiske fag
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreYrkerInnenEstetiskeFag', '2022-03-15', null, 19200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreYrkerInnenEstetiskeFag', 'nb', 'Andre yrker innen estetiske fag');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreYrkerInnenEstetiskeFag');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreYrkerInnenEstetiskeFag');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreYrkerInnenEstetiskeFag');

-- Driftsteknikere, IKT
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('driftsteknikereIkt', '2022-03-15', null, 19300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('driftsteknikereIkt', 'nb', 'Driftsteknikere, IKT');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'driftsteknikereIkt');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'driftsteknikereIkt');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'driftsteknikereIkt');

-- Brukerstøtte, IKT
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('brukerstotteIkt', '2022-03-15', null, 19400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('brukerstotteIkt', 'nb', 'Brukerstøtte, IKT');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'brukerstotteIkt');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'brukerstotteIkt');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'brukerstotteIkt');

-- Nettverks- og systemteknikere, IKT
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('nettverksOgSystemteknikereIkt', '2022-03-15', null, 19500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('nettverksOgSystemteknikereIkt', 'nb', 'Nettverks- og systemteknikere, IKT');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'nettverksOgSystemteknikereIkt');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'nettverksOgSystemteknikereIkt');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'nettverksOgSystemteknikereIkt');

-- Internett-teknikere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('internettTeknikere', '2022-03-15', null, 19600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('internettTeknikere', 'nb', 'Internett-teknikere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'internettTeknikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'internettTeknikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'internettTeknikere');

-- Teknikere innen radio og tv
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('teknikereInnenRadioOgTv', '2022-03-15', null, 19700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('teknikereInnenRadioOgTv', 'nb', 'Teknikere innen radio og tv');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'teknikereInnenRadioOgTv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'teknikereInnenRadioOgTv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'teknikereInnenRadioOgTv');

-- Teknikere innen telekom
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('teknikereInnenTelekom', '2022-03-15', null, 19800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('teknikereInnenTelekom', 'nb', 'Teknikere innen telekom');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'teknikereInnenTelekom');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'teknikereInnenTelekom');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'teknikereInnenTelekom');

-- Kontormedarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kontormedarbeidere', '2022-03-15', null, 19900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kontormedarbeidere', 'nb', 'Kontormedarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kontormedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kontormedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kontormedarbeidere');

-- Stenografer mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('stenograferMv', '2022-03-15', null, 20000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('stenograferMv', 'nb', 'Stenografer mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'stenograferMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'stenograferMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'stenograferMv');

-- Dataregistrere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('dataregistrere', '2022-03-15', null, 20100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('dataregistrere', 'nb', 'Dataregistrere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'dataregistrere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'dataregistrere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'dataregistrere');

-- Kundebehandlere, bank og postkontor
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kundebehandlereBankOgPostkontor', '2022-03-15', null, 20200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kundebehandlereBankOgPostkontor', 'nb', 'Kundebehandlere, bank og postkontor');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kundebehandlereBankOgPostkontor');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kundebehandlereBankOgPostkontor');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kundebehandlereBankOgPostkontor');

-- Bingoverter, bookmakere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('bingoverterBookmakereMv', '2022-03-15', null, 20300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bingoverterBookmakereMv', 'nb', 'Bingoverter, bookmakere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'bingoverterBookmakereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'bingoverterBookmakereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'bingoverterBookmakereMv');

-- Pantelånere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('pantelanereMv', '2022-03-15', null, 20400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('pantelanereMv', 'nb', 'Pantelånere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'pantelanereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'pantelanereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'pantelanereMv');

-- Inkassomedarbeidere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('inkassomedarbeidereMv', '2022-03-15', null, 20500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('inkassomedarbeidereMv', 'nb', 'Inkassomedarbeidere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'inkassomedarbeidereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'inkassomedarbeidereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'inkassomedarbeidereMv');

-- Reisebyråmedarbeidere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('reisebyramedarbeidereMv', '2022-03-15', null, 20600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('reisebyramedarbeidereMv', 'nb', 'Reisebyråmedarbeidere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'reisebyramedarbeidereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'reisebyramedarbeidereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'reisebyramedarbeidereMv');

-- Kundesentermedarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kundesentermedarbeidere', '2022-03-15', null, 20700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kundesentermedarbeidere', 'nb', 'Kundesentermedarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kundesentermedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kundesentermedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kundesentermedarbeidere');

-- Sentralbordoperatører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sentralbordoperatorer', '2022-03-15', null, 20800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sentralbordoperatorer', 'nb', 'Sentralbordoperatører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sentralbordoperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sentralbordoperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sentralbordoperatorer');

-- Hotellresepsjonister
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('hotellresepsjonister', '2022-03-15', null, 20900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hotellresepsjonister', 'nb', 'Hotellresepsjonister');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'hotellresepsjonister');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'hotellresepsjonister');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'hotellresepsjonister');

-- Informasjonsskrankemedarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('informasjonsskrankemedarbeidere', '2022-03-15', null, 21000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('informasjonsskrankemedarbeidere', 'nb', 'Informasjonsskrankemedarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'informasjonsskrankemedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'informasjonsskrankemedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'informasjonsskrankemedarbeidere');

-- Resepsjonister (ekskl. hotell)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('resepsjonisterEksklHotell', '2022-03-15', null, 21100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('resepsjonisterEksklHotell', 'nb', 'Resepsjonister (ekskl. hotell)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'resepsjonisterEksklHotell');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'resepsjonisterEksklHotell');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'resepsjonisterEksklHotell');

-- Intervjuere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('intervjuere', '2022-03-15', null, 21200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('intervjuere', 'nb', 'Intervjuere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'intervjuere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'intervjuere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'intervjuere');

-- Andre opplysningsmedarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreOpplysningsmedarbeidere', '2022-03-15', null, 21300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreOpplysningsmedarbeidere', 'nb', 'Andre opplysningsmedarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreOpplysningsmedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreOpplysningsmedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreOpplysningsmedarbeidere');

-- Regnskapsmedarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('regnskapsmedarbeidere', '2022-03-15', null, 21400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('regnskapsmedarbeidere', 'nb', 'Regnskapsmedarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'regnskapsmedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'regnskapsmedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'regnskapsmedarbeidere');

-- Forsikrings- og finansmedarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('forsikringsOgFinansmedarbeidere', '2022-03-15', null, 21500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('forsikringsOgFinansmedarbeidere', 'nb', 'Forsikrings- og finansmedarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'forsikringsOgFinansmedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'forsikringsOgFinansmedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'forsikringsOgFinansmedarbeidere');

-- Lønningsmedarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('lonningsmedarbeidere', '2022-03-15', null, 21600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('lonningsmedarbeidere', 'nb', 'Lønningsmedarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'lonningsmedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'lonningsmedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'lonningsmedarbeidere');

-- Lagermedarbeidere og material-forvaltere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('lagermedarbeidereOgMaterialForvaltere', '2022-03-15', null, 21700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('lagermedarbeidereOgMaterialForvaltere', 'nb', 'Lagermedarbeidere og material-forvaltere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'lagermedarbeidereOgMaterialForvaltere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'lagermedarbeidereOgMaterialForvaltere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'lagermedarbeidereOgMaterialForvaltere');

-- Logistikkmedarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('logistikkmedarbeidere', '2022-03-15', null, 21800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('logistikkmedarbeidere', 'nb', 'Logistikkmedarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'logistikkmedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'logistikkmedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'logistikkmedarbeidere');

-- Transportfunksjonærer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('transportfunksjonaerer', '2022-03-15', null, 21900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('transportfunksjonaerer', 'nb', 'Transportfunksjonærer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'transportfunksjonaerer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'transportfunksjonaerer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'transportfunksjonaerer');

-- Bibliotekassistenter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('bibliotekassistenter', '2022-03-15', null, 22000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bibliotekassistenter', 'nb', 'Bibliotekassistenter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'bibliotekassistenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'bibliotekassistenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'bibliotekassistenter');

-- Postbud og postsorterere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('postbudOgPostsorterere', '2022-03-15', null, 22100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('postbudOgPostsorterere', 'nb', 'Postbud og postsorterere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'postbudOgPostsorterere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'postbudOgPostsorterere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'postbudOgPostsorterere');

-- Kodere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kodereMv', '2022-03-15', null, 22200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kodereMv', 'nb', 'Kodere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kodereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kodereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kodereMv');

-- Arkivassistenter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('arkivassistenter', '2022-03-15', null, 22300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arkivassistenter', 'nb', 'Arkivassistenter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'arkivassistenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'arkivassistenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'arkivassistenter');

-- Personalkontormedarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('personalkontormedarbeidere', '2022-03-15', null, 22400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('personalkontormedarbeidere', 'nb', 'Personalkontormedarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'personalkontormedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'personalkontormedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'personalkontormedarbeidere');

-- Flyverter, båtverter mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('flyverterBatverterMv', '2022-03-15', null, 22500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('flyverterBatverterMv', 'nb', 'Flyverter, båtverter mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'flyverterBatverterMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'flyverterBatverterMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'flyverterBatverterMv');

-- Konduktører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('konduktorer', '2022-03-15', null, 22600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('konduktorer', 'nb', 'Konduktører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'konduktorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'konduktorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'konduktorer');

-- Reiseledere og guider
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('reiseledereOgGuider', '2022-03-15', null, 22700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('reiseledereOgGuider', 'nb', 'Reiseledere og guider');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'reiseledereOgGuider');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'reiseledereOgGuider');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'reiseledereOgGuider');

-- Kokker
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kokker', '2022-03-15', null, 22800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kokker', 'nb', 'Kokker');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kokker');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kokker');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kokker');

-- Servitører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('servitorer', '2022-03-15', null, 22900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('servitorer', 'nb', 'Servitører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'servitorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'servitorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'servitorer');

-- Bartendere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('bartendere', '2022-03-15', null, 23000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bartendere', 'nb', 'Bartendere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'bartendere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'bartendere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'bartendere');

-- Frisører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('frisorer', '2022-03-15', null, 23100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('frisorer', 'nb', 'Frisører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'frisorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'frisorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'frisorer');

-- Kosmetologer mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kosmetologerMv', '2022-03-15', null, 23200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kosmetologerMv', 'nb', 'Kosmetologer mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kosmetologerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kosmetologerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kosmetologerMv');

-- Renholdsledere i virksomheter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('renholdsledereIVirksomheter', '2022-03-15', null, 23300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('renholdsledereIVirksomheter', 'nb', 'Renholdsledere i virksomheter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'renholdsledereIVirksomheter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'renholdsledereIVirksomheter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'renholdsledereIVirksomheter');

-- Husholdere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('husholdere', '2022-03-15', null, 23400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('husholdere', 'nb', 'Husholdere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'husholdere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'husholdere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'husholdere');

-- Vaktmestre
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('vaktmestre', '2022-03-15', null, 23500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('vaktmestre', 'nb', 'Vaktmestre');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'vaktmestre');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'vaktmestre');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'vaktmestre');

-- Astrologer mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('astrologerMv', '2022-03-15', null, 23600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('astrologerMv', 'nb', 'Astrologer mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'astrologerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'astrologerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'astrologerMv');

-- Begravelsesbyrå- og krematoriearbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('begravelsesbyraOgKrematoriearbeidere', '2022-03-15', null, 23700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('begravelsesbyraOgKrematoriearbeidere', 'nb', 'Begravelsesbyrå- og krematoriearbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'begravelsesbyraOgKrematoriearbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'begravelsesbyraOgKrematoriearbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'begravelsesbyraOgKrematoriearbeidere');

-- Dyrepassere og - trenere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('dyrepassereOgTrenereMv', '2022-03-15', null, 23800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('dyrepassereOgTrenereMv', 'nb', 'Dyrepassere og - trenere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'dyrepassereOgTrenereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'dyrepassereOgTrenereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'dyrepassereOgTrenereMv');

-- Kjøreskolelærere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kjoreskolelaerere', '2022-03-15', null, 23900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kjoreskolelaerere', 'nb', 'Kjøreskolelærere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kjoreskolelaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kjoreskolelaerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kjoreskolelaerere');

-- Andre personlige tjenesteytere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andrePersonligeTjenesteytere', '2022-03-15', null, 24000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andrePersonligeTjenesteytere', 'nb', 'Andre personlige tjenesteytere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andrePersonligeTjenesteytere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andrePersonligeTjenesteytere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andrePersonligeTjenesteytere');

-- Torghandlere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('torghandlere', '2022-03-15', null, 24100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('torghandlere', 'nb', 'Torghandlere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'torghandlere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'torghandlere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'torghandlere');

-- Gateselgere, mat
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('gateselgereMat', '2022-03-15', null, 24200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('gateselgereMat', 'nb', 'Gateselgere, mat');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'gateselgereMat');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'gateselgereMat');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'gateselgereMat');

-- Innehavere av kiosk/liten butikk
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('innehavereAvKioskLitenButikk', '2022-03-15', null, 24300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('innehavereAvKioskLitenButikk', 'nb', 'Innehavere av kiosk/liten butikk');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'innehavereAvKioskLitenButikk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'innehavereAvKioskLitenButikk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'innehavereAvKioskLitenButikk');

-- Butikkavdelingssjefer
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('butikkavdelingssjefer', '2022-03-15', null, 24400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('butikkavdelingssjefer', 'nb', 'Butikkavdelingssjefer');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'butikkavdelingssjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'butikkavdelingssjefer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'butikkavdelingssjefer');

-- Butikkmedarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('butikkmedarbeidere', '2022-03-15', null, 24500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('butikkmedarbeidere', 'nb', 'Butikkmedarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'butikkmedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'butikkmedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'butikkmedarbeidere');

-- Billettselgere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('billettselgere', '2022-03-15', null, 24600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('billettselgere', 'nb', 'Billettselgere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'billettselgere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'billettselgere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'billettselgere');

-- Mannekenger og modeller
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('mannekengerOgModeller', '2022-03-15', null, 24700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('mannekengerOgModeller', 'nb', 'Mannekenger og modeller');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'mannekengerOgModeller');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'mannekengerOgModeller');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'mannekengerOgModeller');

-- Demonstrasjonsselgere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('demonstrasjonsselgere', '2022-03-15', null, 24800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('demonstrasjonsselgere', 'nb', 'Demonstrasjonsselgere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'demonstrasjonsselgere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'demonstrasjonsselgere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'demonstrasjonsselgere');

-- Dørselgere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('dorselgere', '2022-03-15', null, 24900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('dorselgere', 'nb', 'Dørselgere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'dorselgere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'dorselgere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'dorselgere');

-- Telefon- og nettselgere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('telefonOgNettselgere', '2022-03-15', null, 25000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('telefonOgNettselgere', 'nb', 'Telefon- og nettselgere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'telefonOgNettselgere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'telefonOgNettselgere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'telefonOgNettselgere');

-- Servicemedarbeidere (bensinstasjon)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('servicemedarbeidereBensinstasjon', '2022-03-15', null, 25100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('servicemedarbeidereBensinstasjon', 'nb', 'Servicemedarbeidere (bensinstasjon)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'servicemedarbeidereBensinstasjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'servicemedarbeidereBensinstasjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'servicemedarbeidereBensinstasjon');

-- Gatekjøkken- og kafémedarbeidere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('gatekjokkenOgKafemedarbeidereMv', '2022-03-15', null, 25200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('gatekjokkenOgKafemedarbeidereMv', 'nb', 'Gatekjøkken- og kafémedarbeidere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'gatekjokkenOgKafemedarbeidereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'gatekjokkenOgKafemedarbeidereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'gatekjokkenOgKafemedarbeidereMv');

-- Andre salgsmedarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreSalgsmedarbeidere', '2022-03-15', null, 25300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreSalgsmedarbeidere', 'nb', 'Andre salgsmedarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreSalgsmedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreSalgsmedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreSalgsmedarbeidere');

-- Barnehage- og skolefritidsassistenter mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('barnehageOgSkolefritidsassistenterMv', '2022-03-15', null, 25400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('barnehageOgSkolefritidsassistenterMv', 'nb', 'Barnehage- og skolefritidsassistenter mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'barnehageOgSkolefritidsassistenterMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'barnehageOgSkolefritidsassistenterMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'barnehageOgSkolefritidsassistenterMv');

-- Skoleassistenter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('skoleassistenter', '2022-03-15', null, 25500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('skoleassistenter', 'nb', 'Skoleassistenter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'skoleassistenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'skoleassistenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'skoleassistenter');

-- Helsefagarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('helsefagarbeidere', '2022-03-15', null, 25600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('helsefagarbeidere', 'nb', 'Helsefagarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'helsefagarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'helsefagarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'helsefagarbeidere');

-- Hjemmehjelper
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('hjemmehjelper', '2022-03-15', null, 25700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hjemmehjelper', 'nb', 'Hjemmehjelper');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'hjemmehjelper');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'hjemmehjelper');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'hjemmehjelper');

-- Andre pleiemedarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andrePleiemedarbeidere', '2022-03-15', null, 25800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andrePleiemedarbeidere', 'nb', 'Andre pleiemedarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andrePleiemedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andrePleiemedarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andrePleiemedarbeidere');

-- Brannkonstabler
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('brannkonstabler', '2022-03-15', null, 25900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('brannkonstabler', 'nb', 'Brannkonstabler');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'brannkonstabler');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'brannkonstabler');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'brannkonstabler');

-- Fengselsbetjenter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('fengselsbetjenter', '2022-03-15', null, 26000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fengselsbetjenter', 'nb', 'Fengselsbetjenter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'fengselsbetjenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'fengselsbetjenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'fengselsbetjenter');

-- Vektere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('vektere', '2022-03-15', null, 26100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('vektere', 'nb', 'Vektere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'vektere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'vektere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'vektere');

-- Andre sikkerhetsarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreSikkerhetsarbeidere', '2022-03-15', null, 26200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreSikkerhetsarbeidere', 'nb', 'Andre sikkerhetsarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreSikkerhetsarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreSikkerhetsarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreSikkerhetsarbeidere');

-- Korn- og grønnsaksprodusenter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kornOgGronnsaksprodusenter', '2022-03-15', null, 26300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kornOgGronnsaksprodusenter', 'nb', 'Korn- og grønnsaksprodusenter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kornOgGronnsaksprodusenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kornOgGronnsaksprodusenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kornOgGronnsaksprodusenter');

-- Frukt- og bærprodusenter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('fruktOgBaerprodusenter', '2022-03-15', null, 26400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fruktOgBaerprodusenter', 'nb', 'Frukt- og bærprodusenter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'fruktOgBaerprodusenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'fruktOgBaerprodusenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'fruktOgBaerprodusenter');

-- Gartnere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('gartnere', '2022-03-15', null, 26500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('gartnere', 'nb', 'Gartnere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'gartnere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'gartnere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'gartnere');

-- Kombinasjonsbrukere, nyttevekster
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kombinasjonsbrukereNyttevekster', '2022-03-15', null, 26600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kombinasjonsbrukereNyttevekster', 'nb', 'Kombinasjonsbrukere, nyttevekster');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kombinasjonsbrukereNyttevekster');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kombinasjonsbrukereNyttevekster');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kombinasjonsbrukereNyttevekster');

-- Melke- og husdyrprodusenter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('melkeOgHusdyrprodusenter', '2022-03-15', null, 26700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('melkeOgHusdyrprodusenter', 'nb', 'Melke- og husdyrprodusenter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'melkeOgHusdyrprodusenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'melkeOgHusdyrprodusenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'melkeOgHusdyrprodusenter');

-- Egg- og fjærfeprodusenter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('eggOgFjaerfeprodusenter', '2022-03-15', null, 26800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('eggOgFjaerfeprodusenter', 'nb', 'Egg- og fjærfeprodusenter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'eggOgFjaerfeprodusenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'eggOgFjaerfeprodusenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'eggOgFjaerfeprodusenter');

-- Birøktere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('biroktereMv', '2022-03-15', null, 26900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('biroktereMv', 'nb', 'Birøktere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'biroktereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'biroktereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'biroktereMv');

-- Andre dyreoppdrettere og røktere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreDyreoppdrettereOgRoktere', '2022-03-15', null, 27000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreDyreoppdrettereOgRoktere', 'nb', 'Andre dyreoppdrettere og røktere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreDyreoppdrettereOgRoktere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreDyreoppdrettereOgRoktere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreDyreoppdrettereOgRoktere');

-- Plante- og husdyrprodusenter (kombinasjonsbruk)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('planteOgHusdyrprodusenterKombinasjonsbruk', '2022-03-15', null, 27100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('planteOgHusdyrprodusenterKombinasjonsbruk', 'nb', 'Plante- og husdyrprodusenter (kombinasjonsbruk)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'planteOgHusdyrprodusenterKombinasjonsbruk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'planteOgHusdyrprodusenterKombinasjonsbruk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'planteOgHusdyrprodusenterKombinasjonsbruk');

-- Skogbrukere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('skogbrukere', '2022-03-15', null, 27200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('skogbrukere', 'nb', 'Skogbrukere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'skogbrukere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'skogbrukere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'skogbrukere');

-- Havbruksarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('havbruksarbeidere', '2022-03-15', null, 27300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('havbruksarbeidere', 'nb', 'Havbruksarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'havbruksarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'havbruksarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'havbruksarbeidere');

-- Fiskere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('fiskere', '2022-03-15', null, 27400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fiskere', 'nb', 'Fiskere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'fiskere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'fiskere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'fiskere');

-- Fangstfolk
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('fangstfolk', '2022-03-15', null, 27500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fangstfolk', 'nb', 'Fangstfolk');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'fangstfolk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'fangstfolk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'fangstfolk');

-- Murere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('murere', '2022-03-15', null, 27600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('murere', 'nb', 'Murere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'murere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'murere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'murere');

-- Steinhoggere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('steinhoggereMv', '2022-03-15', null, 27700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('steinhoggereMv', 'nb', 'Steinhoggere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'steinhoggereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'steinhoggereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'steinhoggereMv');

-- Betongarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('betongarbeidere', '2022-03-15', null, 27800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('betongarbeidere', 'nb', 'Betongarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'betongarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'betongarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'betongarbeidere');

-- Tømrere og snekkere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('tomrereOgSnekkere', '2022-03-15', null, 27900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('tomrereOgSnekkere', 'nb', 'Tømrere og snekkere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'tomrereOgSnekkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'tomrereOgSnekkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'tomrereOgSnekkere');

-- Andre bygningsarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreBygningsarbeidere', '2022-03-15', null, 28000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreBygningsarbeidere', 'nb', 'Andre bygningsarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreBygningsarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreBygningsarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreBygningsarbeidere');

-- Taktekkere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('taktekkere', '2022-03-15', null, 28100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('taktekkere', 'nb', 'Taktekkere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'taktekkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'taktekkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'taktekkere');

-- Gulv- og flisleggere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('gulvOgFlisleggere', '2022-03-15', null, 28200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('gulvOgFlisleggere', 'nb', 'Gulv- og flisleggere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'gulvOgFlisleggere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'gulvOgFlisleggere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'gulvOgFlisleggere');

-- Gips- og sparklingsarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('gipsOgSparklingsarbeidere', '2022-03-15', null, 28300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('gipsOgSparklingsarbeidere', 'nb', 'Gips- og sparklingsarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'gipsOgSparklingsarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'gipsOgSparklingsarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'gipsOgSparklingsarbeidere');

-- Isolatører mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('isolatorerMv', '2022-03-15', null, 28400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('isolatorerMv', 'nb', 'Isolatører mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'isolatorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'isolatorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'isolatorerMv');

-- Glassarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('glassarbeidere', '2022-03-15', null, 28500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('glassarbeidere', 'nb', 'Glassarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'glassarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'glassarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'glassarbeidere');

-- Rørleggere og VVS-montører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('rorleggereOgVvsMontorer', '2022-03-15', null, 28600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('rorleggereOgVvsMontorer', 'nb', 'Rørleggere og VVS-montører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'rorleggereOgVvsMontorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'rorleggereOgVvsMontorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'rorleggereOgVvsMontorer');

-- Kuldemontører mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kuldemontorerMv', '2022-03-15', null, 28700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kuldemontorerMv', 'nb', 'Kuldemontører mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kuldemontorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kuldemontorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kuldemontorerMv');

-- Malere og byggtapetserere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('malereOgByggtapetserere', '2022-03-15', null, 28800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('malereOgByggtapetserere', 'nb', 'Malere og byggtapetserere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'malereOgByggtapetserere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'malereOgByggtapetserere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'malereOgByggtapetserere');

-- Overflatebehandlere og lakkerere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('overflatebehandlereOgLakkerere', '2022-03-15', null, 28900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('overflatebehandlereOgLakkerere', 'nb', 'Overflatebehandlere og lakkerere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'overflatebehandlereOgLakkerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'overflatebehandlereOgLakkerere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'overflatebehandlereOgLakkerere');

-- Feiere, fasaderenholdere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('feiereFasaderenholdereMv', '2022-03-15', null, 29000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('feiereFasaderenholdereMv', 'nb', 'Feiere, fasaderenholdere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'feiereFasaderenholdereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'feiereFasaderenholdereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'feiereFasaderenholdereMv');

-- Støpere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('stopere', '2022-03-15', null, 29100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('stopere', 'nb', 'Støpere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'stopere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'stopere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'stopere');

-- Sveisere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sveisere', '2022-03-15', null, 29200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sveisere', 'nb', 'Sveisere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sveisere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sveisere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sveisere');

-- Kopper- og blikkenslagere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kopperOgBlikkenslagere', '2022-03-15', null, 29300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kopperOgBlikkenslagere', 'nb', 'Kopper- og blikkenslagere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kopperOgBlikkenslagere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kopperOgBlikkenslagere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kopperOgBlikkenslagere');

-- Platearbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('platearbeidere', '2022-03-15', null, 29400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('platearbeidere', 'nb', 'Platearbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'platearbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'platearbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'platearbeidere');

-- Riggere og spleisere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('riggereOgSpleisere', '2022-03-15', null, 29500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('riggereOgSpleisere', 'nb', 'Riggere og spleisere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'riggereOgSpleisere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'riggereOgSpleisere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'riggereOgSpleisere');

-- Smeder
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('smeder', '2022-03-15', null, 29600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('smeder', 'nb', 'Smeder');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'smeder');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'smeder');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'smeder');

-- Verktøymaker, låsesmeder mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('verktoymakerLasesmederMv', '2022-03-15', null, 29700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('verktoymakerLasesmederMv', 'nb', 'Verktøymaker, låsesmeder mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'verktoymakerLasesmederMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'verktoymakerLasesmederMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'verktoymakerLasesmederMv');

-- Metalldreiere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('metalldreiereMv', '2022-03-15', null, 29800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('metalldreiereMv', 'nb', 'Metalldreiere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'metalldreiereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'metalldreiereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'metalldreiereMv');

-- Metallslipere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('metallslipere', '2022-03-15', null, 29900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('metallslipere', 'nb', 'Metallslipere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'metallslipere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'metallslipere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'metallslipere');

-- Bilmekanikere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('bilmekanikere', '2022-03-15', null, 30000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bilmekanikere', 'nb', 'Bilmekanikere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'bilmekanikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'bilmekanikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'bilmekanikere');

-- Mekanikere innen flytekniske fag
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('mekanikereInnenFlytekniskeFag', '2022-03-15', null, 30100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('mekanikereInnenFlytekniskeFag', 'nb', 'Mekanikere innen flytekniske fag');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'mekanikereInnenFlytekniskeFag');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'mekanikereInnenFlytekniskeFag');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'mekanikereInnenFlytekniskeFag');

-- Anleggsmaskin- og industrimekanikere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('anleggsmaskinOgIndustrimekanikere', '2022-03-15', null, 30200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('anleggsmaskinOgIndustrimekanikere', 'nb', 'Anleggsmaskin- og industrimekanikere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'anleggsmaskinOgIndustrimekanikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'anleggsmaskinOgIndustrimekanikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'anleggsmaskinOgIndustrimekanikere');

-- Sykkelreparatører mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('sykkelreparatorerMv', '2022-03-15', null, 30300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sykkelreparatorerMv', 'nb', 'Sykkelreparatører mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'sykkelreparatorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'sykkelreparatorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'sykkelreparatorerMv');

-- Presisjonsinstrumentmakere og -reparatører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('presisjonsinstrumentmakereOgReparatorer', '2022-03-15', null, 30400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('presisjonsinstrumentmakereOgReparatorer', 'nb', 'Presisjonsinstrumentmakere og -reparatører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'presisjonsinstrumentmakereOgReparatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'presisjonsinstrumentmakereOgReparatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'presisjonsinstrumentmakereOgReparatorer');

-- Musikkinstrumentmakere og -stemmere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('musikkinstrumentmakereOgStemmere', '2022-03-15', null, 30500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('musikkinstrumentmakereOgStemmere', 'nb', 'Musikkinstrumentmakere og -stemmere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'musikkinstrumentmakereOgStemmere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'musikkinstrumentmakereOgStemmere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'musikkinstrumentmakereOgStemmere');

-- Gull- og sølvsmeder, gravører mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('gullOgSolvsmederGravorerMv', '2022-03-15', null, 30600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('gullOgSolvsmederGravorerMv', 'nb', 'Gull- og sølvsmeder, gravører mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'gullOgSolvsmederGravorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'gullOgSolvsmederGravorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'gullOgSolvsmederGravorerMv');

-- Keramikere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('keramikereMv', '2022-03-15', null, 30700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('keramikereMv', 'nb', 'Keramikere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'keramikereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'keramikereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'keramikereMv');

-- Glasshåndverkere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('glasshandverkere', '2022-03-15', null, 30800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('glasshandverkere', 'nb', 'Glasshåndverkere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'glasshandverkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'glasshandverkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'glasshandverkere');

-- Dekormalere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('dekormalereMv', '2022-03-15', null, 30900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('dekormalereMv', 'nb', 'Dekormalere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'dekormalereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'dekormalereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'dekormalereMv');

-- Kunsthåndverkere i tre mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kunsthandverkereITreMv', '2022-03-15', null, 31000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kunsthandverkereITreMv', 'nb', 'Kunsthåndverkere i tre mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kunsthandverkereITreMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kunsthandverkereITreMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kunsthandverkereITreMv');

-- Vevere, strikkere mv. (innen husflidsproduksjon)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('vevereStrikkereMvInnenHusflidsproduksjon', '2022-03-15', null, 31100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('vevereStrikkereMvInnenHusflidsproduksjon', 'nb', 'Vevere, strikkere mv. (innen husflidsproduksjon)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'vevereStrikkereMvInnenHusflidsproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'vevereStrikkereMvInnenHusflidsproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'vevereStrikkereMvInnenHusflidsproduksjon');

-- Andre kunsthåndverkere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreKunsthandverkere', '2022-03-15', null, 31200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreKunsthandverkere', 'nb', 'Andre kunsthåndverkere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreKunsthandverkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreKunsthandverkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreKunsthandverkere');

-- Førtrykkere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('fortrykkere', '2022-03-15', null, 31300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fortrykkere', 'nb', 'Førtrykkere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'fortrykkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'fortrykkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'fortrykkere');

-- Trykkere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('trykkere', '2022-03-15', null, 31400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('trykkere', 'nb', 'Trykkere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'trykkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'trykkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'trykkere');

-- Innbindere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('innbindereMv', '2022-03-15', null, 31500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('innbindereMv', 'nb', 'Innbindere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'innbindereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'innbindereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'innbindereMv');

-- Elektrikere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('elektrikere', '2022-03-15', null, 31600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('elektrikere', 'nb', 'Elektrikere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'elektrikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'elektrikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'elektrikere');

-- Automatikere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('automatikere', '2022-03-15', null, 31700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('automatikere', 'nb', 'Automatikere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'automatikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'automatikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'automatikere');

-- Energimontører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('energimontorer', '2022-03-15', null, 31800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('energimontorer', 'nb', 'Energimontører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'energimontorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'energimontorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'energimontorer');

-- Serviceelektronikere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('serviceelektronikere', '2022-03-15', null, 31900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('serviceelektronikere', 'nb', 'Serviceelektronikere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'serviceelektronikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'serviceelektronikere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'serviceelektronikere');

-- Tele- og IKT-installatører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('teleOgIktInstallatorer', '2022-03-15', null, 32000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('teleOgIktInstallatorer', 'nb', 'Tele- og IKT-installatører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'teleOgIktInstallatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'teleOgIktInstallatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'teleOgIktInstallatorer');

-- Slaktere, fiskehandlere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('slaktereFiskehandlereMv', '2022-03-15', null, 32100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('slaktereFiskehandlereMv', 'nb', 'Slaktere, fiskehandlere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'slaktereFiskehandlereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'slaktereFiskehandlereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'slaktereFiskehandlereMv');

-- Bakere, konditorer mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('bakereKonditorerMv', '2022-03-15', null, 32200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bakereKonditorerMv', 'nb', 'Bakere, konditorer mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'bakereKonditorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'bakereKonditorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'bakereKonditorerMv');

-- Ystere mv. (gårdsproduksjon)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('ystereMvGardsproduksjon', '2022-03-15', null, 32300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ystereMvGardsproduksjon', 'nb', 'Ystere mv. (gårdsproduksjon)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'ystereMvGardsproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'ystereMvGardsproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'ystereMvGardsproduksjon');

-- Saftere, syltere mv. (gårdsproduksjon)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('saftereSyltereMvGardsproduksjon', '2022-03-15', null, 32400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('saftereSyltereMvGardsproduksjon', 'nb', 'Saftere, syltere mv. (gårdsproduksjon)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'saftereSyltereMvGardsproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'saftereSyltereMvGardsproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'saftereSyltereMvGardsproduksjon');

-- Prøvesmakere og kvalitetsbedømmere av mat og drikke
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('provesmakereOgKvalitetsbedommereAvMatOgDrikke', '2022-03-15', null, 32500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('provesmakereOgKvalitetsbedommereAvMatOgDrikke', 'nb', 'Prøvesmakere og kvalitetsbedømmere av mat og drikke');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'provesmakereOgKvalitetsbedommereAvMatOgDrikke');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'provesmakereOgKvalitetsbedommereAvMatOgDrikke');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'provesmakereOgKvalitetsbedommereAvMatOgDrikke');

-- Møbelsnekkere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('mobelsnekkere', '2022-03-15', null, 32600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('mobelsnekkere', 'nb', 'Møbelsnekkere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'mobelsnekkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'mobelsnekkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'mobelsnekkere');

-- Skreddere, buntmakere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('skreddereBuntmakereMv', '2022-03-15', null, 32700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('skreddereBuntmakereMv', 'nb', 'Skreddere, buntmakere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'skreddereBuntmakereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'skreddereBuntmakereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'skreddereBuntmakereMv');

-- Gradører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('gradorer', '2022-03-15', null, 32800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('gradorer', 'nb', 'Gradører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'gradorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'gradorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'gradorer');

-- Møbeltapetserere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('mobeltapetserereMv', '2022-03-15', null, 32900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('mobeltapetserereMv', 'nb', 'Møbeltapetserere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'mobeltapetserereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'mobeltapetserereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'mobeltapetserereMv');

-- Skinnberedere og garvere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('skinnberedereOgGarvere', '2022-03-15', null, 33000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('skinnberedereOgGarvere', 'nb', 'Skinnberedere og garvere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'skinnberedereOgGarvere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'skinnberedereOgGarvere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'skinnberedereOgGarvere');

-- Skomakere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('skomakere', '2022-03-15', null, 33100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('skomakere', 'nb', 'Skomakere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'skomakere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'skomakere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'skomakere');

-- Yrkesdykkere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('yrkesdykkere', '2022-03-15', null, 33200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('yrkesdykkere', 'nb', 'Yrkesdykkere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'yrkesdykkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'yrkesdykkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'yrkesdykkere');

-- Skytebaser og sprengningsarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('skytebaserOgSprengningsarbeidere', '2022-03-15', null, 33300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('skytebaserOgSprengningsarbeidere', 'nb', 'Skytebaser og sprengningsarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'skytebaserOgSprengningsarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'skytebaserOgSprengningsarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'skytebaserOgSprengningsarbeidere');

-- Produkttestere (ikke matprodukter)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('produkttestereIkkeMatprodukter', '2022-03-15', null, 33400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('produkttestereIkkeMatprodukter', 'nb', 'Produkttestere (ikke matprodukter)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'produkttestereIkkeMatprodukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'produkttestereIkkeMatprodukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'produkttestereIkkeMatprodukter');

-- Desinfeksjonsarbeidere og skadedyrbekjempere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('desinfeksjonsarbeidereOgSkadedyrbekjempere', '2022-03-15', null, 33500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('desinfeksjonsarbeidereOgSkadedyrbekjempere', 'nb', 'Desinfeksjonsarbeidere og skadedyrbekjempere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'desinfeksjonsarbeidereOgSkadedyrbekjempere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'desinfeksjonsarbeidereOgSkadedyrbekjempere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'desinfeksjonsarbeidereOgSkadedyrbekjempere');

-- Andre håndverkere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreHandverkere', '2022-03-15', null, 33600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreHandverkere', 'nb', 'Andre håndverkere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreHandverkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreHandverkere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreHandverkere');

-- Bergfagarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('bergfagarbeidere', '2022-03-15', null, 33700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bergfagarbeidere', 'nb', 'Bergfagarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'bergfagarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'bergfagarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'bergfagarbeidere');

-- Prosessoperatører (oppredning)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('prosessoperatorerOppredning', '2022-03-15', null, 33800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('prosessoperatorerOppredning', 'nb', 'Prosessoperatører (oppredning)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'prosessoperatorerOppredning');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'prosessoperatorerOppredning');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'prosessoperatorerOppredning');

-- Operatører innen boring mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenBoringMv', '2022-03-15', null, 33900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenBoringMv', 'nb', 'Operatører innen boring mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenBoringMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenBoringMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenBoringMv');

-- Operatører innen produksjon av betong mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenProduksjonAvBetongMv', '2022-03-15', null, 34000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenProduksjonAvBetongMv', 'nb', 'Operatører innen produksjon av betong mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenProduksjonAvBetongMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenProduksjonAvBetongMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenProduksjonAvBetongMv');

-- Operatører innen metallurgiske prosessfag
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenMetallurgiskeProsessfag', '2022-03-15', null, 34100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenMetallurgiskeProsessfag', 'nb', 'Operatører innen metallurgiske prosessfag');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenMetallurgiskeProsessfag');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenMetallurgiskeProsessfag');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenMetallurgiskeProsessfag');

-- Operatører innen metallflatebehandling
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenMetallflatebehandling', '2022-03-15', null, 34200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenMetallflatebehandling', 'nb', 'Operatører innen metallflatebehandling');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenMetallflatebehandling');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenMetallflatebehandling');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenMetallflatebehandling');

-- Operatører innen kjemisk industri
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenKjemiskIndustri', '2022-03-15', null, 34300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenKjemiskIndustri', 'nb', 'Operatører innen kjemisk industri');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenKjemiskIndustri');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenKjemiskIndustri');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenKjemiskIndustri');

-- Operatører innen produksjon av fotofilm og -papir mv.Operatører innen produksjon av gummiprodukter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenProduksjonAvFotofilmOgPapirMvOperatorerInnenProduksjonAvGummiprodukter', '2022-03-15', null, 34400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenProduksjonAvFotofilmOgPapirMvOperatorerInnenProduksjonAvGummiprodukter', 'nb', 'Operatører innen produksjon av fotofilm og -papir mv.Operatører innen produksjon av gummiprodukter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenProduksjonAvFotofilmOgPapirMvOperatorerInnenProduksjonAvGummiprodukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenProduksjonAvFotofilmOgPapirMvOperatorerInnenProduksjonAvGummiprodukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenProduksjonAvFotofilmOgPapirMvOperatorerInnenProduksjonAvGummiprodukter');

-- Operatører innen plastprodukter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenPlastprodukter', '2022-03-15', null, 34500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenPlastprodukter', 'nb', 'Operatører innen plastprodukter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenPlastprodukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenPlastprodukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenPlastprodukter');

-- Operatører innen papirprodukter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenPapirprodukter', '2022-03-15', null, 34600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenPapirprodukter', 'nb', 'Operatører innen papirprodukter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenPapirprodukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenPapirprodukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenPapirprodukter');

-- Spinne- og nøstemaskinoperatører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('spinneOgNostemaskinoperatorer', '2022-03-15', null, 34700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('spinneOgNostemaskinoperatorer', 'nb', 'Spinne- og nøstemaskinoperatører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'spinneOgNostemaskinoperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'spinneOgNostemaskinoperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'spinneOgNostemaskinoperatorer');

-- Operatører innen tekstilproduksjon mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenTekstilproduksjonMv', '2022-03-15', null, 34800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenTekstilproduksjonMv', 'nb', 'Operatører innen tekstilproduksjon mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenTekstilproduksjonMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenTekstilproduksjonMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenTekstilproduksjonMv');

-- Industrisyere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('industrisyere', '2022-03-15', null, 34900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('industrisyere', 'nb', 'Industrisyere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'industrisyere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'industrisyere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'industrisyere');

-- Operatører innen tekstilbearbeiding
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenTekstilbearbeiding', '2022-03-15', null, 35000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenTekstilbearbeiding', 'nb', 'Operatører innen tekstilbearbeiding');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenTekstilbearbeiding');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenTekstilbearbeiding');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenTekstilbearbeiding');

-- Operatører innen pels, skinn- og lærbearbeiding
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenPelsSkinnOgLaerbearbeiding', '2022-03-15', null, 35100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenPelsSkinnOgLaerbearbeiding', 'nb', 'Operatører innen pels, skinn- og lærbearbeiding');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenPelsSkinnOgLaerbearbeiding');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenPelsSkinnOgLaerbearbeiding');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenPelsSkinnOgLaerbearbeiding');

-- Operatører innen skinn og lærprodukter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenSkinnOgLaerprodukter', '2022-03-15', null, 35200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenSkinnOgLaerprodukter', 'nb', 'Operatører innen skinn og lærprodukter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenSkinnOgLaerprodukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenSkinnOgLaerprodukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenSkinnOgLaerprodukter');

-- Renseri- og vaskerimaskinoperatører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('renseriOgVaskerimaskinoperatorer', '2022-03-15', null, 35300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('renseriOgVaskerimaskinoperatorer', 'nb', 'Renseri- og vaskerimaskinoperatører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'renseriOgVaskerimaskinoperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'renseriOgVaskerimaskinoperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'renseriOgVaskerimaskinoperatorer');

-- Andre operatører innen produksjon av tekstiler, pels, skinn og lær
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreOperatorerInnenProduksjonAvTekstilerPelsSkinnOgLaer', '2022-03-15', null, 35400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreOperatorerInnenProduksjonAvTekstilerPelsSkinnOgLaer', 'nb', 'Andre operatører innen produksjon av tekstiler, pels, skinn og lær');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreOperatorerInnenProduksjonAvTekstilerPelsSkinnOgLaer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreOperatorerInnenProduksjonAvTekstilerPelsSkinnOgLaer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreOperatorerInnenProduksjonAvTekstilerPelsSkinnOgLaer');

-- Operatører innen næringsmiddelproduksjon
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenNaeringsmiddelproduksjon', '2022-03-15', null, 35500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenNaeringsmiddelproduksjon', 'nb', 'Operatører innen næringsmiddelproduksjon');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenNaeringsmiddelproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenNaeringsmiddelproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenNaeringsmiddelproduksjon');

-- Operatører innen treforedling
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenTreforedling', '2022-03-15', null, 35600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenTreforedling', 'nb', 'Operatører innen treforedling');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenTreforedling');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenTreforedling');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenTreforedling');

-- Operatører innen trelastproduksjon
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenTrelastproduksjon', '2022-03-15', null, 35700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenTrelastproduksjon', 'nb', 'Operatører innen trelastproduksjon');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenTrelastproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenTrelastproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenTrelastproduksjon');

-- Operatører innen glass- og keramisk produksjon
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('operatorerInnenGlassOgKeramiskProduksjon', '2022-03-15', null, 35800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('operatorerInnenGlassOgKeramiskProduksjon', 'nb', 'Operatører innen glass- og keramisk produksjon');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'operatorerInnenGlassOgKeramiskProduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'operatorerInnenGlassOgKeramiskProduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'operatorerInnenGlassOgKeramiskProduksjon');

-- Fyrkjele- og turbinoperatører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('fyrkjeleOgTurbinoperatorer', '2022-03-15', null, 35900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fyrkjeleOgTurbinoperatorer', 'nb', 'Fyrkjele- og turbinoperatører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'fyrkjeleOgTurbinoperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'fyrkjeleOgTurbinoperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'fyrkjeleOgTurbinoperatorer');

-- Pakke-, tappe- og etikettmaskinoperatører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('pakkeTappeOgEtikettmaskinoperatorer', '2022-03-15', null, 36000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('pakkeTappeOgEtikettmaskinoperatorer', 'nb', 'Pakke-, tappe- og etikettmaskinoperatører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'pakkeTappeOgEtikettmaskinoperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'pakkeTappeOgEtikettmaskinoperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'pakkeTappeOgEtikettmaskinoperatorer');

-- Andre stasjonære maskinoperatører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreStasjonaereMaskinoperatorer', '2022-03-15', null, 36100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreStasjonaereMaskinoperatorer', 'nb', 'Andre stasjonære maskinoperatører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreStasjonaereMaskinoperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreStasjonaereMaskinoperatorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreStasjonaereMaskinoperatorer');

-- Montører av mekaniske produkter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('montorerAvMekaniskeProdukter', '2022-03-15', null, 36200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('montorerAvMekaniskeProdukter', 'nb', 'Montører av mekaniske produkter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'montorerAvMekaniskeProdukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'montorerAvMekaniskeProdukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'montorerAvMekaniskeProdukter');

-- Montører av elektriske og elektroniske produkter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('montorerAvElektriskeOgElektroniskeProdukter', '2022-03-15', null, 36300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('montorerAvElektriskeOgElektroniskeProdukter', 'nb', 'Montører av elektriske og elektroniske produkter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'montorerAvElektriskeOgElektroniskeProdukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'montorerAvElektriskeOgElektroniskeProdukter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'montorerAvElektriskeOgElektroniskeProdukter');

-- Andre montører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreMontorer', '2022-03-15', null, 36400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreMontorer', 'nb', 'Andre montører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreMontorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreMontorer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreMontorer');

-- Lokomotiv og T-baneførere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('lokomotivOgTBaneforere', '2022-03-15', null, 36500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('lokomotivOgTBaneforere', 'nb', 'Lokomotiv og T-baneførere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'lokomotivOgTBaneforere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'lokomotivOgTBaneforere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'lokomotivOgTBaneforere');

-- Skiftekonduktører mv
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('skiftekonduktorerMv', '2022-03-15', null, 36600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('skiftekonduktorerMv', 'nb', 'Skiftekonduktører mv');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'skiftekonduktorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'skiftekonduktorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'skiftekonduktorerMv');

-- Bil-, drosje- og varebilførere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('bilDrosjeOgVarebilforere', '2022-03-15', null, 36700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bilDrosjeOgVarebilforere', 'nb', 'Bil-, drosje- og varebilførere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'bilDrosjeOgVarebilforere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'bilDrosjeOgVarebilforere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'bilDrosjeOgVarebilforere');

-- Bussjåfører og trikkeførere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('bussjaforerOgTrikkeforere', '2022-03-15', null, 36800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bussjaforerOgTrikkeforere', 'nb', 'Bussjåfører og trikkeførere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'bussjaforerOgTrikkeforere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'bussjaforerOgTrikkeforere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'bussjaforerOgTrikkeforere');

-- Lastebil- og trailersjåfører
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('lastebilOgTrailersjaforer', '2022-03-15', null, 36900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('lastebilOgTrailersjaforer', 'nb', 'Lastebil- og trailersjåfører');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'lastebilOgTrailersjaforer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'lastebilOgTrailersjaforer');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'lastebilOgTrailersjaforer');

-- Jordbruks- og skogbruksmaskinførere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('jordbruksOgSkogbruksmaskinforere', '2022-03-15', null, 37000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('jordbruksOgSkogbruksmaskinforere', 'nb', 'Jordbruks- og skogbruksmaskinførere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'jordbruksOgSkogbruksmaskinforere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'jordbruksOgSkogbruksmaskinforere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'jordbruksOgSkogbruksmaskinforere');

-- Anleggsmaskinførere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('anleggsmaskinforere', '2022-03-15', null, 37100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('anleggsmaskinforere', 'nb', 'Anleggsmaskinførere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'anleggsmaskinforere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'anleggsmaskinforere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'anleggsmaskinforere');

-- Kran- og heisførere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kranOgHeisforereMv', '2022-03-15', null, 37200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kranOgHeisforereMv', 'nb', 'Kran- og heisførere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kranOgHeisforereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kranOgHeisforereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kranOgHeisforereMv');

-- Truckførere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('truckforere', '2022-03-15', null, 37300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('truckforere', 'nb', 'Truckførere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'truckforere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'truckforere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'truckforere');

-- Dekks- og maskinmannskap (skip)
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('dekksOgMaskinmannskapSkip', '2022-03-15', null, 37400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('dekksOgMaskinmannskapSkip', 'nb', 'Dekks- og maskinmannskap (skip)');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'dekksOgMaskinmannskapSkip');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'dekksOgMaskinmannskapSkip');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'dekksOgMaskinmannskapSkip');

-- Renholdere i private hjem
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('renholdereIPrivateHjem', '2022-03-15', null, 37500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('renholdereIPrivateHjem', 'nb', 'Renholdere i private hjem');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'renholdereIPrivateHjem');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'renholdereIPrivateHjem');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'renholdereIPrivateHjem');

-- Renholdere i virksomheter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('renholdereIVirksomheter', '2022-03-15', null, 37600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('renholdereIVirksomheter', 'nb', 'Renholdere i virksomheter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'renholdereIVirksomheter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'renholdereIVirksomheter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'renholdereIVirksomheter');

-- Bilvaskere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('bilvaskere', '2022-03-15', null, 37700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bilvaskere', 'nb', 'Bilvaskere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'bilvaskere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'bilvaskere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'bilvaskere');

-- Vinduspussere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('vinduspussere', '2022-03-15', null, 37800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('vinduspussere', 'nb', 'Vinduspussere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'vinduspussere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'vinduspussere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'vinduspussere');

-- Andre rengjørere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreRengjorere', '2022-03-15', null, 37900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreRengjorere', 'nb', 'Andre rengjørere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreRengjorere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreRengjorere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreRengjorere');

-- Hjelpearbeidere i nyttevekstproduksjon
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('hjelpearbeidereINyttevekstproduksjon', '2022-03-15', null, 38000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hjelpearbeidereINyttevekstproduksjon', 'nb', 'Hjelpearbeidere i nyttevekstproduksjon');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'hjelpearbeidereINyttevekstproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'hjelpearbeidereINyttevekstproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'hjelpearbeidereINyttevekstproduksjon');

-- Hjelpearbeidere i husdyrproduksjon
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('hjelpearbeidereIHusdyrproduksjon', '2022-03-15', null, 38100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hjelpearbeidereIHusdyrproduksjon', 'nb', 'Hjelpearbeidere i husdyrproduksjon');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'hjelpearbeidereIHusdyrproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'hjelpearbeidereIHusdyrproduksjon');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'hjelpearbeidereIHusdyrproduksjon');

-- Hjelpearbeidere i kombinasjonsbruk
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('hjelpearbeidereIKombinasjonsbruk', '2022-03-15', null, 38200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hjelpearbeidereIKombinasjonsbruk', 'nb', 'Hjelpearbeidere i kombinasjonsbruk');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'hjelpearbeidereIKombinasjonsbruk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'hjelpearbeidereIKombinasjonsbruk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'hjelpearbeidereIKombinasjonsbruk');

-- Hjelpearbeidere i gartneri mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('hjelpearbeidereIGartneriMv', '2022-03-15', null, 38300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hjelpearbeidereIGartneriMv', 'nb', 'Hjelpearbeidere i gartneri mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'hjelpearbeidereIGartneriMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'hjelpearbeidereIGartneriMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'hjelpearbeidereIGartneriMv');

-- Hjelpearbeidere i skogbruk
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('hjelpearbeidereISkogbruk', '2022-03-15', null, 38400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hjelpearbeidereISkogbruk', 'nb', 'Hjelpearbeidere i skogbruk');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'hjelpearbeidereISkogbruk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'hjelpearbeidereISkogbruk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'hjelpearbeidereISkogbruk');

-- Hjelpearbeidere innen havbruk
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('hjelpearbeidereInnenHavbruk', '2022-03-15', null, 38500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hjelpearbeidereInnenHavbruk', 'nb', 'Hjelpearbeidere innen havbruk');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'hjelpearbeidereInnenHavbruk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'hjelpearbeidereInnenHavbruk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'hjelpearbeidereInnenHavbruk');

-- Hjelpearbeidere i bergverk
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('hjelpearbeidereIBergverk', '2022-03-15', null, 38600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hjelpearbeidereIBergverk', 'nb', 'Hjelpearbeidere i bergverk');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'hjelpearbeidereIBergverk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'hjelpearbeidereIBergverk');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'hjelpearbeidereIBergverk');

-- Hjelpearbeidere i anlegg
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('hjelpearbeidereIAnlegg', '2022-03-15', null, 38700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hjelpearbeidereIAnlegg', 'nb', 'Hjelpearbeidere i anlegg');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'hjelpearbeidereIAnlegg');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'hjelpearbeidereIAnlegg');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'hjelpearbeidereIAnlegg');

-- Hjelpearbeidere i bygg
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('hjelpearbeidereIBygg', '2022-03-15', null, 38800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hjelpearbeidereIBygg', 'nb', 'Hjelpearbeidere i bygg');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'hjelpearbeidereIBygg');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'hjelpearbeidereIBygg');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'hjelpearbeidereIBygg');

-- Håndpakkere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('handpakkereMv', '2022-03-15', null, 38900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('handpakkereMv', 'nb', 'Håndpakkere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'handpakkereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'handpakkereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'handpakkereMv');

-- Andre hjelpearbeidere i industri
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreHjelpearbeidereIIndustri', '2022-03-15', null, 39000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreHjelpearbeidereIIndustri', 'nb', 'Andre hjelpearbeidere i industri');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreHjelpearbeidereIIndustri');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreHjelpearbeidereIIndustri');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreHjelpearbeidereIIndustri');

-- Førere av ikke-motorisert kjøretøy
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('forereAvIkkeMotorisertKjoretoy', '2022-03-15', null, 39100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('forereAvIkkeMotorisertKjoretoy', 'nb', 'Førere av ikke-motorisert kjøretøy');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'forereAvIkkeMotorisertKjoretoy');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'forereAvIkkeMotorisertKjoretoy');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'forereAvIkkeMotorisertKjoretoy');

-- Laste- og lossearbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('lasteOgLossearbeidere', '2022-03-15', null, 39200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('lasteOgLossearbeidere', 'nb', 'Laste- og lossearbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'lasteOgLossearbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'lasteOgLossearbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'lasteOgLossearbeidere');

-- Varepåfyllere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('varepafyllere', '2022-03-15', null, 39300);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('varepafyllere', 'nb', 'Varepåfyllere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'varepafyllere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'varepafyllere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'varepafyllere');

-- Kjøkkenassistenter
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('kjokkenassistenter', '2022-03-15', null, 39400);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kjokkenassistenter', 'nb', 'Kjøkkenassistenter');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'kjokkenassistenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'kjokkenassistenter');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'kjokkenassistenter');

-- Reklamedistributører mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('reklamedistributorerMv', '2022-03-15', null, 39500);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('reklamedistributorerMv', 'nb', 'Reklamedistributører mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'reklamedistributorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'reklamedistributorerMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'reklamedistributorerMv');

-- Renovasjonsarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('renovasjonsarbeidere', '2022-03-15', null, 39600);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('renovasjonsarbeidere', 'nb', 'Renovasjonsarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'renovasjonsarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'renovasjonsarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'renovasjonsarbeidere');

-- Gjenvinningsarbeidere
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('gjenvinningsarbeidere', '2022-03-15', null, 39700);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('gjenvinningsarbeidere', 'nb', 'Gjenvinningsarbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'gjenvinningsarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'gjenvinningsarbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'gjenvinningsarbeidere');

-- Gatefeiere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('gatefeiereMv', '2022-03-15', null, 39800);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('gatefeiereMv', 'nb', 'Gatefeiere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'gatefeiereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'gatefeiereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'gatefeiereMv');

-- Bud mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('budMv', '2022-03-15', null, 39900);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('budMv', 'nb', 'Bud mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'budMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'budMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'budMv');

-- Altmuligmann
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('altmuligmann', '2022-03-15', null, 40000);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('altmuligmann', 'nb', 'Altmuligmann');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'altmuligmann');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'altmuligmann');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'altmuligmann');

-- Måleravlesere mv.
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('maleravlesereMv', '2022-03-15', null, 40100);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('maleravlesereMv', 'nb', 'Måleravlesere mv.');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'maleravlesereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'maleravlesereMv');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'maleravlesereMv');

-- Andre hjelpearbeidere'
INSERT INTO kode (kode, gyldig_fra, gyldig_til, sortering) VALUES ('andreHjelpearbeidere', '2022-03-15', null, 40200);
INSERT INTO verdi (kode, spraak, verdi) VALUES ('andreHjelpearbeidere', 'nb', 'Andre hjelpearbeidere');
INSERT INTO type_kode (type_navn, kode) VALUES ('stillingstittel', 'andreHjelpearbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('arbeidstaker', 'stillingstittel', 'andreHjelpearbeidere');
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode) VALUES ('laerling', 'stillingstittel', 'andreHjelpearbeidere');