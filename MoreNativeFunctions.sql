CREATE TABLE productos (
    idProducto BIGINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    precio DECIMAL(10, 7)
);
DROP TABLE tareas;
INSERT INTO productos (nombre, precio)
VALUES ("Producto A", -15.7523452345);

INSERT INTO productos (nombre, precio)
VALUES ("Producto B", -19.997685679);

SELECT nombre, ABS(precio), ROUND(precio, 2) FROM productos;

CREATE TABLE tareas (
    IdTarea BIGINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    fecha_limite DATE
);

INSERT INTO tareas (nombre, fecha_limite) VALUES ("Tarea A", "2023-06-30");

INSERT INTO tareas (nombre, fecha_limite) VALUES ("Tarea B", "2023-07-15");
INSERT INTO tareas (nombre, fecha_limite) VALUES ("Tarea C", NOW());
SELECT IdTarea, nombre, fecha_limite, DATE_FORMAT(fecha_limite, "%d-%m-%Y") FROM tareas;