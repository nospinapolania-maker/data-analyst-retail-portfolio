-- Entregable 0: Mini base de datos retail en SQL
-- Proyecto inicial del portafolio Data Analyst Retail

-- 1. Crear la base de datos
CREATE DATABASE mini_retail;

-- 2. Usar la base de datos
USE mini_retail;

-- 3. Crear tabla de clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(80),
    edad INT NOT NULL,
    ciudad VARCHAR(80),
    correo VARCHAR(120)
);

-- 4. Crear tabla de productos
CREATE TABLE productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre_producto VARCHAR(100) NOT NULL,
    categoria VARCHAR(80),
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

-- 5. Crear tabla de ventas
CREATE TABLE ventas (
    id_venta INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_producto INT NOT NULL,
    fecha_venta DATE NOT NULL,
    cantidad INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

-- 6. Ingresar datos a la tabla clientes
INSERT INTO clientes (nombre, apellido, edad, ciudad, correo) VALUES
('Laura', 'Barragán', 27, 'Bogotá', 'lb1999@hotmail.com'),
('Carlos', 'Dávila', 28, 'Medellín', 'c.davila@gmail.com'),
('Miguel', 'Guacarapare', 26, 'Cali', 'g.miguel@outlook.com'),
('Diana', 'Palmeth', 20, 'Soledad', 'diana.palmeth@gmail.com'),
('María', 'López', 31, 'Barranquilla', 'maria.lopez@hotmail.es');

-- 7. Ingresar datos a la tabla productos
INSERT INTO productos (nombre_producto, categoria, precio, stock) VALUES
('Perfume masculino', 'Fragancias', 50.00, 50),
('Perfume femenino', 'Fragancias', 55.50, 50),
('Prestobarba', 'Cuidado Corporal', 33.40, 100),
('Crema hidratante', 'Cuidado Corporal', 28.90, 30),
('Splash corporal', 'Cuidado Corporal', 25.20, 25),
('Labial', 'Maquillaje', 30.70 60),
('Delineador de ojos', 'Maquillaje', 26.30, 20);

-- 8. Insertar datos en la tabla venta
INSERT INTO ventas (id_cliente, id_producto, fecha_venta, cantidad) VALUES
(1, 2, '2026-05-01', 8),
(3, 1, '2026-05-02', 6),
(5, 5, '2026-05-03', 3),
(2, 1, '2026-05-04', 4),
(4, 4, '2026-05-05', 5),
(5, 6, '2026-05-06', 7),
(2, 3, '2026-05-07', 1),
(3, 2, '2026-05-08', 3),
(1, 6, '2026-05-09', 5),
(2, 4, '2026-05-10', 2);

-- 9. Consultar datos insertados
SELECT * FROM clientes;

SELECT * FROM productos;

SELECT * FROM ventas;









