<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="wsVsVehiculo.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Vista de vehículos</p>
    <p>
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" class="table">
            </asp:GridView>
        </div>
    </p>
<p>
    &nbsp;</p>
</asp:Content>

