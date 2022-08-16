-- type
INSERT INTO type (navn, beskrivelse) VALUES ('sykdomstype', 'Hva slags sykdom er det');

-- kode
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('sykdomIHjernenEllerNervesystemet',  '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('oeyesykdom',                        '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('oeresykdom',                        '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('psykiskSykdom',                     '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('hormonOgMetabolskSykdom',           '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('hjerteOgKarsykdom',                 '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('sykdomILuftveier',                  '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('sykdomIFordoeyelsessystemet',       '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('hudsykdom',                         '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('sykdomIMuskelOgSkjelett',           '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('sykdomIUrinveierOgGenitalia',       '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('fosterskadeEllerAbort',             '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('godartetSvulst',                    '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('ondartetSvulst',                    '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('smitteutloesteSykdommer',           '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('karanteneSykdommer',                '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('covid19',                           '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('covid19MedAlvorligeKomplikasjoner', '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('mrsa',                              '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('gulsott',                           '2022-06-14', null);

-- verdi
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sykdomIHjernenEllerNervesystemet',  'nb', 'Sykdom i hjernen eller i nervesystemet');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('oeyesykdom',                        'nb', 'Øyesykdom');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('oeresykdom',                        'nb', 'Øresykdom');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('psykiskSykdom',                     'nb', 'Psykisk sykdom');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hormonOgMetabolskSykdom',           'nb', 'Hormon og metabolsk sykdom');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hjerteOgKarsykdom',                 'nb', 'Hjerte og karsykdom');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sykdomILuftveier',                  'nb', 'Sykdom i luftveier');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sykdomIFordoeyelsessystemet',       'nb', 'Sykdom i fordøyelsessystemet');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('hudsykdom',                         'nb', 'Hudsykdom');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sykdomIMuskelOgSkjelett',           'nb', 'Sykdom i muskel og skjelett');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('sykdomIUrinveierOgGenitalia',       'nb', 'Sykdom i urinveier og genitalia');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fosterskadeEllerAbort',             'nb', 'Fosterskade eller abort');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('godartetSvulst',                    'nb', 'Godartet svulst');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ondartetSvulst',                    'nb', 'Ondartet svulst');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('smitteutloesteSykdommer',           'nb', 'Smitteutløste sykdommer');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('karanteneSykdommer',                'nb', 'Karantene sykdommer');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('covid19',                           'nb', 'Covid 19');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('covid19MedAlvorligeKomplikasjoner', 'nb', 'Covid 19 med alvorlige komplikasjoner');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('mrsa',                              'nb', 'MRSA');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('gulsott',                           'nb', 'Gulsott');

-- type_kode
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'sykdomIHjernenEllerNervesystemet',   1);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'oeyesykdom',                         2);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'oeresykdom',                         3);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'psykiskSykdom',                      4);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'hormonOgMetabolskSykdom',            5);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'hjerteOgKarsykdom',                  6);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'sykdomILuftveier',                   7);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'sykdomIFordoeyelsessystemet',        8);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'hudsykdom',                          9);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'sykdomIMuskelOgSkjelett',           10);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'sykdomIUrinveierOgGenitalia',       11);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'fosterskadeEllerAbort',             12);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'godartetSvulst',                    13);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'ondartetSvulst',                    14);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'smitteutloesteSykdommer',           15);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'karanteneSykdommer',                16);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'covid19',                           17);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'covid19MedAlvorligeKomplikasjoner', 18);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'mrsa',                              19);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'gulsott',                           20);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sykdomstype', 'alternativenePasserIkke',           21);



-- type
INSERT INTO type (navn, beskrivelse) VALUES ('paavirkningsform', 'Hvilken skadelig påvirkning har personen vært utsatt for');

-- kode
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('kjemikalierEllerLoesemidler',                                '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('stoevpaavirkning',                                           '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('stoey',                                                      '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('vibrasjon',                                                  '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('straalingEllerRadioaktivStraaling',                          '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('trykkendringer',                                             '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('allergifremkallendeStoffer',                                 '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('smitteFraVirusEllerBakterier',                               '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('biologiskVirkestoffSomSoppOgParasitt',                       '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('vaksinasjonPaalagtIArbeidEllerTjeneste',                     '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('klimatiskeForholdSomVarmeOgKulde',                           '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('naturhendelserSomSnoeskredOgJordskred',                      '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('psykososialBelastningEllerKritiskHendelseEllerTrakassering', '2022-06-14', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('ergonomiEllerTungtOgEllerRepeterendeArbeid',                 '2022-06-14', null);

-- verdi
INSERT INTO verdi (kode, spraak, verdi) VALUES ('kjemikalierEllerLoesemidler',                                'nb', 'Kjemikalier, løsemidler, gift, gass, væske o.l.');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('stoevpaavirkning',                                           'nb', 'Støvpåvirkning, stenstøv, asbest o.l.');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('stoey',                                                      'nb', 'Støy');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('vibrasjon',                                                  'nb', 'Vibrasjon');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('straalingEllerRadioaktivStraaling',                          'nb', 'Stråling, radioaktiv stråling');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('trykkendringer',                                             'nb', 'Trykkendringer');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('allergifremkallendeStoffer',                                 'nb', 'Allergifremkallende stoffer');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('smitteFraVirusEllerBakterier',                               'nb', 'Smitte fra virus eller bakterier');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('biologiskVirkestoffSomSoppOgParasitt',                       'nb', 'Biologisk virkestoff som sopp og parasitt');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('vaksinasjonPaalagtIArbeidEllerTjeneste',                     'nb', 'Vaksinasjon pålagt i arbeid eller tjeneste');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('klimatiskeForholdSomVarmeOgKulde',                           'nb', 'Klimatiske forhold som varme og kulde');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('naturhendelserSomSnoeskredOgJordskred',                      'nb', 'Naturhendelser som snøskred, jordskred og oversvømmelser');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('psykososialBelastningEllerKritiskHendelseEllerTrakassering', 'nb', 'Psykososial belastning, kritisk hendelse eller trakassering');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ergonomiEllerTungtOgEllerRepeterendeArbeid',                 'nb', 'Ergonomi, tungt og eller repeterende arbeid');

-- type_kode
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'kjemikalierEllerLoesemidler',                                 1);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'stoevpaavirkning',                                            2);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'stoey',                                                       3);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'vibrasjon',                                                   4);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'straalingEllerRadioaktivStraaling',                           5);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'trykkendringer',                                              6);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'allergifremkallendeStoffer',                                  7);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'smitteFraVirusEllerBakterier',                                8);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'biologiskVirkestoffSomSoppOgParasitt',                        9);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'vaksinasjonPaalagtIArbeidEllerTjeneste',                     10);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'klimatiskeForholdSomVarmeOgKulde',                           11);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'naturhendelserSomSnoeskredOgJordskred',                      12);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'psykososialBelastningEllerKritiskHendelseEllerTrakassering', 13);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'ergonomiEllerTungtOgEllerRepeterendeArbeid',                 14);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('paavirkningsform', 'alternativenePasserIkke',                                    15);
