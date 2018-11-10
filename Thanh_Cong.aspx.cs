using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Thanh_Cong : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["capnhattt"].ToString() == "1")
        {
            mtvThanhCong.ActiveViewIndex = 3;
            lblThongBao.Text = "Cập Nhật Thông Tin";
        }
        else if (Request.QueryString["capnhatmk"].ToString() == "1")
        {
            mtvThanhCong.ActiveViewIndex = 2;
            lblThongBao.Text = "Đổi Mật Khẩu";
        }
        else if (Request.QueryString["dangky"].ToString() == "1")
        {
            mtvThanhCong.ActiveViewIndex = 0;
            lblThongBao.Text = "Đăng Ký";
        }
        else if (Request.QueryString["thanhtoan"].ToString() == "1")
        {
            mtvThanhCong.ActiveViewIndex = 1;
            lblThongBao.Text = "Thanh Toán";
        }
        else 
        {
 
        }
    }
}