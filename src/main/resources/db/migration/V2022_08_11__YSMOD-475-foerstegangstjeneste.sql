---------------------------------------
-- Vernepliktig i førstegangstjenesten
---------------------------------------

-- Kodelisten 'Innenfor hvilket tidsrom inntraff skaden'
INSERT INTO kategori (navn, beskrivelse) VALUES ('vernepliktigIFoerstegangstjenesten', 'Vernepliktig i førstegangstjenesten');

-- Kodelisten 'Innenfor hvilket tidsrom inntraff skaden'

INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('paaReiseTilTjeneste', '2022-08-11', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('underPaalagtTjeneste', '2022-08-11', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('reiseHjemEtterDimittering', '2022-08-11', null);

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'tidsrom', 'paaReiseTilTjeneste',        100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'tidsrom', 'underPaalagtTjeneste',       200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'tidsrom', 'reiseHjemEtterDimittering ', 300);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'tidsrom', 'underPermisjon',             400);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'tidsrom', 'alternativenePasserIkke',    500);

INSERT INTO verdi (kode, spraak, verdi) VALUES ('paaReiseTilTjeneste',       'nb', 'På reise til tjeneste');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('underPaalagtTjeneste',      'nb', 'Under pålagt tjeneste');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('reiseHjemEtterDimittering', 'nb', 'Reise hjem etter dimittering');



-- Kodelisten 'Hvor alvorlig var ulykken'

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'alvorlighetsgrad', 'antattIkkeOppsoektLege',      100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'alvorlighetsgrad', 'antattOppsoektLege',          200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'alvorlighetsgrad', 'alvorligKreftsykdom ',        300);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'alvorlighetsgrad', 'livstruendeSykdomEllerSkade', 400);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'alvorlighetsgrad', 'innmeldtDoedsfall',           500);



-- Kodelisten 'Beskriv årsak for hendelsen og bakgrunn for årsaken'

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'stukketEllerKuttet',                             100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'oppskraptEllerStukketAvGrovtMateriale',          200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'stoetEllerTreffAvGjenstand',                     300);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'sammenstoetMedGjenstandEllerPaakjoersel',        400);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'sammenstoetEllerBittEllerSpark',                 500);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'trafikkulykke',                                  600);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'fallAvPerson',                                   700);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'velt',                                           800);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'klemtEllerFanget',                               900);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'druknetEllerBegravdEllerOmsvoept',              1000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'brann',                                         1100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'eksplosjonEllerSprenging',                      1200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'kontaktMedKjemikalierEllerFarligeStoffer',      1300);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'kontaktMedElektriskSpenning',                   1400);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'hoeyTemperatur',                                1500);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'lavTemperatur',                                 1600);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'paafoertVoldsskade',                            1700);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'truslerOmVold',                                 1800);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'fysiskEllerPsykiskBelastning',                  1900);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'skremtAvDyr',                                   2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'fareEtterAtUvedkommendeBryterEnSikkerhetssone', 2100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'aarsakOgBakgrunn', 'alternativenePasserIkke',                       2200);



-- Kodelisten 'Hvor på kroppen skjedde skaden'

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'hode',                          100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'ansikt',                        200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'venstreOeye',                   300);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'hoeyreOeye',                    400);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'venstreOere',                   500);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'hoeyreOere',                    600);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'tenner',                        700);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'kjeve',                         800);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'halsOgNakke',                   900);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'rygg',                         1000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'seteEllerBekkenEllerHalebein', 1100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'ribbenOgSkulderblad',          1200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'venstreSkulder',               1300);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'hoeyreSkulder',                1400);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'venstreArmOgAlbue',            1500);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'hoeyreArmOgAlbue',             1600);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'venstreHaandledd',             1700);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'hoeyreHaandledd',              1800);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'venstreHaand',                 1900);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'hoeyreHaand',                  2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'venstreFingre',                2100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'hoeyreFingre',                 2200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'venstreHofte',                 2300);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'hoeyreHofte',                  2400);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'venstreBenOgKne',              2500);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'hoeyreBenOgKne',               2600);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'venstreAnkel',                 2700);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'hoeyreAnkel',                  2800);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'venstreFot',                   2900);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'hoeyreFot',                    3000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'venstreTaer',                  3100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'hoeyreTaer',                   3200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'brystkasseOgLunger',           3300);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'hjerte',                       3400);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'spiseroer',                    3500);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'mage',                         3600);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'fordoeyelsesorgan',            3700);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'nyrerOgUrinveier',             3800);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'kjoennsorgan',                 3900);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetKroppsdel', 'heleKroppen',                  4000);



-- Kodelisten 'Hva slags skade er det'

INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'saarskade',                100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'bloetdelsskadeUtenSaar',   200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'forstuingOgForvridning',   300);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'bruddskade',               400);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'knusningsskade',           500);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'tapAvLegemsdel',           600);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'indreSkade',               700);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'kuldeskade',               800);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'varmeskade',               900);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'etsing',                  1000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'akuttForgiftning',        1100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'oeyeskade',               1200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'akustiskSjokk',           1300);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'sjokkEtterAggresjon',     1400);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'traumatiskSjokk',         1500);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'psykiskeEttervirkninger', 1600);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'infeksjon',               1700);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'drukning',                1800);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'kvelning',                1900);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'straaleskade',            2000);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'barotraume',              2100);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'nedsattAllmenntilstand',  2200);
INSERT INTO kategori_type_kode (kategori_navn, type_navn, kode, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 'skadetype', 'alternativenePasserIkke', 2300);



-- Gjør 'vernepliktigIFoerstangstjenesten' tilgjengelig for rolletype

UPDATE kode SET gyldig_fra = '2022-08-11' WHERE kode = 'vernepliktigIFoerstegangstjenesten';
