CREATE DATABASE IF NOT EXISTS db_pedidos;
USE db_pedidos;

CREATE TABLE IF NOT EXISTS clientes (
    idcliente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR (100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Productos (
    idProducto INT PRIMARY KEY AUTO_INCREMENT,
    nombreProducto VARCHAR (100) NOT NULL,
    email DECIMAL(8,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS ventas (
    idVenta INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT,
    idProducto INT, 
    cantidad INT NOT NULL,
    totalVenta DECIMAL NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES clientes (idcliente)
    FOREIGN KEY (idProducto) REFERENCES Productos (idProducto)
);
 