using System;
using System.Data.SqlClient;
using System.Configuration;

namespace ProjetoTDSA.Pages
{
    public partial class InserirCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        con.Open();
                        string query = "INSERT INTO CLIENTE (CLI_NOME, CLI_DATANASCIMENTO, CLI_ATIVO) VALUES (@Nome, @DataNascimento, @Ativo)";

                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            cmd.Parameters.AddWithValue("@Nome", txtNome.Text);
                            cmd.Parameters.AddWithValue("@DataNascimento", Convert.ToDateTime(txtDataNascimento.Text));
                            cmd.Parameters.AddWithValue("@Ativo", chkAtivo.Checked);

                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Exibir mensagem de sucesso
                    Response.Write("<script>alert('Cliente inserido com sucesso!');</script>");
                }
                catch (Exception ex)
                {
                    // Exibir mensagem de erro
                    Response.Write("<script>alert('Erro ao inserir cliente: " + ex.Message + "');</script>");
                }

                // Após salvar o cliente, redirecionar para a página de listagem de clientes
                Response.Redirect("ListarClientes.aspx");
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListarClientes.aspx");
        }
    }
}
