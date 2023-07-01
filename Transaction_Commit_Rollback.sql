-- DROP TABLE empleados; -- Esta línea está comentada para evitar eliminar accidentalmente la tabla empleados.

-- Crear la tabla empleados con columnas IdEmpleado, nombre y salario
CREATE TABLE empleados(
    IdEmpleado BIGINT PRIMARY KEY AUTO_INCREMENT, -- Columna para el identificador único del empleado
    nombre VARCHAR(69) NOT NULL, -- Columna para el nombre del empleado (no puede ser nulo)
    salario FLOAT -- Columna para el salario del empleado
);

-- Iniciar una transacción
START TRANSACTION;

-- Insertar datos en la tabla empleados
INSERT INTO empleados (nombre, salario) VALUES ("Juan Pérez", 2500.00);
INSERT INTO empleados (nombre, salario) VALUES ("María López", 3000.00); 

-- Confirmar los cambios en la transacción
COMMIT;

-- Iniciar una nueva transacción
START TRANSACTION;

-- Insertar datos en la tabla empleados
INSERT INTO empleados (nombre, salario) VALUES ("Juan Pérez", 2500.00); 
INSERT INTO empleados (nombre, salario) VALUES ("María López", 3000.00); 

-- Ocurrió un error o se decide deshacer los cambios en la transacción
ROLLBACK;

-- Finalizar la transacción y volver al modo de auto-commit
SET AUTOCOMMIT = 1;
