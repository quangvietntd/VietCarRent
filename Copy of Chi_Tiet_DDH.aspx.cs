using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Chi_Tiet_DDH : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["nguoidung"] == null)
        {
            mtvChiTietDDH.ActiveViewIndex = 1;
        }
        else
        {
            if (Request.QueryString["Ma_DDH"] == null)
            {
                mtvChiTietDDH.ActiveViewIndex = 2;
            }
            else
            {
                int maddh = int.Parse(Request.QueryString["Ma_DDH"]);
                string sqlctddh = "select * from Chi_Tiet_DDH CT,Xe where CT.Ma_Xe = Xe.Ma_Xe and Ma_DDH = " + maddh;
                lblMaDDH.Text = maddh.ToString();
                DataTable dt = XLDL.docbang(sqlctddh);
                if (dt.Rows.Count > 0)
                {
                    mtvChiTietDDH.ActiveViewIndex = 0;
                    gdvChiTietDDH.DataSource = dt;
                    gdvChiTietDDH.DataBind();
                }
                else
                {
                    mtvChiTietDDH.ActiveViewIndex = 2;
                }
            }
        }
    }
    protected void imbbtnDangXuat_DangNhap_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Dang_Nhap.aspx");
    }
}