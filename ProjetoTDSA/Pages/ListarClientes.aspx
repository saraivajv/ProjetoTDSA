<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarClientes.aspx.cs" Inherits="ProjetoTDSA.Pages.ListarClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Listar Clientes</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Clientes</h2>

            <asp:Button ID="btnAdicionarCliente" runat="server" Text="Adicionar Cliente" OnClick="btnAdicionarCliente_Click" />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CLI_ID" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="CLI_ID" HeaderText="ID" ReadOnly="True" />
                    <asp:BoundField DataField="CLI_NOME" HeaderText="Nome" />
                    <asp:BoundField DataField="CLI_DATANASCIMENTO" HeaderText="Data de Nascimento" />
                    <asp:BoundField DataField="CLI_ATIVO" HeaderText="Ativo" />
                    
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
