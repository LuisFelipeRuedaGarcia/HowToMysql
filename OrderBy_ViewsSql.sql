-- Crear la tabla "clientes" con las columnas especificadas
CREATE TABLE clientes(
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(100),
    fecha_registro DATE
);

-- Insertar datos en la tabla "clientes"
INSERT INTO clientes(id, nombre, ciudad, fecha_registro) VALUES (1, "Juan Pérez", "Madrid", "2022-01-15"),
(2, "María López", "Barcelona", "2021-11-30"),
(3,"Carlos Gómez", "Madrid", "2022-02-20"),
(4,"Ana García", "Valencia","2022-03-10");

-- Seleccionar y mostrar todas las columnas de la tabla "clientes" ordenadas por nombre en orden ascendente
SELECT id, nombre, ciudad, fecha_registro FROM clientes ORDER BY nombre ASC;

-- Seleccionar y mostrar todas las columnas de la tabla "clientes" ordenadas por ciudad en orden ascendente,
-- y dentro de cada ciudad, ordenar por fecha de registro en orden descendente
SELECT id, nombre, ciudad, fecha_registro FROM clientes ORDER BY ciudad ASC, fecha_registro DESC;

-- Seleccionar y mostrar todas las columnas de la tabla "clientes" donde la fecha de registro sea posterior a "2022-01-01",
-- ordenadas por fecha de registro en orden ascendente
SELECT id, nombre, ciudad, fecha_registro FROM clientes WHERE fecha_registro > "2022-01-01" ORDER BY fecha_registro ASC;

-- Crear una vista llamada "vista_clientes" que contiene todas las columnas de la tabla "clientes"
CREATE VIEW vista_clientes AS
SELECT id, nombre, ciudad, fecha_registro
FROM clientes;

-- Seleccionar y mostrar todas las columnas de la vista "vista_clientes"
SELECT * FROM vista_clientes;

-- Crear una vista llamada "vistas_clientes_madrid" que contiene todas las columnas de la tabla "clientes"
-- donde la ciudad sea "Madrid"
CREATE VIEW vistas_clientes_madrid AS
SELECT id, nombre, ciudad, fecha_registro
FROM clientes
WHERE ciudad = "Madrid";

-- Seleccionar y mostrar todas las columnas de la vista "vistas_clientes_madrid"
SELECT * FROM vistas_clientes_madrid;

-- Crear una vista llamada "vista_clientes_ordenados" que contiene todas las columnas de la tabla "clientes"
-- ordenadas por fecha de registro en orden descendente
CREATE VIEW vista_clientes_ordenados AS
SELECT id, nombre, ciudad, fecha_registro
FROM clientes
ORDER BY fecha_registro DESC;

-- Seleccionar y mostrar todas las columnas de la vista "vista_clientes_ordenados"
SELECT * FROM vista_clientes_ordenados;
