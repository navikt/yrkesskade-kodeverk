-- Kodelisten 'Dokumenttyper'
INSERT INTO type (navn, beskrivelse, beskyttet) VALUES ('aarsakAvvik', 'Årsaker for Avvik', true);

INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('feilInnhold', '2022-09-26', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('uleseligDokument', '2022-09-26', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('annenPerson', '2022-09-26', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('inneholderVedlegg', '2022-09-26', null);

INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('aarsakAvvik', 'feilInnhold', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('aarsakAvvik', 'uleseligDokument', 200);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('aarsakAvvik', 'annenPerson', 300);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('aarsakAvvik', 'inneholderVedlegg', 400);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('aarsakAvvik', 'annet', 1000);

-- Bokmål
INSERT INTO verdi (kode, spraak, verdi) VALUES ('feilInnhold', 'nb', 'Feil innhold i dokumentet');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('uleseligDokument', 'nb', 'Dokumentet er ikke lesbart');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('annenPerson', 'nb', 'Dokumentet gjelder en annen person');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('inneholderVedlegg', 'nb', 'Dokumentet inneholder vedlegg som må journalføres');

