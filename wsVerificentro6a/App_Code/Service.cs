using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using MySql.Data.MySqlClient;
using System.Data;


[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
// [System.Web.Script.Services.ScriptService]

public class Service : System.Web.Services.WebService
{
    // Creacion de atributos enfocados a la conexion a BD
    private string CadConn = "server=localhost;database=verificentro;uid=root;pwd=12345!;";
    // server localhost
    // database verificentro
    // user root
    // password Translader22!

    // Metodos de conexion a base de datos
    // Ejecucion de objetos de datos - tipos vistas
    [WebMethod]
    public DataSet vwVehiculo(){
        // Creacion de objetos de conexio y ejecucion de comandos sql
        string CadSql = "select * from vwvehiculo;";
        MySqlConnection myConn = new MySqlConnection(CadConn);
        MySqlDataAdapter myDa = new MySqlDataAdapter(CadSql, myConn);
        DataSet Ds = new DataSet();
        myDa.Fill(Ds, "vwVehiculo");
        return Ds;
    }
    [WebMethod]
    public DataSet vwRptVehiculoPropietario()
    {
        // Creacion de objetos de conexio y ejecucion de comandos sql
        string CadSql = "select * from vwRptVehiculoPropietario;";
        MySqlConnection myConn = new MySqlConnection(CadConn);
        MySqlDataAdapter myDa = new MySqlDataAdapter(CadSql, myConn);
        DataSet Ds = new DataSet();
        myDa.Fill(Ds, "vwRptVehiculoPropietario");
        return Ds;
    }
    //
    // Ejecucion de objetos de datos - tipos procedimientos almacenados
    // Sin parametros
    // con parametros
    // devuelve un grupo de datos
    // devuelve datos tipo bandera
    [WebMethod]
    public DataTable spQryVehiculo(){
        string CadSql = "call spQryVehiculo();";

        MySqlConnection myConn = new MySqlConnection(CadConn);
        // Creación del objeto tipo comando de sql
        MySqlCommand myCmd = new MySqlCommand();
        myCmd.Connection = myConn;
        myCmd.CommandType = CommandType.Text;
        myCmd.CommandText = CadSql;
        // Ejecutar el comando y verificar el retorno de datos
        myConn.Open();
            MySqlDataReader myDr = myCmd.ExecuteReader();
            // Ya se tienen los datos en el mysqldatareades. se migraran a un datatable
            DataTable MyDt = new DataTable("QryVehiculo");
            MyDt.Columns.Add("veh_cve_vehiculo", typeof(int));
            MyDt.Columns.Add("veh_numero_matricula", typeof(string));
            MyDt.Columns.Add("veh_modelo", typeof(int));
            MyDt.Columns.Add("veh_marca", typeof(string));
            MyDt.Columns.Add("pro_cve_propietario", typeof(int));
            // Recorrer el datareader para extraer los datos y migrarlos al datatable
            while (myDr.Read() == true){
                DataRow row = MyDt.NewRow();
                row["veh_cve_vehiculo"] = myDr.GetValue(0);
                row["veh_numero_matricula"] = myDr.GetValue(1);
                row["veh_modelo"] = myDr.GetValue(2);
                row["veh_marca"] = myDr.GetValue(3);
                row["pro_cve_propietario"] = myDr.GetValue(4);
                // Agregar el datarow al datatable
                MyDt.Rows.Add(row);                
            }
        // En este momento, myDt ya tiene todos los registros almacenados
        myConn.Close();

        return MyDt;
    }
    [WebMethod]
    public DataTable spRptVehiculoPropietarioFiltrado(string marcaFiltrado)
    {
        string CadSql = "call spRptVehiculoPropietarioFiltrado('" + marcaFiltrado + "');";

        MySqlConnection myConn = new MySqlConnection(CadConn);
        // Creación del objeto tipo comando de sql
        MySqlCommand myCmd = new MySqlCommand();
        myCmd.Connection = myConn;
        myCmd.CommandType = CommandType.Text;
        myCmd.CommandText = CadSql;
        // Ejecutar el comando y verificar el retorno de datos
        myConn.Open();
        MySqlDataReader myDr = myCmd.ExecuteReader();
        // Ya se tienen los datos en el mysqldatareades. se migraran a un datatable
        DataTable MyDt = new DataTable("spRptVehiculoPropietarioFiltrado");
        MyDt.Columns.Add("Clave", typeof(int));
        MyDt.Columns.Add("Matricula", typeof(string));
        MyDt.Columns.Add("Modelo", typeof(int));
        MyDt.Columns.Add("Marca", typeof(string));
        MyDt.Columns.Add("Clave_propietario", typeof(int));
        // Recorrer el datareader para extraer los datos y migrarlos al datatable
        while (myDr.Read() == true)
        {
            DataRow row = MyDt.NewRow();
            row["clave"] = myDr.GetValue(0);
            row["matricula"] = myDr.GetValue(1);
            row["modelo"] = myDr.GetValue(2);
            row["marca"] = myDr.GetValue(3);
            row["clave_propietario"] = myDr.GetValue(4);
            // Agregar el datarow al datatable
            MyDt.Rows.Add(row);
        }
        // En este momento, myDt ya tiene todos los registros almacenados
        myConn.Close();

        return MyDt;
    }
    [WebMethod]
    public string spInsVehiculoValidado(string matricula,
                                           int modelo,
                                           string marca,
                                           int propietario)
    {
        string CadSql = "call spInsVehiculoValidado('" + matricula + "'," + modelo.ToString() +
            ",'" + marca + "'," + propietario.ToString() + ");";

        MySqlConnection myConn = new MySqlConnection(CadConn);
        // Creación del objeto tipo comando de sql
        MySqlCommand myCmd = new MySqlCommand();
        myCmd.Connection = myConn;
        myCmd.CommandType = CommandType.Text;
        myCmd.CommandText = CadSql;
        // Ejecutar el comando y verificar el retorno de datos
        myConn.Open();
        MySqlDataReader myDr = myCmd.ExecuteReader();
        // Ya se tienen los datos en el mysqldatareades. se migraran a un datatable
        myDr.Read();
        string bandera = myDr.GetValue(0).ToString();
        myConn.Close();

        return bandera;
    }
    [WebMethod]
    public string spUpPropietario(int propietario,
                                  string nombre,
                                  string apellido_pa,
                                  string apellido_ma,
                                  string municipio)
    {
        string CadSql = "call spupdpropietario(" + propietario.ToString() + ",'" + apellido_pa +
            "','" + apellido_ma + "','" + nombre + "','" + municipio + "'   );";

        MySqlConnection myConn = new MySqlConnection(CadConn);
        // Creación del objeto tipo comando de sql
        MySqlCommand myCmd = new MySqlCommand();
        myCmd.Connection = myConn;
        myCmd.CommandType = CommandType.Text;
        myCmd.CommandText = CadSql;
        // Ejecutar el comando y verificar el retorno de datos
        myConn.Open();
        MySqlDataReader myDr = myCmd.ExecuteReader();
        // Ya se tienen los datos en el mysqldatareades. se migraran a un datatable
        myDr.Read();
        string bandera = myDr.GetValue(0).ToString();
        myConn.Close();

        return bandera;
    }
    [WebMethod]
    public string spdelpropietario(int propietario)
    {
        string CadSql = "call spdelpropietario(" + propietario.ToString() + ");";

        MySqlConnection myConn = new MySqlConnection(CadConn);
        // Creación del objeto tipo comando de sql
        MySqlCommand myCmd = new MySqlCommand();
        myCmd.Connection = myConn;
        myCmd.CommandType = CommandType.Text;
        myCmd.CommandText = CadSql;
        // Ejecutar el comando y verificar el retorno de datos
        myConn.Open();
        MySqlDataReader myDr = myCmd.ExecuteReader();
        // Ya se tienen los datos en el mysqldatareades. se migraran a un datatable
        myDr.Read();
        string bandera = myDr.GetValue(0).ToString();
        myConn.Close();

        return bandera;
    }
    [WebMethod]
    public string spInserPropietario(string nombre,
                                     string apellido_ma,
                                     string apellido_pa,
                                     string municipio)
    {
        string CadSql = "call spInserPropietario('" + nombre + "','" + apellido_ma + "','"
           + apellido_pa + "','" + municipio + "');";

        MySqlConnection myConn = new MySqlConnection(CadConn);
        // Creación del objeto tipo comando de sql
        MySqlCommand myCmd = new MySqlCommand();
        myCmd.Connection = myConn;
        myCmd.CommandType = CommandType.Text;
        myCmd.CommandText = CadSql;
        // Ejecutar el comando y verificar el retorno de datos
        myConn.Open();
        MySqlDataReader myDr = myCmd.ExecuteReader();
        // Ya se tienen los datos en el mysqldatareades. se migraran a un datatable
        myDr.Read();
        string bandera = myDr.GetValue(0).ToString();
        myConn.Close();

        return bandera;
    }
    [WebMethod]
    public string spUpdVehiculo(int clave,
                                  string matricula,
                                  int modelo,
                                  string marca,
                                  int propietario)
    {
        string CadSql = "call spUpdVehiculo(" + clave.ToString() + ",'" + matricula +
            "'," + modelo.ToString() + ",'" + marca + "'," + propietario + ");";

        MySqlConnection myConn = new MySqlConnection(CadConn);
        // Creación del objeto tipo comando de sql
        MySqlCommand myCmd = new MySqlCommand();
        myCmd.Connection = myConn;
        myCmd.CommandType = CommandType.Text;
        myCmd.CommandText = CadSql;
        // Ejecutar el comando y verificar el retorno de datos
        myConn.Open();
        MySqlDataReader myDr = myCmd.ExecuteReader();
        // Ya se tienen los datos en el mysqldatareades. se migraran a un datatable
        myDr.Read();
        string bandera = myDr.GetValue(0).ToString();
        myConn.Close();

        return bandera;
    }
    [WebMethod]
    public string spdelvehiculo(int clave)
    {
        string CadSql = "call spdelvehiculo(" + clave.ToString() + ");";

        MySqlConnection myConn = new MySqlConnection(CadConn);
        // Creación del objeto tipo comando de sql
        MySqlCommand myCmd = new MySqlCommand();
        myCmd.Connection = myConn;
        myCmd.CommandType = CommandType.Text;
        myCmd.CommandText = CadSql;
        // Ejecutar el comando y verificar el retorno de datos
        myConn.Open();
        MySqlDataReader myDr = myCmd.ExecuteReader();
        // Ya se tienen los datos en el mysqldatareades. se migraran a un datatable
        myDr.Read();
        string bandera = myDr.GetValue(0).ToString();
        myConn.Close();

        return bandera;
    }
    public Service () {

        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
    }

    
}