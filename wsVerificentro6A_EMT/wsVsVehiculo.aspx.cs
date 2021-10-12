using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Agregar referencia
using wsVerificentro;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Crear objeto del tipo servicio, en base a la referencia agregada
        wsVerificentro.ServiceSoapClient objServicio = new ServiceSoapClient();
        DataSet ds = new DataSet();
        ds = objServicio.vwVehiculo();
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}