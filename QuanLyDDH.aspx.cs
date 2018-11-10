using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class QuanLyHangXe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
        if (Session["nguoidung"] == null)
        {
            mtvQLHX.ActiveViewIndex = 1;
            lblErr_admin.Text = "Bạn không được quyền truy cập trang này";
        }
        else
        {
            string tennguoidung = Session["nguoidung"].ToString();
            string thongtinkh = "select * from Nguoi_Dung where Ten_Nguoi_Dung='" + tennguoidung + "'";
            DataTable dt = XLDL.docbang(thongtinkh);
            int manguoidung = int.Parse(dt.Rows[0][0].ToString());
            int IsAdmin = int.Parse(dt.Rows[0]["Admin"].ToString());
            if (IsAdmin == 1)
            {
                mtvQLHX.ActiveViewIndex = 0;
               
                
            }
            else
            {
                mtvQLHX.ActiveViewIndex = 1;
                lblErr_admin.Text = "Bạn không được quyền truy cập trang này";
            }
        }
        }
        
    }





    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DetailsView1.PageIndex = GridView1.SelectedIndex;
        DetailsView1.DataBind();
    }
}