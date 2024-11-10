<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ProyectoASP.NET.Index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="styles.scss" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h1 class="text-center mb-4">Trabajo con Usuarios</h1>

            <!-- Formulario de usuario -->
            <div class="form-group">
                <label for="txtId">Ingresar ID Usuario</label>
                <asp:TextBox runat="server" ID="txtId" CssClass="form-control" placeholder="Ingrese el ID del usuario"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtNombre">Ingresar Nombre</label>
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" placeholder="Ingrese el nombre del usuario"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtContraseña">Ingresar Contraseña</label>
                <asp:TextBox runat="server" ID="txtContraseña" CssClass="form-control" TextMode="Password" placeholder="Ingrese la contraseña"></asp:TextBox>
            </div>

            <div class="form-group text-center">
                <asp:Button ID="ButtonRegistrar" runat="server" Text="Registrar" CssClass="btn btn-primary m-2" OnClick="ButtonRegistrar_Click" />
                <asp:Button ID="ButtonEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger m-2" OnClick="ButtonEliminar_Click" />
                <asp:Button ID="ButtonEditar" runat="server" Text="Editar" CssClass="btn btn-warning m-2" OnClick="ButtonEditar_Click" />
            </div>

            <!-- Grid de usuarios -->
            <div class="table-responsive mt-4">
                <asp:GridView ID="gdwUSUARIOS" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-hover">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" SortExpression="Id" />
                        <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                        <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                    </Columns>
                </asp:GridView>
            </div>

        </div>
    </form>
</body>
</html>