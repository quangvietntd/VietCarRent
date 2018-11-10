using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Khuyen_Mai : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime now = DateTime.Now;
        SqlConnection conn = new SqlConnection(DataProvider.ConnectionString);
        SqlCommand cmd = new SqlCommand("select top 1 Xe.Ma_Xe,Xe.Ten_xe,Xe.Gia,Xe.Hinh_Anh,Xe.Gia,Khuyen_Mai.KhuyenMai, (Xe.Gia - Xe.Gia/100 * Khuyen_Mai.KhuyenMai) as Gia_Khuyen_Mai from Xe,Khuyen_Mai where Xe.Ma_Xe = Khuyen_Mai.Ma_Xe and Khuyen_Mai.Ngay_Bat_Dau <= GETDATE() and Khuyen_Mai.Ngay_Ket_Thuc >= GETDATE() order by Khuyen_Mai.Ma_KM desc", conn);
        //cmd.Parameters.AddWithValue("@HienTai", now);
        SqlDataAdapter adapter;
        adapter = new SqlDataAdapter(cmd);
        // PHANLOAI = adapter.("PHAN_LOAI");
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        adapter.Dispose();
        System.Data.DataView dv = new System.Data.DataView(dt);
        dtlKhuyenMai.DataSource = dv;
        dtlKhuyenMai.DataBind();
    }
}