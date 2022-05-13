update kategori_type set kategori_navn = 'elevEllerStudent' where kategori_navn = 'elev';
update kategori_type_kode set kategori_navn = 'elevEllerStudent' where kategori_navn = 'elev';
update kategori set navn = 'elevEllerStudent' where navn = 'elev';
update kode set gyldig_fra = '2022-05-08' where kode = 'elevEllerStudent';