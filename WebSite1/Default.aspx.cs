using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString);


        //Create Command object
        SqlCommand nonqueryCommand = conn.CreateCommand();

        try
        {
            // Open Connection
            conn.Open();

            // Create INSERT statement with named parameters
            nonqueryCommand.CommandText = "INSERT  INTO Persona (Nombre) VALUES ('Josue')";

            // Add Parameters to Command Parameters collection
           // nonqueryCommand.Parameters.Add("@Nombre", SqlDbType.VarChar, 10);





            nonqueryCommand.ExecuteNonQuery();
        }

        catch (SqlException ex)
        {
            // Display error

        }
 
    }
}