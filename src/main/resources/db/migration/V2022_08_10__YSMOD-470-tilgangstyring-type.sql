ALTER TABLE type ADD COLUMN beskyttet boolean NOT NULL DEFAULT false;

INSERT INTO type (navn, beskrivelse, beskyttet) VALUES ('behandlingstype', 'En oversikt over behandlingstyper', true);

INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('journalfoering', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('veiledning', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('krav-melding', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('klage', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('anke', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('innsyn', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('gjenoppretting', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('revurdering', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('tilbakekreving', '2022-08-04', null);

INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingstype', 'journalfoering', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingstype', 'veiledning', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingstype', 'krav-melding', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingstype', 'klage', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingstype', 'anke', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingstype', 'innsyn', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingstype', 'gjenoppretting', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingstype', 'revurdering', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingstype', 'tilbakekreving', 100);

INSERT INTO verdi (kode, spraak, verdi) VALUES ('journalfoering', 'nb', 'Journalføring');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('veiledning', 'nb', 'Veiledning');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('krav-melding', 'nb', 'Krav/Melding');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('klage', 'nb', 'Klage');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('anke', 'nb', 'Anke');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('innsyn', 'nb', 'Innsyn');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('gjenoppretting', 'nb', 'Gjenoppretting');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('revurdering', 'nb', 'Revurdering');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('tilbakekreving', 'nb', 'Tilbakekreving');