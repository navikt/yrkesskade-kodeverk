-- Kodelisten 'Brevkode'
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('veiledningsbrevTannlegeerklaering', '2022-10-06', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('veiledningsbrevArbeidstilsynsmelding', '2022-10-06', null);

INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('dokumenttype', 'veiledningsbrevTannlegeerklaering', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('dokumenttype', 'veiledningsbrevArbeidstilsynsmelding', 100);

INSERT INTO verdi (kode, spraak, verdi) VALUES ('veiledningsbrevTannlegeerklaering', 'nb', 'Veiledningsbrev Tannlegeerklæring');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('veiledningsbrevArbeidstilsynsmelding', 'nb', 'Veiledningsbrev Arbeidstilsynsmelding');
