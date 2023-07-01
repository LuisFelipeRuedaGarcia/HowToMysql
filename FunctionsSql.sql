CREATE TABLE empleados(
    IdEmpleado BIGINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(69) NOT NULL,
    salario FLOAT
    )


SELECT COUNT(*) AS total_empleados
FROM empleados;

SELECT SUM(salario) AS suma_salarios FROM empleados;

SELECT AVG(salario) AS Promedio_salarios
FROM empleados;