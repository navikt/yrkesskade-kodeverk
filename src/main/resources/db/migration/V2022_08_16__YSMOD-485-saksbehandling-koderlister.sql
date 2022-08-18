---------------------------------------
-- Saksbehandling
---------------------------------------

-- Kodelisten 'Dokumenttyper'
INSERT INTO type (navn, beskrivelse, beskyttet) VALUES ('dokumenttype', 'Dokumenttyper', true);

INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('skademelding', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('tannlegeerklaering', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('arbeidstilsynsmelding', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('bestillingAvSpesialisterklaering', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('tilleggsskjemaYrkessykdom', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('bestillingAvVurderingFraHelsepersonell', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('soeknadOmOpptakIFrivilligTrygd', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('skadeforklaring', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('brev', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('rolUttalelse', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('ankeskjema', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('klageskjema', '2022-08-04', null);

INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('dokumenttype', 'skademelding', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('dokumenttype', 'tannlegeerklaering', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('dokumenttype', 'arbeidstilsynsmelding', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('dokumenttype', 'klageskjema', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('dokumenttype', 'ankeskjema', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('dokumenttype', 'bestillingAvSpesialisterklaering', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('dokumenttype', 'skadeforklaring', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('dokumenttype', 'brev', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('dokumenttype', 'rolUttalelse', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('dokumenttype', 'tilleggsskjemaYrkessykdom', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('dokumenttype', 'bestillingAvVurderingFraHelsepersonell', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('dokumenttype', 'soeknadOmOpptakIFrivilligTrygd', 100);

INSERT INTO verdi (kode, spraak, verdi) VALUES ('skademelding', 'nb', 'Skademelding');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('tannlegeerklaering', 'nb', 'Tannlegeerklæring');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('arbeidstilsynsmelding', 'nb', 'Arbeidstilsynsmelding');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bestillingAvSpesialisterklaering', 'nb', 'Bestilling av spesialisterklæring');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('skadeforklaring', 'nb', 'Skadeforklaring');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('brev', 'nb', 'Brev');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('rolUttalelse', 'nb', 'ROL Uttalelse');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('klageskjema', 'nb', 'Klageskjema');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('ankeskjema', 'nb', 'Ankeskjema');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('tilleggsskjemaYrkessykdom', 'nb', 'Tilleggsskjema yrkessykdom');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('bestillingAvVurderingFraHelsepersonell', 'nb', 'Bestilling av vurdering fra lege, tannlege, fysioterapeut');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('soeknadOmOpptakIFrivilligTrygd', 'nb', 'Søknad om menerstatning');

-- Kodeliste for 'Framdriftsstatus'
INSERT INTO type (navn, beskrivelse, beskyttet) VALUES ('framdriftsstatus', 'Statustyper for framdrift', true);

INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('ikkePaabegynt', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('underArbeid', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('paaVent', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('avventerSvar', '2022-08-04', null);

INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('framdriftsstatus', 'ikkePaabegynt', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('framdriftsstatus', 'underArbeid', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('framdriftsstatus', 'paaVent', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('framdriftsstatus', 'avventerSvar', 100);

INSERT INTO verdi (kode, spraak, verdi) VALUES ('ikkePaabegynt', 'nb', 'Ikke påbegynt');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('underArbeid', 'nb', 'Under arbeid');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('paaVent', 'nb', 'På vent');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('avventerSvar', 'nb', 'Avventer svar');

-- Kodeliste for 'Behandlingsstatus'
INSERT INTO type (navn, beskrivelse, beskyttet) VALUES ('behandlingsstatus', 'Behandlingsstatuser', true);

INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('ferdig', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('underBehandling', '2022-08-04', null);

INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingsstatus', 'ferdig', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingsstatus', 'ikkePaabegynt', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingsstatus', 'underBehandling', 100);

INSERT INTO verdi (kode, spraak, verdi) VALUES ('ferdig', 'nb', 'Ferdig');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('underBehandling', 'nb', 'Under behandling');

-- Kodeliste for 'Behandlingsresultat'
INSERT INTO  type (navn, beskrivelse, beskyttet) VALUES ('behandlingsresultat', 'Behandlingsresultater', true);

INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('innvilgelse', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('avslag', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('delvisInnvilgelse', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('raBehandletUtfoert', '2022-08-04', null);

INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingsresultat', 'innvilgelse', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingsresultat', 'avslag', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingsresultat', 'delvisInnvilgelse', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('behandlingsresultat', 'raBehandletUtfoert', 100);

INSERT INTO verdi (kode, spraak, verdi) VALUES ('innvilgelse', 'nb', 'Innvilgelse');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('avslag', 'nb', 'Avslag');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('delvisInnvilgelse', 'nb', 'Delvis innvilgelse');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('raBehandletUtfoert', 'nb', 'RA Behandlet Utført');

-- Kodeliste for 'Saksstatus'
INSERT INTO type (navn, beskrivelse, beskyttet) VALUES ('saksstatus', 'Statustyper for sak', true);

INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('aapen', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('lukket', '2022-08-04', null);

INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('saksstatus', 'aapen', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('saksstatus', 'lukket', 100);

INSERT INTO verdi (kode, spraak, verdi) VALUES ('aapen', 'nb', 'Åpen');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('lukket', 'nb', 'Lukket');

-- Kodeliste for 'sakstyper'
INSERT INTO type (navn, beskrivelse, beskyttet) VALUES ('sakstype', 'Sakstyper', true);

INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('menerstatning', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('yrkesskade', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('yrkessykdom', '2022-08-04', null);
INSERT INTO kode (kode, gyldig_fra, gyldig_til) VALUES ('annet', '2022-08-04', null);

INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sakstype', 'yrkesskade', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sakstype', 'yrkessykdom', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sakstype', 'menerstatning', 100);
INSERT INTO type_kode (type_navn, kode, sortering) VALUES ('sakstype', 'annet', 100);

INSERT INTO verdi (kode, spraak, verdi) VALUES ('yrkesskade', 'nb', 'Yrkesskade');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('yrkessykdom', 'nb', 'Yrkessykdom');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('menerstatning', 'nb', 'Menerstatning');
INSERT INTO verdi (kode, spraak, verdi) VALUES ('annet', 'nb', 'Annet');