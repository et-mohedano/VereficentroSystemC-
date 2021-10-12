<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="wsAdminVehiculo.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

	<link href="App_Themes/estilos/principal.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  	 
	<center>
    	<asp:Label ID="Label1" runat="server" Text="Administración de Automóviles" CssClass="fontTrabajoTitulo" ></asp:Label>
    	<br /><br /><br />

	<table width="80%" border="0">    
	<tr>
	<td  align="left">    
    	<asp:Label ID="Label2" runat="server" Text="Clave:"  CssClass="fontTrabajoTitulo"></asp:Label>
    	</td>
	<td  align="left">    
    	<asp:TextBox ID="TextBox1" runat="server"  ForeColor="Black" Width="177px"></asp:TextBox>
    	</td>
	<td>    
    	<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/multimedia/iconos/insert.png" OnClick="ImageButton1_Click" />
    	</td>
	</tr>

	<tr>
	<td  align="left">    
    	<asp:Label ID="Label3" runat="server" Text="Matricula:" CssClass="fontTrabajoTitulo"></asp:Label>
    	</td>
	<td align="left">    
    	<asp:TextBox ID="TextBox2" runat="server"  Width="177px" ForeColor="Black"></asp:TextBox>
    	</td>
	<td>    
    	<asp:ImageButton ID="ImageButton2" runat="server"
        	ImageUrl="~/multimedia/iconos/delete.png"  OnClick="ImageButton2_Click" />
    	</td>
	</tr>

	<tr>
	<td  align="left">    
    	<asp:Label ID="Label5" runat="server" Text="Modelo:" CssClass="fontTrabajoTitulo"></asp:Label>
    	</td>
	<td align="left">    
    	<asp:TextBox ID="TextBox3" runat="server" Width="310px"  ForeColor="Black"></asp:TextBox>
    	</td>
	<td>    
    	<asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/multimedia/iconos/update.png" OnClick="ImageButton3_Click"/>
	</tr>

	<tr>
	<td  align="left">    
    	<asp:Label ID="Label6" runat="server" Text="Marca:"  CssClass="fontTrabajoTitulo"></asp:Label>
    	</td>
	<td  align="left">    
    	<asp:TextBox ID="TextBox4" runat="server"
        	Width="310px"  ForeColor="Black" ></asp:TextBox>
    	</td>
	<td>    
    	<asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/multimedia/iconos/clean.png" OnClick="ImageButton4_Click"/>
    	</td>
	</tr>

	<tr>
	<td  align="left">    
    	<asp:Label ID="Label7" runat="server" Text="Propietario:" CssClass="fontTrabajoTitulo"></asp:Label>
    	</td>
	<td  align="left">    
    	<asp:TextBox ID="TextBox5" runat="server"  Width="177px"  ForeColor="Black"></asp:TextBox>
    	</td>
	<td>    
    	<asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/multimedia/iconos/refresh.png" />
    	</td>
	</tr>

	<tr>
    	<td  align="left">	</td>
    	<td align="left">	</td>
    	<td></td>
	</tr>
   	 
	</table>

</asp:Content>
