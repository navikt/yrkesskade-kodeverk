-- Slett alle eksisterende koder lagt inn under proof of concept
delete from verdi;
delete from kode;


-- Endre PK for tabell kode ettersom en kode kan forekomme flere ganger sammen med ulike kategorier og typer
ALTER TABLE kode
    DROP CONSTRAINT IF EXISTS kode_pkey CASCADE,
    ADD PRIMARY KEY (kode, kategori_id, type_id, gyldig_fra);


-- Korriger beskrivelse
UPDATE kategori SET beskrivelse = 'Elev/Student' WHERE kategori_id = 2;
