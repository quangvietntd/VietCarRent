using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class LS_Mua_Hang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["nguoidung"] == null)
            {
                mtvLSMuaHang.ActiveViewIndex = 1;
            }
            else
            {
                mtvLSMuaHang.ActiveViewIndex = 0;
                load_DDH();
            }
        }

    }
    void load_DDH()
    {

        string tennguoidung = Session["nguoidung"].ToString();
        string thongtinkh = "select * from Nguoi_Dung where Ten_Nguoi_Dung='" + tennguoidung + "'";
        DataTable dt = XLDL.docbang(thongtinkh);
        int manguoidung = int.Parse(dt.Rows[0][0].ToString());
        SqlConnection conn = new SqlConnection(DataProvider.ConnectionString);
        SqlCommand cmd = new SqlCommand("select * from Don_Dat_Hang where Ma_KH = @Ma_KH and Tinh_Trang = 1", conn);
        cmd.Parameters.AddWithValue("@Ma_KH", manguoidung);
        SqlDataAdapter adapter;
        adapter = new SqlDataAdapter(cmd);
        // PHANLOAI = adapter.("PHAN_LOAI");
        DataTable dt_DDH_DaGiao = new DataTable();
        adapter.Fill(dt_DDH_DaGiao);
        adapter.Dispose();
        gdvDDH.DataSource = dt_DDH_DaGiao;
        gdvDDH.DataBind();
        //load DDH chưa giao

        SqlCommand cmd1 = new SqlCommand("select * from Don_Dat_Hang where Ma_KH = @Ma_KH1 and Tinh_Trang = 0", conn);
        cmd1.Parameters.AddWithValue("@Ma_KH1", manguoidung);
        SqlDataAdapter adapter2;
        adapter2 = new SqlDataAdapter(cmd1);
        // PHANLOAI = adapter.("PHAN_LOAI");
        DataTable dt_DDH_Chua_Giao = new DataTable();
        adapter2.Fill(dt_DDH_Chua_Giao);
        adapter2.Dispose();
        gdvChuaGiao.DataSource = dt_DDH_Chua_Giao;
        gdvChuaGiao.DataBind();

    }
    protected void imbbtnDangXuat_DangNhap_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Dang_Nhap.aspx");
    }
    protected void gdvChuaGiao_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int  index = int.Parse(e.CommandArgument.ToString());
        if (e.CommandName == "xemchitiet")
        {
            int maddh = int.Parse(gdvChuaGiao.Rows[index].Cells[0].Text);
            string url = "~/Chi_Tiet_DDH.aspx?Ma_DDH=" + maddh;
            Response.Redirect(url);
        }
        else if (e.CommandName == "huy")
        {
            int maddh = int.Parse(gdvChuaGiao.Rows[index].Cells[0].Text);
            string sqlupdate = "update Don_Dat_Hang set Tinh_Trang = 3 Where Ma_DDH = " + maddh;
            XLDL.thuchienlenh(sqlupdate);
            Response.Redirect("~/LS_Mua_Hang.aspx");
        }
    }
    protected void gdvDDH_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());
        if (e.CommandName == "xemchitiet")
        {
            int maddh = int.Parse(gdvDDH.Rows[index].Cells[0].Text);
            string url = "~/Chi_Tiet_DDH.aspx?Ma_DDH=" + maddh;
            Response.Redirect(url);
        }
    }
}