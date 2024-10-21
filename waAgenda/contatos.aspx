<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="contatos.aspx.cs" Inherits="waAgenda.contatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Inserir novo contato"></asp:Label>
    <br />
    <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
    <br />
    <asp:TextBox ID="txbNome" runat="server" Width="350px"></asp:TextBox>
    <br />
    <asp:Label ID="lblEmail" runat="server" Text="E-mail"></asp:Label>
    <br />
    <asp:TextBox ID="txbEmail" runat="server" Width="350px"></asp:TextBox>
    <br />
    <asp:Label ID="lblTelefone" runat="server" Text="Telefone"></asp:Label>
    <br />
    <asp:TextBox ID="txbTelefone" runat="server" Width="350px"></asp:TextBox>
    <br />
    <asp:Button ID="btnInserir" runat="server" OnClick="btnInserir_Click" Text="Inserir" />
    <br />
    <asp:Label ID="lblListaContatos" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Lista de contatos"></asp:Label>
    <asp:GridView ID="grvContatos" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceContatos" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="381px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceContatos" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [contato] WHERE [Id] = @Id" InsertCommand="INSERT INTO [contato] ([nome], [email], [telefone]) VALUES (@nome, @email, @telefone)" SelectCommand="SELECT [Id], [nome], [email], [telefone] FROM [contato]" UpdateCommand="UPDATE [contato] SET [nome] = @nome, [email] = @email, [telefone] = @telefone WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="telefone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="telefone" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
</asp:Content>
