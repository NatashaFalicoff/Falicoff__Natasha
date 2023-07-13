CREATE TABLE ALUMNO
(
  cod_matricula INT NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  DNI VARCHAR(15) NOT NULL,
  Fecha_Nac DATE NOT NULL,
  Email VARCHAR(30) NOT NULL,
  PRIMARY KEY (cod_matricula)
);

CREATE TABLE CURSO
(
  Cod_Curso INT NOT NULL,
  Nombre VARCHAR(30) NOT NULL,
  PRIMARY KEY (Cod_Curso)
);

CREATE TABLE PROFESOR
(
  Profesor_ID INT NOT NULL,
  Nombre VARCHAR(30) NOT NULL,
  Email VARCHAR(50) NOT NULL,
  Especialidad VARCHAR(50) NOT NULL,
  PRIMARY KEY (Profesor_ID)
);

CREATE TABLE Inscripcion
(
  cod_matricula INT NOT NULL,
  Cod_Curso INT NOT NULL,
  PRIMARY KEY (cod_matricula, Cod_Curso),
  FOREIGN KEY (cod_matricula) REFERENCES ALUMNO(cod_matricula),
  FOREIGN KEY (Cod_Curso) REFERENCES CURSO(Cod_Curso)
);

CREATE TABLE Impartir (
    Cod_Curso INT NOT NULL,
    Profesor_ID INT NOT NULL,
    PRIMARY KEY (Cod_Curso , Profesor_ID),
    FOREIGN KEY (Cod_Curso)
        REFERENCES CURSO (Cod_Curso),
    FOREIGN KEY (Profesor_ID)
        REFERENCES PROFESOR (Profesor_ID)
);
INSERT INTO alumno (cod_matricula,Nombre,DNI,Fecha_Nac,Email)
VALUES (1,'Emilia Acevedo','57876234','1995/05/26','emilia.a@gmail.com');

 INSERT INTO alumno (cod_matricula,Nombre,DNI,Fecha_Nac,Email)
 VALUES (2,'Luis Kislo','57865234','1990/05/06','luis.k@gmail.com');
 
  INSERT INTO curso (Cod_Curso,Nombre)
 VALUES (1,'Introducción a la Programación');
 
 INSERT INTO curso (Cod_Curso,Nombre)
 VALUES (2,'Desarrollo Web Full Stack');
 
 INSERT INTO curso (Cod_Curso,Nombre)
 VALUES (3,'Diseño UX/UI');
  
  INSERT INTO profesor (Profesor_ID,Nombre,Email,Especialidad)
 VALUES (1,'Lucas Podkowa','lucas.p@gmail.com','Master en programación');
 
 INSERT INTO profesor (Profesor_ID,Nombre,Email,Especialidad)
 VALUES (2,'Juan Perez','juan.p@gmail.com','Programador');
 
 INSERT INTO profesor (Profesor_ID,Nombre,Email,Especialidad)
 VALUES (3,'Lucía Mendez','lucia.me@gmail.com','Diseñadora');
 
 INSERT INTO impartir (Cod_Curso,Profesor_ID)
 VALUES (1,1);
 
 INSERT INTO impartir (Cod_Curso,Profesor_ID)
 VALUES (2,1);
 
   INSERT INTO impartir (Cod_Curso,Profesor_ID)
 VALUES (3,3);
 
    INSERT INTO inscripcion (cod_matricula,Cod_Curso)
 VALUES (1,1);
 
  INSERT INTO inscripcion (cod_matricula,Cod_Curso)
 VALUES (2,3);
 
  INSERT INTO inscripcion (cod_matricula,Cod_Curso)
 VALUES (3,2);
 
 


















 
 
 
 