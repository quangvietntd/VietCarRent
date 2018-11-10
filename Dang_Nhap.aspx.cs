using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dang_Nhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["nguoidung"] == null)
        {
            mtvDangNhap.ActiveViewIndex = 0;
        }
        else
        {
            mtvDangNhap.ActiveViewIndex = 1;
        }
    }
    LinQtoSQLDataContext db = new LinQtoSQLDataContext();
    protected void imgbtn_DangNhap_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            var qrkiemtra = from m in db.Nguoi_Dungs
                            where m.Ten_Nguoi_Dung == txtTenDangNhap.Text && m.Mat_Khau == txtMatKhau.Text
                            select m;
            if (qrkiemtra.Count() > 0)
            {
                Session["nguoidung"] = txtTenDangNhap.Text;
                Response.Redirect("~/Dang_Nhap.aspx");
            }
            else
            {
                lblErr.Visible = true;
            }
        }
        catch (Exception ex)
        {

        }
    }
    protected void imbbtnDangXuat_DangNhap_Click(object sender, ImageClickEventArgs e)
    {
        Session["nguoidung"] = null;
        Response.Redirect("~/Dang_Nhap.aspx");
    }
}