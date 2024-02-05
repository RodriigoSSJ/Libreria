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

CALL AddLibro("La Perla", 230, 24, 3, 3, 1);

SELECT * FROM tbl_ope_libro;

SELECT 
	li.LibroId,
    li.Libro_Nombre,
    ed.Editorial_Editorial,
    ge.Genero_Genero,
    li.Libro_Cantidad,
    li.Libro_Costo
FROM tbl_ope_libro li
INNER JOIN tbl_cat_editorial ed on  li.Libro_Editorialid = ed.Editorialid
INNER JOIN tbl_cat_genero ge on li.Libro_GeneroId = ge.GeneroId
WHERE li.Libro_Activo = 1;

CALL ConsultarLibro();
