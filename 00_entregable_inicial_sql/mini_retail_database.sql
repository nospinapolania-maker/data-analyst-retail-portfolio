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
