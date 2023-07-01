-- Crear la tabla productos con columnas idProducto, nombre y precio
CREATE TABLE productos (
    idProducto BIGINT PRIMARY KEY AUTO_INCREMENT, -- Columna para el identificador único del producto
    nombre VARCHAR(50), -- Columna para el nombre del producto
    precio DECIMAL(10, 7) -- Columna para el precio del producto
);

DROP TABLE tareas; -- Eliminar la tabla tareas (se debe tener precaución al ejecutar esta instrucción)

-- Insertar datos en la tabla productos
INSERT INTO productos (nombre, precio)
VALUES ("Producto A", -15.7523452345); -- Insertar producto A con precio -15.7523452345

INSERT INTO productos (nombre, precio)
VALUES ("Producto B", -19.997685679); -- Insertar producto B con precio -19.997685679

-- Consulta para obtener el nombre de los productos, el valor absoluto del precio y el precio redondeado a 2 decimales
SELECT nombre, ABS(precio), ROUND(precio, 2) FROM productos;

-- Crear la tabla tareas con columnas IdTarea, nombre y fecha_limite
CREATE TABLE tareas (
    IdTarea BIGINT PRIMARY KEY AUTO_INCREMENT, -- Columna para el identificador único de la tarea
    nombre VARCHAR(50), -- Columna para el nombre de la tarea
    fecha_limite DATE -- Columna para la fecha límite de la tarea
);

-- Insertar datos en la tabla tareas
INSERT INTO tareas (nombre, fecha_limite) VALUES ("Tarea A", "2023-06-30"); -- Insertar tarea A con fecha límite "2023-06-30"

INSERT INTO tareas (nombre, fecha_limite) VALUES ("Tarea B", "2023-07-15"); -- Insertar tarea B con fecha límite "2023-07-15"

INSERT INTO tareas (nombre, fecha_limite) VALUES ("Tarea C", NOW()); -- Insertar tarea C con fecha límite actual

-- Consulta para obtener el IdTarea, nombre, fecha_limite y la fecha_limite formateada en formato "dd-mm-yyyy"
SELECT IdTarea, nombre, fecha_limite, DATE_FORMAT(fecha_limite, "%d-%m-%Y") FROM tareas;

-- Crear la tabla empleados con columnas IdEmpleado, nombre y salario
CREATE TABLE empleados(
    IdEmpleado BIGINT PRIMARY KEY AUTO_INCREMENT, -- Columna para el identificador único del empleado
    nombre VARCHAR(50), -- Columna para el nombre del empleado
    salario DECIMAL(10,2) -- Columna para el salario del empleado
);

-- Insertar datos en la tabla empleados
INSERT INTO empleados (nombre, salario)
VALUES ("Juan Pérez", NULL); -- Insertar empleado Juan Pérez con salario nulo

INSERT INTO empleados (nombre, salario)
VALUES ("María López", 250.00); -- Insertar empleado María López con salario 250.00

-- Consulta para obtener el nombre de los empleados y el salario, mostrando "No disponible" si el salario es nulo
SELECT nombre, IFNULL(salario, "No disponible") FROM empleados;

-- Consulta para obtener el total de empleados
SELECT COUNT(*) as total_empleados FROM empleados;
