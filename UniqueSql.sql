-- Crear la tabla empleados con columnas empleado_id, empleado_name y email
CREATE TABLE empleados (
    empleado_id INT PRIMARY KEY, -- Columna para el identificador único del empleado
    empleado_name VARCHAR(50), -- Columna para el nombre del empleado
    email VARCHAR(100) UNIQUE -- Columna para el correo electrónico del empleado (debe ser único)
);

-- Insertar datos en la tabla empleados
INSERT INTO empleados (empleado_id, empleado_name, email)
VALUES(1, "Miguel", "miguel@example.com"); 

INSERT INTO empleados (empleado_id, empleado_name, email)
VALUES(2, "Angel", "angel@example.com"); 

INSERT INTO empleados (empleado_id, empleado_name, email)
VALUES(3, "Gabriel", "gabriel@example.com"); 

-- Consulta para seleccionar todos los registros de la tabla empleados
SELECT * FROM empleados;

-- Intentar insertar un empleado con empleado_id 4, empleado_name "Rodrigo" y email "gabriel@example.com"
-- Nota: Este intento fallará porque el email debe ser único y "gabriel@example.com" ya está en uso
INSERT INTO empleados (empleado_id, empleado_name, email)
VALUES(4, "Rodrigo", "gabriel@example.com");
