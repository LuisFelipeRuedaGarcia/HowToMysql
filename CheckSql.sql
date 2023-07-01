-- Crear la base de datos "HowTo"
CREATE DATABASE HowTo;

-- Usar la base de datos "HowTo"
USE HowTo;

-- Crear la tabla "estudiantes" con las columnas especificadas
CREATE TABLE estudiantes(
    estudiante_id INT PRIMARY KEY,
    estudiante_name VARCHAR(50),
    edad INT CHECK(edad >= 18) -- Agrega una restricción de verificación para asegurar que la edad sea mayor o igual a 18
);

-- Insertar datos en la tabla "estudiantes"
INSERT INTO estudiantes (estudiante_id, estudiante_name, edad) VALUES (1, "Julian", 20);
INSERT INTO estudiantes (estudiante_id, estudiante_name, edad) VALUES (2, "Camilo", 18);

INSERT INTO estudiantes (estudiante_id, estudiante_name, edad) VALUES (3, "Daniela", 22);

-- Seleccionar y mostrar todos los registros de la tabla "estudiantes"
SELECT * FROM estudiantes;

-- Intentar insertar un estudiante con edad menor a 18 (esto generará un error debido a la restricción CHECK)
INSERT INTO estudiantes(estudiante_id, estudiante_name, edad) VALUES (4, "Julio", 16);

