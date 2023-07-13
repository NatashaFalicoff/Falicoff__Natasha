CREATE TABLE departamentos (
departamento_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
presupuesto DOUBLE UNSIGNED NOT NULL,
estado boolean NOT NULL
);
CREATE TABLE empleados (
    emplaedo_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    cuil_cuit VARCHAR(15) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    departamento INT UNSIGNED,
    estado BOOLEAN,
    FOREIGN KEY (departamento)
        REFERENCES departamentos (departamento_id)
);
INSERT INTO departamentos VALUES(1, 'Desarrollo', 120000, true);
INSERT INTO departamentos VALUES(2, 'Sistemas', 150000, true);
INSERT INTO departamentos VALUES(3, 'Recursos Humanos', 280000, true);
INSERT INTO departamentos VALUES(4, 'Contabilidad', 110000, true);
INSERT INTO departamentos VALUES(5, 'I+D', 375000, true);
INSERT INTO departamentos VALUES(6, 'Proyectos', 0,true );
INSERT INTO departamentos VALUES(7, 'Publicidad', 0, true);
INSERT INTO departamentos VALUES(8, 'Comercial', 0, false);
INSERT INTO empleados VALUES(1, '27-32481596-3', 'Aarón', 'Rivero', 1, true);
INSERT INTO empleados VALUES(2, '27-29557532-1', 'Adela', 'Salas', 2, true);
INSERT INTO empleados VALUES(3, '20-36970642-1', 'Adolfo', 'Rubio', 3, true);
INSERT INTO empleados VALUES(4, '20-41705545-1', 'Adrián', 'Suárez', 4, true);
INSERT INTO empleados VALUES(5, '20-17087203-3', 'Marcos', 'Loyola', 5, true);
INSERT INTO empleados VALUES(6, '27-38382980-3', 'María', 'Santana', 1, true);
INSERT INTO empleados VALUES(7, '23-80576669-1', 'Pilar', 'Ruiz', 2, true);
INSERT INTO empleados VALUES(8, '24-71651431-3', 'Pepe', 'Ruiz', 3, true);
INSERT INTO empleados VALUES(9, '25-36399183-3', 'Juan', 'Gómez', 2, true);
INSERT INTO empleados VALUES(10, '20-34638446-3', 'Diego','Flores', 5, true);
INSERT INTO empleados VALUES(11, '27-36738983-3', 'Marta','Herrera', 1, true);
INSERT INTO empleados VALUES(12, '27-44123836-1', 'Irene','Salas', NULL,
false);
INSERT INTO empleados VALUES(13, '20-38265162-1', 'Juan', 'Antonio', NULL,
true);

 select apellido FROM empleados;
  
  select distinct apellido FROM empleados;
  
  SELECT * FROM empleados;

SELECT nombre, apellido FROM empleados;

SELECT cuil_cuit, departamento_id
FROM empleados 
JOIN departamentos  ON departamento_id = departamento_id;

SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo
FROM empleados;

SELECT UPPER(CONCAT(nombre, ' ', apellido)) AS nombre_completo_mayusculas
FROM empleados;

SELECT LOWER(CONCAT(nombre, ' ', apellido)) AS nombre_completo_minusculas
FROM empleados;

SELECT nombre, presupuesto
FROM departamentos
ORDER BY presupuesto ASC;

SELECT nombre
FROM departamentos
ORDER BY nombre ASC;

SELECT nombre
FROM departamentos
ORDER BY nombre DESC;

SELECT apellido, nombre
FROM empleados
ORDER BY apellido ASC, nombre ASC;

SELECT nombre, presupuesto
FROM departamentos
ORDER BY presupuesto DESC
LIMIT 3;

SELECT nombre, presupuesto
FROM departamentos
ORDER BY presupuesto ASC
LIMIT 3;

SELECT nombre, presupuesto
FROM departamentos
WHERE presupuesto >= 150000;

SELECT nombre, presupuesto
FROM departamentos
WHERE presupuesto >= 100000 AND presupuesto <= 200000;


SELECT nombre
FROM departamentos
WHERE presupuesto < 100000 OR presupuesto > 200000;

SELECT nombre
FROM departamentos
WHERE presupuesto BETWEEN 100000 AND 200000;

SELECT e.nombre, e.apellido, d.nombre
FROM empleados e
JOIN departamentos d ON departamento_id = departamento_id;

SELECT e.nombre, e.apellido, d.nombre
FROM empleados e
JOIN departamentos d ON departamento_id = departamento_id
ORDER BY d.nombre ASC, e.apellido ASC, e.nombre ASC;

SELECT d.departamento_id, d.nombre
FROM departamentos d
INNER JOIN empleados e ON departamento_id = departamento_id
GROUP BY d.departamento_id, d.nombre;

SELECT d.nombre
FROM departamentos d
INNER JOIN empleados e ON departamento_id = departamento_id
WHERE cuil_cuit = '27-38382980-3';

SELECT d.nombre
FROM departamentos d
WHERE departamento_id IN (
  SELECT departamento_id
  FROM empleados 
  WHERE nombre = 'Pepe' AND apellido = 'Ruiz'
);

SELECT *
FROM empleados e
INNER JOIN departamentos d ON departamento_id = departamento_id
WHERE d.nombre = 'I+D'
ORDER BY e.apellido ASC , e.nombre ASC;

SELECT *
FROM empleados e
INNER JOIN departamentos d ON departamento_id = departamento_id
WHERE d.nombre IN ('Sistemas', 'Contabilidad', 'I+D')
ORDER BY e.apellido ASC , e.nombre ASC;

SELECT e.nombre
FROM empleados e
INNER JOIN departamentos d ON departamento_id = departamento_id
WHERE d.departamento_id NOT IN (
    SELECT departamento_id
    FROM departamentos
    WHERE presupuesto >= 100000 AND presupuesto <= 200000
);

