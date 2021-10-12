<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="wsRptVehiculoFiltro.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Reporte de vehículos</p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" ForeColor="Black" OnClick="Button1_Click" Text="Aplicar filtro" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="4" class="table table-responsive">
            <HeaderStyle BackColor="#000099" Font-Size="Small" />
            <PagerSettings FirstPageText="&amp;lt;&amp;lt;&amp;lt;" LastPageText="&amp;gt;&amp;lt;&amp;lt;" />
            <PagerStyle BackColor="#000099" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#6699FF" Font-Size="Small" ForeColor="Black" />
        </asp:GridView>

</p>
    <p>
        &nbsp;</p>
</asp:Content>

