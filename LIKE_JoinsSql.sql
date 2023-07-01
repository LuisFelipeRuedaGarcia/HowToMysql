-- Crear la tabla empleados con columnas id, nombre, salario y departamento_id
CREATE TABLE empleados (
    id INT PRIMARY KEY, -- Columna para el identificador único de empleado
    nombre VARCHAR(100), -- Columna para el nombre del empleado
    salario DECIMAL(10, 2), -- Columna para el salario del empleado
    departamento_id INT -- Columna para el identificador del departamento al que pertenece el empleado
);

/* DROP TABLE departamentos; */ -- Esta línea está comentada para evitar eliminar accidentalmente la tabla departamentos.

-- Insertar datos en la tabla empleados
INSERT INTO empleados(id, nombre, salario, departamento_id)
VALUES
(1, "Jhon Smith", 2500.00, 1),
(2,"Jane Doe", 3000.00, 1), 
(3, "Michael Johnson",2000.00, 2),
(4,"Emily Davis", 3200.00, 3);

-- Crear la tabla departamentos con columnas id y nombre
CREATE TABLE departamentos(
    id INT PRIMARY KEY, -- Columna para el identificador único de departamento
    nombre VARCHAR(100) -- Columna para el nombre del departamento
);

-- Insertar datos en la tabla departamentos
INSERT INTO departamentos(id, nombre)
VALUES
(1,"Ventas"),
(2,"Marketing"), 
(3,"Recursos Humanos"); 

-- Consulta para obtener los nombres de los empleados que comienzan con "J"
SELECT nombre FROM empleados WHERE nombre LIKE "J%";

-- Consulta para obtener los nombres de los departamentos que contienen "en"
SELECT nombre FROM departamentos WHERE nombre LIKE "%en%";

-- Consulta para obtener los nombres de los empleados y los nombres de los departamentos mediante una unión interna
SELECT empleados.nombre, departamentos.nombre AS departamento FROM empleados
INNER JOIN departamentos ON empleados.departamento_id = departamentos.id;

-- Consulta para obtener los nombres de los empleados y los nombres de los departamentos mediante una unión externa izquierda
SELECT empleados.nombre, departamentos.nombre AS xd FROM empleados
LEFT OUTER JOIN departamentos ON empleados.departamento_id = departamentos.id;

-- Consulta para obtener los nombres de los empleados y los nombres de los departamentos mediante una unión externa derecha
SELECT empleados.nombre AS empleado, departamentos.nombre AS departamento FROM empleados
RIGHT OUTER JOIN departamentos ON empleados.departamento_id = departamentos.id;
