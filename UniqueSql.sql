CREATE TABLE empleados (
    empleado_id INT PRIMARY KEY,
    empleado_name VARCHAR(50),
    email VARCHAR(100) UNIQUE
    );

INSERT INTO empleados (empleado_id, empleado_name, email)
VALUES(1, "Miguel", "miguel@example.com");
INSERT INTO empleados (empleado_id, empleado_name, email)
VALUES(2, "Angel", "angel@example.com");
INSERT INTO empleados (empleado_id, empleado_name, email)
VALUES(3, "Gabriel", "gabriel@example.com");
SELECT * FROM empleados;
INSERT INTO empleados (empleado_id, empleado_name, email)
VALUES(4, "Rodrigo", "gabriel@example.com");
