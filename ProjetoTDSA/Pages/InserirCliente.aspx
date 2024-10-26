<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InserirCliente.aspx.cs" Inherits="ProjetoTDSA.Pages.InserirCliente" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inserir Cliente</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Adicionar Cliente</h2>
            
            <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox><br />

            <asp:Label ID="lblDataNascimento" runat="server" Text="Data de Nascimento:"></asp:Label>
            <asp:TextBox ID="txtDataNascimento" runat="server"></asp:TextBox><br />

            <asp:Label ID="lblAtivo" runat="server" Text="Ativo:"></asp:Label>
            <asp:CheckBox ID="chkAtivo" runat="server" /><br />

            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
            <asp:Button ID="btnVoltar" runat="server" Text="Voltar" OnClick="btnVoltar_Click" />
        </div>
    </form>
</body>
</html>
