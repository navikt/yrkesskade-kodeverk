ALTER TABLE type ADD COLUMN beskyttet boolean NOT NULL DEFAULT false;

INSERT INTO type (navn, beskrivelse, beskyttet) VALUES ('behandlingstype', 'En oversikt over behandlingstyper', true);