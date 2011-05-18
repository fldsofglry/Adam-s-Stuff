using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


/// <summary>
/// This class contains functions for opening a connection and performing some basic 
/// database procedures.  Amongst them are building DataAdapters, Readers and SQL commands
/// </summary>
public class DataAccess
{
    string s_SQLConnection = ConfigurationManager.ConnectionStrings["CincyState"].ConnectionString;

    public DataAccess(string SQLConnection)
    {

        s_SQLConnection = SQLConnection;
    }
    

    /* ----------------------------------------------------------
     * opens a sql data connection.  Checks for connection state
     * ----------------------------------------------------------
     * */
    public static bool OpenSqlConnection(ref SqlConnection theConn, string strConn, out string strError)
    {
        bool bRet = false;

        strError = "";

        if (theConn == null)
            theConn = new SqlConnection();

        try
        {
            switch (theConn.State)
            {
                case ConnectionState.Broken:
                    theConn.Close();
                    theConn.ConnectionString = strConn;
                    theConn.Open();
                    bRet = true;
                    break;

                case ConnectionState.Closed:
                    theConn.ConnectionString = strConn;
                    theConn.Open();
                    bRet = true;
                    break;

                case ConnectionState.Open:
                    bRet = true;
                    break;

                default:
                    strError = "Connection state is " + theConn.State.ToString();
                    break;
            }
        }

        catch (Exception ex)
        {
            strError = ex.Message;
        }

        return bRet;

    }

    /* -----------------------------------------------------------------------------
     * Fills a data adapter with the whatever the sql string is
     * -----------------------------------------------------------------------------
     * */
    public static DataTable getDataAdapter(ref SqlConnection Conn, string strSQL, out string strError)
    {
        strError = "";
        
        DataTable dtResults = new DataTable();
        
        SqlCommand cmd = new SqlCommand(strSQL, Conn);
        SqlDataAdapter myDataAdapter = new SqlDataAdapter(cmd);

        myDataAdapter.Fill(dtResults);

        myDataAdapter.Dispose();

        cmd.Dispose();

        Conn.Close();

        return dtResults;
    }

  /* -----------------------------------------------------------------------------
   * returns a dataTable based on the command that was given
   * -----------------------------------------------------------------------------
   * */
    public static DataTable EditAdapter(ref SqlCommand cm)
    {
        SqlDataAdapter SearchAdapt = new SqlDataAdapter(cm);

        //Declare a DataTable
        DataTable dataTable = new DataTable();

        //Populate the DataTable
        SearchAdapt.Fill(dataTable);

        dataTable.Dispose();
        SearchAdapt.Dispose();
    
        return dataTable;
    }

 /* -----------------------------------------------------------------------------
  * returns a datatable based on a stored procedure and parameter that has been given
  * -----------------------------------------------------------------------------
  * */
    public static DataTable execStoredProcedure(ref SqlConnection Conn, string spname, string param)
    { 
        SqlCommand cm = new SqlCommand();
        cm.Connection = Conn;
        cm.CommandType = CommandType.StoredProcedure;
        cm.CommandText = spname;
        cm.Parameters.AddWithValue("@Search", param);
        SqlDataAdapter SearchAdapt = new SqlDataAdapter(cm);
        
        //Declare a DataTable
        DataTable dataTable = new DataTable();

        //Populate the DataTable
        SearchAdapt.Fill(dataTable);

        SearchAdapt.Dispose();
        cm.Dispose();
        Conn.Close();
        return dataTable;
    }

 /* -----------------------------------------------------------------------------
  * executes a data reader.  This particular procedure allows developer to pick
  * the if the sql string is a stored procedure or straight text
  * -----------------------------------------------------------------------------
  */
    public static SqlDataReader execReader(ref SqlConnection Conn, string spname, CommandType cmdType, string param, out SqlCommand com)
    {
        
        SqlCommand cm = new SqlCommand();
        cm.Connection = Conn;
        cm.CommandType = cmdType;
        cm.CommandText = spname;
        cm.Parameters.AddWithValue("@ID", param);

        //Declare the DataReader
        SqlDataReader dr = null;

        //Fill the DataReader
        dr = cm.ExecuteReader();
        com = cm;
        return  (SqlDataReader)dr;
    }
}
