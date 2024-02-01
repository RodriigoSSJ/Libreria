USE libreria;

INSERT INTO tbl_cat_genero VALUES(NULL,"Romance" ,1);
INSERT INTO tbl_cat_genero VALUES(NULL,"Fantasia" ,1);
INSERT INTO tbl_cat_genero VALUES(NULL,"Historia" ,1);
INSERT INTO tbl_cat_genero VALUES(NULL,"Ciencia Ficcion" ,1);
INSERT INTO tbl_cat_genero VALUES(NULL,"Terror" ,1);
INSERT INTO tbl_cat_genero VALUES(NULL,"Humor" ,1); 

SELECT * FROM tbl_cat_genero;

INSERT INTO tbl_cat_editorial VALUES(NULL, "ZorroLobo",1);
INSERT INTO tbl_cat_editorial VALUES(NULL, "Planet",1);
INSERT INTO tbl_cat_editorial VALUES(NULL, "Aguilar",1);
INSERT INTO tbl_cat_editorial VALUES(NULL, "Gallo Nero",1);
INSERT INTO tbl_cat_editorial VALUES(NULL, "Lumen",1);
INSERT INTO tbl_cat_editorial VALUES(NULL, "RM",1);

SELECT * FROM tbl_cat_editorial;

INSERT INTO tbl_cat_idioma VALUES(NULL, "Español", 1);
INSERT INTO tbl_cat_idioma VALUES(NULL, "Ingles", 1);
INSERT INTO tbl_cat_idioma VALUES(NULL, "Italiano", 1);
INSERT INTO tbl_cat_idioma VALUES(NULL, "Japones", 1);

SELECT * FROM tbl_cat_idioma;