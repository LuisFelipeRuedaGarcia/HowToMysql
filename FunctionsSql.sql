-- DROP TABLE empleados; -- Esta línea está comentada para evitar eliminar accidentalmente la tabla empleados.

-- Creamos la tabla empleados.
CREATE TABLE empleados(
    IdEmpleado BIGINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(69) NOT NULL,
    salario FLOAT
);

-- Insertamos datos en la tabla empleados.
INSERT INTO empleados (nombre, salario) VALUES ("Juan Pérez", 2500.00);
INSERT INTO empleados (nombre, salario) VALUES ("María López", 3000.00);

-- Consulta para obtener el número total de empleados.
SELECT COUNT(*) AS total_empleados
FROM empleados;

-- Consulta para obtener la suma de los salarios de todos los empleados.
SELECT SUM(salario) AS suma_salarios FROM empleados;

-- Consulta para obtener el promedio de los salarios de todos los empleados.
SELECT AVG(salario) AS Promedio_salarios
FROM empleados;
