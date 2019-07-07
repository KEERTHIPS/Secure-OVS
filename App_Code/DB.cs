using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DB
/// </summary>
public class DB
{
    SqlConnection con;

    public DB()
    {

        con = new SqlConnection("Data Source=DESKTOP-VFAJD3R;Initial Catalog=Evoting;Integrated Security=True");
    }

    public void openConnection()
    {
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
    }

    public void closeConnection()
    {
        if (con.State != ConnectionState.Closed)
        {
            con.Close();
        }
    }

    public int exequery(string str)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        int x = cmd.ExecuteNonQuery();
        con.Close();
        return x;
    }
    public DataTable selectquery(string str)
    {
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        con.Close();
        return dt;
    }
}
