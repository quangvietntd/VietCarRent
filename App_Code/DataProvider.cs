using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DataProvider
/// </summary>
public class DataProvider
{
    public static string ConnectionString
    {
        get { return WebConfigurationManager.ConnectionStrings["QL_Ban_XeConnectionString"].ConnectionString; }
    }

    public static DataTable getData(string sql)
    {
        SqlConnection con = new SqlConnection(ConnectionString);
        con.Open(); 
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        return dt;
    }

    public static void runSQL(string sql)
    {
        SqlConnection con = new SqlConnection(ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    //dùng cho cả 2 (sql và strore procedure)
    public static DataTable getData(string sql, CommandType type, SqlParameter [] pa)
    {
        SqlConnection con = new SqlConnection(ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = type;
        cmd.CommandText = sql;
        if (pa != null)//có tham số
            cmd.Parameters.AddRange(pa);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        return dt;
    }
    public static string get_record(string table, string field, string condfield, string value)
    {
        SqlConnection con = new SqlConnection(ConnectionString);
        con.Open();
        string query = "";
        try
        {
            query = "select " + field + " from " + table + " where " + condfield + " = " + value;
            SqlCommand cmd = new SqlCommand(query);
            cmd.Connection = con;
            SqlDataReader ard = cmd.ExecuteReader();
            if (ard.Read())
            {
                return ard[0].ToString();
            }
        }
        catch
        {
            query = "select " + field + " from " + table + " where " + condfield + " = '" + value +"'";
            SqlCommand cmd = new SqlCommand(query);
            cmd.Connection = con;
            SqlDataReader ard = cmd.ExecuteReader();
            if (ard.Read())
            {
                return ard[0].ToString();
            }
        }
        return "";
    }
}