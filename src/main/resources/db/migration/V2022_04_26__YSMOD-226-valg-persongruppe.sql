-- Ny type
INSERT INTO type (type_id, navn, beskrivelse) VALUES (12, 'rolletype', 'Hvilken tilknytning har den skadelidte til virksomheten');

-- Koder
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidstaker', 100, 12, '2022-03-15', null, 100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidstakerOffshorePetroleum', 100, 12, '2024-03-15', null, 200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('arbeidstakerPaaSkip', 100, 12, '2024-03-15', null, 300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('elevEllerStudent', 100, 12, '2024-03-15', null, 400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('laerling', 100, 12, '2022-03-15', null, 500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('tiltaksdeltaker', 100, 12, '2024-03-15', null, 600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('lottaker', 100, 12, '2024-03-15', null, 700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('fiskerEllerFangstmann', 100, 12, '2024-03-15', null, 800);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('frilanserEllerSelvstendigNaeringsdrivende', 100, 12, '2024-03-15', null, 900);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('personerIHelseinstitusjon', 100, 12, '2024-03-15', null, 1000);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('innsatt', 100, 12, '2024-03-15', null, 1100);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('vernepliktigIFoerstegangstjenesten', 100, 12, '2024-03-15', null, 1200);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('militaerArbeidstaker', 100, 12, '2024-03-15', null, 1300);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('veteran', 100, 12, '2024-03-15', null, 1400);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('militaerLaerling', 100, 12, '2024-03-15', null, 1500);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('militaerElev', 100, 12, '2024-03-15', null, 1600);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('frivilligTjenestegj??roende', 100, 12, '2024-03-15', null, 1700);
INSERT INTO kode (kode, kategori_id, type_id, gyldig_fra, gyldig_til, sortering) VALUES ('oevrigVernepliktig', 100, 12, '2024-03-15', null, 1800);

-- Verdier
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arbeidstaker', 'nb', 'Arbeidstaker');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arbeidstakerOffshorePetroleum', 'nb', 'Arbeidstaker offshore petroleum');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arbeidstakerPaaSkip', 'nb', 'Arbeidstaker p?? skip');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('elevEllerStudent', 'nb', 'Elev eller student');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('laerling', 'nb', 'L??rling');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('tiltaksdeltaker', 'nb', 'I tiltak regi av NAV');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('lottaker', 'nb', 'Lottaker');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('fiskerEllerFangstmann', 'nb', 'Fisker/fangstmann');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('frilanserEllerSelvstendigNaeringsdrivende', 'nb', 'Frilanser/selvstendig n??ringsdrivende');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('personerIHelseinstitusjon', 'nb', 'Personer i helseinstitusjon');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('innsatt', 'nb', 'Innsatt');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('vernepliktigIFoerstegangstjenesten', 'nb', 'Personell i f??rstegangstjenesten');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('militaerArbeidstaker', 'nb', 'Milit??r arbeidstaker	');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('veteran', 'nb', 'Milit??rarbeidstaker INTOPS Utland	');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('militaerLaerling', 'nb', 'L??rling milit??rpersonell	');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('militaerElev', 'nb', 'Elev milit??rpersonell');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('frivilligTjenestegjoerende', 'nb', 'Frivillig tjenestegj??rende');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('oevrigVernepliktig', 'nb', '??vrig vernepliktig');
