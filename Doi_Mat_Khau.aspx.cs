using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Doi_Mat_Khau : System.Web.UI.Page
{
    int manguoidung;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["nguoidung"] == null)
        {
            mtvDoiMatKhau.ActiveViewIndex = 1;
        }
        else
        {
            mtvDoiMatKhau.ActiveViewIndex = 0;
        }
    }
    protected void imgbtnCapNhat_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["nguoidung"] == null)
        {
            Response.Redirect("~/Doi_Mat_Khau.aspx");
        }
        else
        {
            string tennguoidung = Session["nguoidung"].ToString();
            string thongtinkh = "select * from Nguoi_Dung where Ten_Nguoi_Dung='" + tennguoidung + "'";
            DataTable dt = XLDL.docbang(thongtinkh);
            manguoidung = int.Parse(dt.Rows[0]["Ma_Nguoi_Dung"].ToString());
            string matkhauhientai = dt.Rows[0]["Mat_Khau"].ToString();
            string matkhaumoi = txtMatKhauMoi.Text;
            string xacnhanmk = txtXacNhanMK.Text;
            if (matkhaumoi == "")
            {
                lblErrCapNhat.Visible = true;
                lblErrCapNhat.Text = "Lỗi: mật khẩu mới không được để trống";
            }
            else
            {
                if (txtMatKhauHienTai.Text == matkhauhientai && matkhaumoi == xacnhanmk)
                {
                    try
                    {
                        string query = "update Nguoi_Dung set Mat_Khau ='" + matkhaumoi + "' where Ma_Nguoi_Dung =" + manguoidung;
                        XLDL.thuchienlenh(query);
                        Response.Redirect("Thanh_Cong.aspx?capnhatmk=1&capnhattt=&dangky=&thanhtoan=");
                    }
                    catch (Exception ex)
                    {
                        lblErrCapNhat.Visible = true;
                        lblErrCapNhat.Text = "Lỗi: Không cập nhật được mật khẩu";
                    }
                }
                else
                {
                    lblErrCapNhat.Visible = true;
                    lblErrCapNhat.Text = "Lỗi: Mật khẩu hiện tại không đúng hoặc mật khẩu xác nhận và mật khẩu mới không giống nhau";
                }
            }
        }
    }
}