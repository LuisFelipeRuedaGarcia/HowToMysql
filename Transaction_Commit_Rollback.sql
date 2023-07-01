START TRANSACTION;
INSERT INTO empleados (nombre, salario) VALUES ("Juan Pérez", 2500.00);
INSERT INTO empleados (nombre, salario) VALUES ("María López", 3000.00);
COMMIT;

START TRANSACTION;
INSERT INTO empleados (nombre, salario) VALUES ("Juan Pérez", 2500.00);
INSERT INTO empleados (nombre, salario) VALUES ("María López", 3000.00);
--Ocurrió un error o  se decide deshacer los cambios
ROLLBACK;
--AUTO-COMMIT
SET AUTOCOMMIT = 0;