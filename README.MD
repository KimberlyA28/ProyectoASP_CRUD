# Descripción
Este es un proyecto de aplicación web en ASP.NET que permite gestionar usuarios mediante un CRUD (Crear, Leer, Actualizar y Eliminar) y autenticación de inicio de sesión. Utiliza SQL Server para el almacenamiento de datos y está diseñada con Bootstrap para ser responsiva.

# Características
- **Autenticación de usuario:** Verificación de credenciales para el inicio de sesión.
- **CRUD de usuarios:** Funciones para registrar, editar y eliminar usuarios.
- **Base de datos SQL Server:** Almacenamiento seguro de las credenciales de usuario.
- **Interfaz responsiva:** Utiliza Bootstrap para adaptarse a diferentes tamaños de pantalla.

# Requisitos
- Visual Studio o cualquier editor compatible con ASP.NET.
- SQL Server para gestionar la base de datos.
- .NET Framework compatible con ASP.NET.

# Configuración

## Crear la base de datos
Ejecuta el siguiente script SQL en SQL Server para crear la base de datos y la tabla `Usuarios`:

```sql
CREATE DATABASE UsuariosDB;
USE UsuariosDB;

CREATE TABLE Usuarios (
    Id INT IDENTITY(1000, 1) PRIMARY KEY,  
    Usuario VARCHAR(50) NOT NULL,          
    Contraseña VARCHAR(50) NOT NULL        
);

INSERT INTO Usuarios (Usuario, Contraseña) VALUES ('kimberly', 'alianza');

# Configurar la cadena de conexión

## Abre el archivo Web.config en el proyecto y agrega la cadena de conexión dentro de la sección <connectionStrings>:

<connectionStrings>
    <add name="conexion" connectionString="Data Source=TU_SERVIDOR;Initial Catalog=UsuariosDB;Integrated Security=True" providerName="System.Data.SqlClient" />
</connectionStrings>

Nota: Reemplaza TU_SERVIDOR con el nombre de tu servidor SQL.

## Ejecutar el proyecto

Abre el proyecto en Visual Studio y presiona F5 para ejecutarlo. Esto abrirá la aplicación en el navegador y podrás empezar a gestionar los usuarios.

## Funcionalidades:

Login: Permite a los usuarios iniciar sesión con el nombre de usuario y la contraseña.

Registrar Usuario: Permite registrar nuevos usuarios con un nombre de usuario y contraseña.

Editar Usuario: Permite modificar los datos de un usuario existente.

Eliminar Usuario: Permite eliminar usuarios del sistema.

## Estructura del Proyecto

Copiar código
/ProyectoASP.NET
├── /Controllers
│   └── UsuarioController.cs  # Controlador para gestionar usuarios
├── /Models
│   └── Usuario.cs            # Modelo para la tabla de usuarios
├── /Views
│   ├── /Login.cshtml         # Vista para el login
│   ├── /Registro.cshtml      # Vista para registrar nuevos usuarios
│   ├── /Index.cshtml         # Vista principal para gestionar usuarios
├── /App_Data
│   └── UsuariosDB.mdf        # Base de datos local (si corresponde)
├── Web.config                # Configuración de la aplicación y cadena de conexión
└── Global.asax               # Archivo de configuración global