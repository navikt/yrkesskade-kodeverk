-- Oppdater Verdier
UPDATE verdi set verdi = 'Sykemelding' where kode = 'sykemelding' and spraak = 'nb';
UPDATE verdi set verdi = 'Egenmelding' where kode = 'egenmelding' and spraak = 'nb';
UPDATE verdi set verdi = 'En kombinasjon av egenmelding og sykemelding' where kode = 'kombinasjonSykemeldingEgenmelding' and spraak = 'nb';


