using System;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for XLDL
/// </summary>
public class XLDL
{
	public XLDL()
	{
		
	}
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    //string tenxe = "";
    //double gia;
    static string strcnn = ConfigurationManager.ConnectionStrings["QL_Ban_XeConnectionString"].ConnectionString.ToString();
    public static DataTable docbang(string lenhsql)
    {
        using(SqlConnection cnn=new SqlConnection(strcnn))
        {
            SqlDataAdapter bodocghi = new SqlDataAdapter(lenhsql, cnn);
            DataTable dt = new DataTable();
            bodocghi.Fill(dt);
            return dt;
        }
    }
    public static void thuchienlenh(string lenhsql)
    {
        using (SqlConnection cnn = new SqlConnection(strcnn))
        {
            cnn.Open();
            SqlCommand lenh = new SqlCommand(lenhsql, cnn);
            lenh.ExecuteNonQuery();
            cnn.Close();
        }
    }
    public static bool checksoluong(object xe)
    {
        int soluong = int.Parse(xe.ToString());
        if (soluong == 0)
            return false;
        return true;
    }
    public static string giacuoi(object gia, object giakhuyenmai)
    {
        string giacuoi;
        if (giakhuyenmai.ToString() == "")
        {
            giacuoi = gia.ToString();
  
        }
        else
        {
            giacuoi = giakhuyenmai.ToString();
 
        }
        return string.Format("{0:0,0 VNĐ}",int.Parse(giacuoi.ToString()));
    }
    public static string checkkhuyenmai(object khuyenmai)
    {
        string khuyenmaistring;
        if (khuyenmai.ToString() == "")
        {
            khuyenmaistring = 0 + " %";
            return khuyenmaistring;
        }
        else
        {
            khuyenmaistring = khuyenmai.ToString() + " %";
            return khuyenmaistring;
        }
    }
}