<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProyectoAsp.aspx.cs" Inherits="ProyectoASP.NET.ProyectoAsp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Login</title>

    <!-- Agregar Bootstrap -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="formulario_login" runat="server" class="h-100">
        <div class="container h-100 d-flex align-items-center justify-content-center">
            <div class="row justify-content-center w-100">
                <div class="col-md-6">
                    <h2 class="text-center mt-5">Inicio de Sesión</h2>
                    <div class="mt-4">
                        <div class="form-group">
                            <label for="txtUsuario">Usuario</label>
                            <!-- Usamos un TextBox de ASP.NET -->
                            <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" placeholder="Ingrese su usuario" required="true"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="txtPassword">Contraseña</label>
                            <!-- Usamos un TextBox con el atributo TextMode="Password" para ocultar la contraseña -->
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese su contraseña" required="true"></asp:TextBox>
                        </div>

                        <!-- Usamos un botón de ASP.NET -->
                        <div class="text-center">
                            <asp:Button ID="BtnIngresar" CssClass="btn btn-primary btn-dark mt-3" runat="server" Text="Ingresar" OnClick="BtnIngresar_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Agregar Bootstrap JS y dependencias -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
