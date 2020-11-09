ALTER TABLE ALUMNOS
  ADD edad SMALLINT(2);
ALTER TABLE ALUMNOS
  CHECK (edad BETWEEN 14 AND 65);
ALTER TABLE CURSOS
  CHECK (maximo_alumnos>15),
  CHECK (horas IN (30, 40, 60));
ALTER TABLE ALUMNOS
  DROP CONSTRAINT sexo;
ALTER TABLE PROFESORES
  DROP COLUMN direccion,
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (nombre, apellido1),
  RENAME TUTORES;
DROP TABLE ALUMNOS;
CREATE USER Teguayco_Gonzalez@localhost IDENTIFIED BY BD02;
GRANT ALL PRIVILEGES ON bd_centro.CURSOS TO Teguayco_Gonzalez@localhost;
FLUSH PRIVILEGES;
  REVOKE ALTER TABLE, UPDATE TABLE ON bd_centro.CURS FROM Teguayco_Gonzalez@localhost;

    /*El comando REVOQUE da error en PHPMyAdmin, pero he buscado referencias en internet
    y no se como solucionarlo*/
