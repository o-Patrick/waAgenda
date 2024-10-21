using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waAgenda
{
    public partial class login : System.Web.UI.Page
    {
        public object RootWebConfig { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string Email = txbEmail.Text;
            string Senha = txbSenha.Text;

            // Capturar a string de conexão
            System.Configuration.Configuration RootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings ConnString;
            ConnString = RootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

            // Cria um objeto de conexão
            SqlConnection Con = new SqlConnection();
            Con.ConnectionString = ConnString.ToString();
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = "SELECT * FROM usuario WHERE email = @email AND senha = @senha";
            Cmd.Parameters.AddWithValue("email", Email);
            Cmd.Parameters.AddWithValue("senha", Senha);
            Con.Open();
            SqlDataReader registro = Cmd.ExecuteReader();
            if (registro.HasRows)
            {
                registro.Read();
                Modelo.PveCod = PveCod;
                Modelo.VenCod = VedCod;
                Modelo.PveDataPagto = Convert.ToDateTime(registro["pve_datapagto"]);
                Modelo.PveDataVecto = Convert.ToDateTime(registro["pve_datavecto"]);
                Modelo.PveValor = Convert.ToDouble(registro["pve_valor"]);
            } else
            {
                lblMsg.Text = "E-mail ou senha inválido";
            }
        }
    }
}