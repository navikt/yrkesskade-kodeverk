ALTER TABLE kategori_type ADD CONSTRAINT fk_kategori_id FOREIGN KEY (kategori_id) REFERENCES kategori (kategori_id);
ALTER TABLE kategori_type ADD CONSTRAINT fk_type_id FOREIGN KEY (type_id) REFERENCES type (type_id);

ALTER TABLE verdi ADD CONSTRAINT fk_kode FOREIGN KEY (kode) REFERENCES kode (kode);