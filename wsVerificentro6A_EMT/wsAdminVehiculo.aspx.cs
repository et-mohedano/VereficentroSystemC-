using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Agregar librerias y referencias a servicios
using wsVerificentro;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        // Boton que ejecuta el método de inserción de vehículos
        wsVerificentro.ServiceSoapClient objServicio = new ServiceSoapClient();
        string bandera;
        // Ejecución del método
        bandera = objServicio.spInsVehiculoValidado(TextBox2.Text, int.Parse(TextBox3.Text),
                                                    TextBox4.Text, int.Parse(TextBox5.Text));
        // Validación de la bandera
        if (bandera == "-1")
            Response.Write("<script language='javascript'>alert('El modelo es inválido, verificar que sea entre los años 1970-2020');</script>");
        if (bandera == "0")
            Response.Write("<script language='javascript'>alert('El propietario es incorrecto, verificar que ya exista en el sistema');</script>");
        if (bandera == "1")
            Response.Write("<script language='javascript'>alert('El vehículo fue registrado existosamente');</script>");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        // Boton que ejecuta el método de eliminación de vehículos
        wsVerificentro.ServiceSoapClient objServicio = new ServiceSoapClient();
        string bandera;
        // Ejecución del método
        bandera = objServicio.spdelvehiculo(int.Parse(TextBox1.Text));
        // Validación de la bandera
        if (bandera == "-1")
            Response.Write("<script language='javascript'>alert('La operación es inválida ya que se tienen hologramas asociados a él');</script>");
        if (bandera == "0")
            Response.Write("<script language='javascript'>alert('El vehículo es incorrecto, verificar que ya exista en el sistema');</script>");
        if (bandera == "1")
            Response.Write("<script language='javascript'>alert('El vehículo fue eliminado existosamente');</script>");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        // Boton que ejecuta el método de modificación de vehículos
        wsVerificentro.ServiceSoapClient objServicio = new ServiceSoapClient();
        string bandera;
        // Ejecución del método
        bandera = objServicio.spUpdVehiculo(int.Parse(TextBox1.Text),TextBox2.Text, 
                                            int.Parse(TextBox3.Text),TextBox4.Text, 
                                            int.Parse(TextBox5.Text));
        // Validación de la bandera
        if (bandera == "-1")
            Response.Write("<script language='javascript'>alert('La operación es inválida, verifica que ya exista el propietario');</script>");
        if (bandera == "0")
            Response.Write("<script language='javascript'>alert('El vehículo es incorrecto, verificar que ya exista en el sistema');</script>");
        if (bandera == "1")
            Response.Write("<script language='javascript'>alert('El vehículo fue modificado existosamente');</script>");
        if (bandera == "2")
            Response.Write("<script language='javascript'>alert('La operación es inválida, hay otro vehículo con la matricula ingresada');</script>");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        // Boton que ejecuta el método de modificación de limpieza del formulario
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
}