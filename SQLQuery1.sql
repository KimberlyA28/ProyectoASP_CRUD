-- Crear la base de datos UsuariosDB
CREATE DATABASE UsuariosDB;
GO

-- Seleccionar la base de datos
USE UsuariosDB;

-- Crear la tabla Usuarios
CREATE TABLE Usuarios (
    Id INT IDENTITY(1000, 1) PRIMARY KEY,  -- La columna Id ser� clave primaria con auto-incremento a partir de 1000
    Usuario VARCHAR(50) NOT NULL,          -- Columna para el nombre de usuario
    Contrase�a VARCHAR(50) NOT NULL        -- Columna para la contrase�a
);
GO

-- Insertar un usuario de ejemplo
INSERT INTO Usuarios (Usuario, Contrase�a)
VALUES ('kimberly', 'alianza'),
VALUES ('Natalia', 'realMadrid');
GO


SELECT * FROM dbo.Usuarios;
