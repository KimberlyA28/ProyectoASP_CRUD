using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ProyectoASP.NET
{
    public partial class Index : System.Web.UI.Page
    {
        // Obtener la cadena de conexión desde Web.config
        private string connectionString = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarUsuarios();
            }
        }

        private void CargarUsuarios()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    // Consulta SQL para obtener los datos de los usuarios
                    string query = "SELECT Id, Usuario, Contraseña FROM Usuarios";
                    SqlDataAdapter da = new SqlDataAdapter(query, conn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    // Asigna el DataTable al GridView
                    gdwUSUARIOS.DataSource = dt;
                    gdwUSUARIOS.DataBind();
                }
                catch (Exception ex)
                {
                    // Manejo de excepciones
                    Response.Write("Error: " + ex.Message);
                }
            }
        }

        // Aquí puedes agregar métodos para Registrar, Editar o Eliminar los usuarios según lo necesites

        protected void ButtonRegistrar_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    string query = "INSERT INTO Usuarios (Usuario, Contraseña) VALUES (@Usuario, @Contraseña)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@Usuario", txtNombre.Text);
                    cmd.Parameters.AddWithValue("@Contraseña", txtContraseña.Text);
                    cmd.ExecuteNonQuery();

                    CargarUsuarios();
                    LimpiarCampos();
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
            }
        }

        protected void ButtonEliminar_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    string query = "DELETE FROM Usuarios WHERE Id = @Id";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@Id", txtId.Text);
                    cmd.ExecuteNonQuery();

                    CargarUsuarios();
                    LimpiarCampos();
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
            }
        }

        protected void ButtonEditar_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    string query = "UPDATE Usuarios SET Usuario = @Usuario, Contraseña = @Contraseña WHERE Id = @Id";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@Id", txtId.Text);
                    cmd.Parameters.AddWithValue("@Usuario", txtNombre.Text);
                    cmd.Parameters.AddWithValue("@Contraseña", txtContraseña.Text);
                    cmd.ExecuteNonQuery();

                    CargarUsuarios();
                    LimpiarCampos();
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
            }
        }

        // Método para limpiar los campos de entrada
        private void LimpiarCampos()
        {
            txtId.Text = "";
            txtNombre.Text = "";
            txtContraseña.Text = "";
        }
    }
}
