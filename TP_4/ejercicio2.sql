CREATE TABLE País
(
  País_ID INT NOT NULL,
  Nombre_país VARCHAR(30) NOT NULL,
  PRIMARY KEY (País_ID),
  UNIQUE (Nombre_país)
);

CREATE TABLE Provincia
(
  Provincia_ID INT NOT NULL,
  Nombre_Provincia VARCHAR(30) NOT NULL,
  País_ID INT NOT NULL,
  PRIMARY KEY (Provincia_ID),
  FOREIGN KEY (País_ID) REFERENCES País(País_ID)
);

CREATE TABLE Localidad
(
  Código_localidad INT NOT NULL,
  Nombre VARCHAR(30) NOT NULL,
  Codigo_postal INT NOT NULL,
  Provincia_ID INT NOT NULL,
  PRIMARY KEY (Código_localidad),
  FOREIGN KEY (Provincia_ID) REFERENCES Provincia(Provincia_ID),
  UNIQUE (Codigo_postal)
);

CREATE TABLE Empleado (
    teléfono INT NOT NULL,
    DNI VARCHAR(20) NOT NULL,
    Nombre VARCHAR(30) NOT NULL,
    Fecha_alta DATE NOT NULL,
    Email VARCHAR(30) NOT NULL,
    Empleado_ID INT NOT NULL,
    Código_localidad INT NOT NULL,
    PRIMARY KEY (Empleado_ID),
    FOREIGN KEY (Código_localidad)
        REFERENCES Localidad (Código_localidad)
);

INSERT INTO país (País_ID,Nombre_país)
VALUES (1,'Argentina');

INSERT INTO país (País_ID,Nombre_país)
VALUES (2,'Colombia');

INSERT INTO país (País_ID,Nombre_país)
VALUES (3,'Chile');

INSERT INTO provincia (Provincia_ID,Nombre_Provincia,País_ID)
VALUES (1,'Misiones',1);

INSERT INTO provincia (Provincia_ID,Nombre_Provincia,País_ID)
VALUES (2,'Caraguatay',2);

INSERT INTO provincia (Provincia_ID,Nombre_Provincia,País_ID)
VALUES (3,'Misisipi',3);

 INSERT INTO localidad (Código_localidad,Nombre,Codigo_postal,Provincia_ID)
 VALUES (1,'Andresito',1213,1);
 
  INSERT INTO localidad (Código_localidad,Nombre,Codigo_postal,Provincia_ID)
 VALUES (2,'Obera',1211,2);
 
  INSERT INTO localidad (Código_localidad,Nombre,Codigo_postal,Provincia_ID)
 VALUES (3,'Roca',12166,3);
 
 INSERT INTO empleado (teléfono,DNI,Nombre,Fecha_alta,Email,Empleado_ID,Código_localidad)
 VALUES (37657645,'764857623', 'Juan','2020/05/01', 'juan.b@yahoo.com', 1, 1);
 
 INSERT INTO empleado (teléfono,DNI,Nombre,Fecha_alta,Email,Empleado_ID,Código_localidad)
 VALUES (37634545,'76411123', 'Juana','2020/08/01', 'juana.b@yahoo.com', 2, 2);
 
 INSERT INTO empleado (teléfono,DNI,Nombre,Fecha_alta,Email,Empleado_ID,Código_localidad)
 VALUES (37627645,'764857343', 'Juanita','2022/05/01', 'juanii@yahoo.com', 3, 3);
