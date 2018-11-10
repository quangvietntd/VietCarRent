using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class LoginSidebar : System.Web.UI.UserControl
{
    LinQtoSQLDataContext db = new LinQtoSQLDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["nguoidung"] == null)
        {
            mtvLoginSidebar.ActiveViewIndex = 0;
        }
        else
        {
            mtvLoginSidebar.ActiveViewIndex = 1;
            
            string tennguoidung = Session["nguoidung"].ToString();
            string thongtinkh = "select * from Nguoi_Dung where Ten_Nguoi_Dung='" + tennguoidung + "'";
            DataTable dt = XLDL.docbang(thongtinkh);
            int manguoidung=int.Parse(dt.Rows[0][0].ToString());
            hypThongtin.NavigateUrl = "~/Thong_Tin.aspx?";
            lblTenNguoiDungSB.Text = dt.Rows[0]["Ho_Ten"].ToString();
            int IsAdmin = int.Parse(dt.Rows[0]["Admin"].ToString());
            if (IsAdmin == 1)
            {
                Session["isAdmin"] = 1;
                hypAdmin.Text = "Chuyển đến trang Người Quản Trị";
                hypAdmin.NavigateUrl = "~/AdminDefault.aspx";
             
           
            }
            else
            {
                hypAdmin.Text = "Xem lịch sử thuê xe";
                hypAdmin.NavigateUrl = "~/LS_Thue_Xe.aspx";
           
            }
            if (Session["giohang"] != null)
            {
                int soluongsp = 0;
                DataTable dt1 = new DataTable();
                dt1 = (DataTable)Session["giohang"];
                System.Decimal tongthanhtien = 0;
                foreach (DataRow r in dt1.Rows)
                {
                    r["thanhtien"] = Convert.ToInt32(r["soluong"]) * Convert.ToDecimal(r["gia"]);
                    tongthanhtien += Convert.ToDecimal(r["thanhtien"]);
                    soluongsp += Convert.ToInt32(r["soluong"]);
                }
            
            }
            else
            {
             
            }
        }
    }
    protected void imgbtnDangNhap_Default_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            var qrkiemtra = from m in db.Nguoi_Dungs
                            where m.Ten_Nguoi_Dung == txtTenDangNhap_Default.Text && m.Mat_Khau == txtMatKhau_Default.Text
                            select m;
            if (qrkiemtra.Count() >0)
            {
                Session["nguoidung"] = txtTenDangNhap_Default.Text;
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                lblerr_logdef.Text = "Tên đăng nhập hoặc mật khẩu không đúng";
            }
        }
        catch (Exception ex)
        {

        }

    }
    protected void imgbtnDangXuat_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Session["nguoidung"] = null;
            Session["giohang"] = null;
            Session["isAdmin"] = null;
            Response.Redirect("~/Default.aspx");
        }
        catch(Exception ex)
        { 
        }
    }
}