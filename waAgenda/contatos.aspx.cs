using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waAgenda
{
    public partial class contatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //
        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {
            // Capturar a string de conexão
            System.Configuration.Configuration RootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings ConnString;
            ConnString = RootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

            // Cria um objeto de conexão
            SqlConnection Con = new SqlConnection();
            Con.ConnectionString = ConnString.ToString();
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "INSERT INTO contato (nome, email, telefone) VALUES (@nome, @email, @telefone)";
            Cmd.Parameters.AddWithValue("nome", txbNome.Text);
            Cmd.Parameters.AddWithValue("email", txbEmail.Text);
            Cmd.Parameters.AddWithValue("telefone", txbTelefone.Text);
            Con.Open();
            Cmd.ExecuteNonQuery();
            Con.Close();

            grvContatos.DataBind();
        }
    }
}