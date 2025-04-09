-- Eliminar base de datos si existe
DROP DATABASE IF EXISTS read_a_book;

-- Crear base de datos
CREATE DATABASE read_a_book;

-- Usar la base de datos
USE read_a_book;

-- Crear tabla categorias (debe crearse antes que libros por la posible relación)
CREATE TABLE IF NOT EXISTS categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Crear tabla autores (debe crearse antes que libros por la posible relación)
CREATE TABLE IF NOT EXISTS autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    biografia TEXT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Crear tabla usuarios
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    estado VARCHAR(50),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Crear tabla libros
CREATE TABLE IF NOT EXISTS libros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(100),
    categoria VARCHAR(50),
    precio DECIMAL(10, 2) NOT NULL,
    descripcion TEXT,
    imagen VARCHAR(255),
    stock INT DEFAULT 0,
    estado VARCHAR(50),
    fecha_agregado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Crear tabla pedidos
CREATE TABLE IF NOT EXISTS pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    libro_id INT,
    cantidad INT DEFAULT 1,
    fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (libro_id) REFERENCES libros(id)
);

-- Crear tabla notificaciones
CREATE TABLE IF NOT EXISTS notificaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    mensaje VARCHAR(255),
    estado VARCHAR(50) DEFAULT 'pendiente',
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Insertar usuarios
INSERT INTO usuarios (nombre, email, password, estado) VALUES
('Juan Pérez', 'juan@example.com', 'password123', NULL),
('María Gómez', 'maria@example.com', 'password123', NULL);

-- Insertar libros
INSERT INTO libros (titulo, autor, categoria, precio, descripcion, imagen, stock, estado) VALUES
('Cien años de soledad', 'Gabriel García Márquez', 'Ficción', 20.99, NULL, NULL, 10, NULL),
('El código Da Vinci', 'Dan Brown', 'Misterio', 15.50, NULL, NULL, 5, NULL);

-- Insertar pedidos
INSERT INTO pedidos (usuario_id, libro_id, cantidad) VALUES
(1, 1, 2),  -- Juan compró 2 libros de "Cien años de soledad"
(2, 2, 1);  -- María compró 1 libro de "El código Da Vinci"

-- Insertar notificaciones
INSERT INTO notificaciones (usuario_id, mensaje, estado) VALUES
(1, 'Tienes un nuevo mensaje', 'pendiente'),
(2, 'Tu pedido ha sido procesado', 'pendiente');