<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="waAgenda.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblNome" runat="server" BorderStyle="None" Text="Nome"></asp:Label>
            <br />
            <asp:TextBox ID="txbNome" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblEmail" runat="server" Text="E-mail"></asp:Label>
            <br />
            <asp:TextBox ID="txbEmail" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblSenha" runat="server" Text="Senha"></asp:Label>
            <br />
            <asp:TextBox ID="txbSenha" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
            <br />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
