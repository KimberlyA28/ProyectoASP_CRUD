# Sistema de Gestión de Usuarios - ASP.NET CRUD

## 📝 Descripción

Este proyecto de aplicación web en ASP.NET permite gestionar usuarios mediante un sistema CRUD (Crear, Leer, Actualizar y Eliminar) y un sistema de autenticación de inicio de sesión. Utiliza SQL Server para el almacenamiento de datos y está diseñado con Bootstrap para ser completamente responsivo.

![Proyecto](https://github.com/KimberlyA28/ProyectoASP_CRUD/img/proyecto.jpg)

## Características:

- Autenticación de usuario: Permite verificar las credenciales para el inicio de sesión.

- CRUD de usuarios: Funcionalidades para crear, leer, actualizar y eliminar usuarios.

- Base de datos SQL Server: Utiliza SQL Server para almacenar de manera segura las credenciales de usuario.

- Interfaz responsiva: Se ha utilizado Bootstrap para asegurar que la aplicación se adapte a diferentes tamaños de pantalla.

## Requisitos:

- [x] Visual Studio o cualquier editor compatible con ASP.NET.
- [x] SQL Server para gestionar la base de datos.
- [x] .NET Framework compatible con ASP.NET.

## Configuración:

### Crear la base de datos

- Ejecuta el siguiente script SQL en SQL Server para crear la base de datos y la tabla de usuarios:

`Copiar código`

sql
```
CREATE DATABASE UsuariosDB;
USE UsuariosDB;

CREATE TABLE Usuarios (
    Id INT IDENTITY(1000, 1) PRIMARY KEY,  
    Usuario VARCHAR(50) NOT NULL,          
    Contraseña VARCHAR(50) NOT NULL        
);

-- Inserta un usuario inicial
INSERT INTO Usuarios (Usuario, Contraseña) VALUES ('kimberly', 'alianza');
```

## Configurar la cadena de conexión

Abre el archivo Web.config de tu proyecto.
Dentro de la sección <connectionStrings>, agrega la siguiente cadena de conexión:

`Copiar código`

xml
```
<connectionStrings>
    <add name="conexion" connectionString="Data Source=TU_SERVIDOR;Initial Catalog=UsuariosDB;Integrated Security=True" providerName="System.Data.SqlClient" />
</connectionStrings>
```

> [!IMPORTANT]
> Reemplaza TU_SERVIDOR con el nombre de tu servidor SQL.

Ejecutar el proyecto
Abre el proyecto en Visual Studio.
Presiona F5 para ejecutar la aplicación. Esto abrirá el proyecto en el navegador, donde podrás empezar a gestionar los usuarios.

## Funcionalidades:

* Login: Permite a los usuarios iniciar sesión con su nombre de usuario y contraseña.

* Registrar Usuario: Permite registrar nuevos usuarios en el sistema.

* Editar Usuario: Permite modificar los datos de un usuario existente.

* Eliminar Usuario: Permite eliminar usuarios del sistema.

### Estructura del Proyecto

bash
```
/ProyectoASP.NET
├── /Controllers
│   └── UsuarioController.cs    # Controlador para gestionar usuarios
├── /Models
│   └── Usuario.cs             # Modelo de la tabla de usuarios
├── /Views
│   ├── /Login.cshtml          # Vista para el login
│   ├── /Registro.cshtml       # Vista para registrar nuevos usuarios
│   ├── /Index.cshtml          # Vista principal para gestionar usuarios
├── /App_Data
│   └── UsuariosDB.mdf         # Base de datos local (si corresponde)
├── Web.config                 # Configuración de la aplicación y cadena de conexión
└── Global.asax                # Archivo de configuración global
```

## Conclusión

Este proyecto proporciona una forma sencilla de gestionar usuarios mediante un sistema CRUD y autenticación. Con las configuraciones y estructura descritas, podrás comenzar a modificar y ampliar la funcionalidad según tus necesidades.