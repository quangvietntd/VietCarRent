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
        SqlCommand cmd = new SqlCommand("select * from Thue_Xe where userid = @Ma_KH and end_date <='" + DateTimeClass.ConvertDateTime(DateTime.Now, "MM/dd/yyyy HH:mm:ss tt") + "'", conn);
        cmd.Parameters.AddWithValue("@Ma_KH", manguoidung);
        SqlDataAdapter adapter;
        adapter = new SqlDataAdapter(cmd);
        // PHANLOAI = adapter.("PHAN_LOAI");
        DataTable dt_TX_hethan = new DataTable();
        adapter.Fill(dt_TX_hethan);
        adapter.Dispose();
        gdvTX.DataSource = dt_TX_hethan;
        gdvTX.DataBind();
        //load DDH chưa giao

        SqlCommand cmd1 = new SqlCommand("select * from Thue_Xe where userid = @Ma_KH1 and end_date >'" + DateTimeClass.ConvertDateTime(DateTime.Now, "MM/dd/yyyy HH:mm:ss tt")+"'", conn);
        cmd1.Parameters.AddWithValue("@Ma_KH1", manguoidung);
        SqlDataAdapter adapter2;
        adapter2 = new SqlDataAdapter(cmd1);
        // PHANLOAI = adapter.("PHAN_LOAI");
        DataTable dt_TX_hientai= new DataTable();
        adapter2.Fill(dt_TX_hientai);
        adapter2.Dispose();
        gdvTX2.DataSource = dt_TX_hientai;
        gdvTX2.DataBind();

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
            int maphieuthue = int.Parse(gdvTX2.Rows[index].Cells[0].Text);
            string url = "~/Chi_Tiet_Thue_Xe.aspx?id=" + maphieuthue;
            Response.Redirect(url);
        }
        else if (e.CommandName == "huy")
        {
            int maddh = int.Parse(gdvTX2.Rows[index].Cells[0].Text);
            string sqlupdate = "update Don_Dat_Hang set Tinh_Trang = 3 Where Ma_DDH = " + maddh;
            XLDL.thuchienlenh(sqlupdate);
            Response.Redirect("~/LS_Thue_Xe.aspx");
        }
    }
    protected void gdvDDH_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());
        if (e.CommandName == "xemchitiet")
        {
            int maddh = int.Parse(gdvTX.Rows[index].Cells[0].Text);
            string url = "~/Chi_Tiet_DDH.aspx?Ma_DDH=" + maddh;
            Response.Redirect(url);
        }
    }
 
    protected void gdvTX_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gdvTX.PageIndex = e.NewPageIndex;
        gdvTX.DataBind();
    }
    protected void gdvTX2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gdvTX2.PageIndex = e.NewPageIndex;
        gdvTX2.DataBind();
    }
}