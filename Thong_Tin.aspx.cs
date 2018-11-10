using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Thong_Tin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["nguoidung"] == null)
        {
            mtvThongTin.ActiveViewIndex = 1;
            //lblErr.Text = "Lỗi: Không tìm thấy thông tin người dùng.";
        }
        else//đã đăng nhập
        {
            mtvThongTin.ActiveViewIndex = 0;
            string tennguoidung = Session["nguoidung"].ToString();
            string thongtinkh = "select * from Nguoi_Dung where Ten_Nguoi_Dung='" + tennguoidung + "'";
            DataTable dt = XLDL.docbang(thongtinkh);
            int manguoidung = int.Parse(dt.Rows[0]["Ma_Nguoi_Dung"].ToString());
            lblTenNguoiDung.Text = tennguoidung;
            lblMatKhau.Text = "******";
            lblHoTen.Text = dt.Rows[0]["Ho_Ten"].ToString();
            lblGioiTinh.Text = dt.Rows[0]["Gioi_Tinh"].ToString();
            lblDiaChi.Text = dt.Rows[0]["Dia_Chi"].ToString();
            lblCMND.Text = dt.Rows[0]["CMND"].ToString();
            lblEmail.Text = dt.Rows[0]["Email"].ToString();
            lblSDT.Text = dt.Rows[0]["SDT"].ToString();
            hypCapNhatMK.NavigateUrl = "~/Doi_Mat_Khau.aspx?";
            hypCapNhatTTCN.NavigateUrl = "~/Cap_Nhat_TT.aspx?"; 

        }
    }

}