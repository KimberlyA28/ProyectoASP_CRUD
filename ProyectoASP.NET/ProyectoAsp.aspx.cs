using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ProyectoASP.NET
{
    public partial class ProyectoAsp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
            // Obtener el usuario y contraseña de los TextBox
            string usuario = txtUsuario.Text;
            string contraseña = txtPassword.Text;

            // Verificar que los campos no estén vacíos
            if (string.IsNullOrEmpty(usuario) || string.IsNullOrEmpty(contraseña))
            {
                // Mostrar mensaje de error o manejar el caso
                Response.Write("<script>alert('Ingrese el usuario y la contraseña.');</script>");
                return;
            }

            // Obtener la cadena de conexión desde el archivo Web.config
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;

            using (SqlConnection sqlConectar = new SqlConnection(conectar))
            {
                try
                {
                    sqlConectar.Open();

                    // Definir la consulta SQL con parámetros para evitar inyección SQL
                    string query = "SELECT COUNT(1) FROM Usuarios WHERE Usuario = @Usuario AND Contraseña = @Contraseña";

                    using (SqlCommand cmd = new SqlCommand(query, sqlConectar))
                    {
                        cmd.Parameters.AddWithValue("@Usuario", usuario);
                        cmd.Parameters.AddWithValue("@Contraseña", contraseña);

                        // Ejecutar la consulta
                        int count = Convert.ToInt32(cmd.ExecuteScalar());

                        // Verificar si las credenciales son válidas
                        if (count == 1)
                        {
                            // Redireccionar si el inicio de sesión es exitoso
                            Response.Redirect("Index.aspx");
                        }
                        else
                        {
                            // Mostrar mensaje de error si las credenciales no son válidas
                            Response.Write("<script>alert('Usuario o contraseña incorrectos.');</script>");
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Manejar la excepción
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
        }
    }
}