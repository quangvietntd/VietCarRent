using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["nguoidung"] == null)
        {
            mtvRegister.ActiveViewIndex = 0;
        }
        else
            mtvRegister.ActiveViewIndex = 1;
    }
    LinQtoSQLDataContext db = new LinQtoSQLDataContext();
    protected void imgbtnDangKy_Click(object sender, ImageClickEventArgs e)
    {
        string match = @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*";
        Regex reg = new Regex(match);
        string email = txtEmail.Text;
        if (txtTenDangNhap.Text == "")
        {
            lblErrTenDangNhap_DangKy.Visible = true;
        }
        else if (txtMatKhau.Text == "")
        {
            lblErrMatKhauDK.Visible = true;
        }
        else if (txtXacNhanMK.Text != txtMatKhau.Text)
        {
            lblErrXacNhanMK.Visible = true;
        }
        else if (txtHoTen.Text == "")
        {
            lblErrTenKH.Visible = true;
        }
        else if (txtDiaChi.Text == "")
        {
            lblErrDiaChi.Visible = true;
        }
        else if (txtCMND.Text == "")
        {
            lblErrSoCMND.Visible = true;
        }
        else if (txtEmail.Text == "")
        {
            lblErrEmail.Visible = true;
        }
        else if (txtSDT.Text == "")
        {
            lblErrSDT.Visible = true;
        }
        else if (!reg.IsMatch(email))
        {
            lblErrEmail.Visible = true;
        }
        else
        {
            try
            {
                var qrkiemtra = from m in db.Nguoi_Dungs
                                where m.Ten_Nguoi_Dung == txtTenDangNhap.Text
                                select m;
                if (qrkiemtra.Count() == 0)
                {
                    Nguoi_Dung user = new Nguoi_Dung();
                    user.Admin = 0;
                    user.Ten_Nguoi_Dung = txtTenDangNhap.Text;
                    user.Mat_Khau = txtMatKhau.Text;
                    user.Ho_Ten = txtHoTen.Text;
                    user.Gioi_Tinh = ddlGioiTinh.SelectedItem.Value;
                    user.Dia_Chi = txtDiaChi.Text;
                    user.CMND = txtCMND.Text;
                    user.Email = txtEmail.Text;
                    user.SDT = txtSDT.Text;
                    db.Nguoi_Dungs.InsertOnSubmit(user);
                    db.SubmitChanges();
                    //Session["dangky"] = "1";
                    Response.Redirect("~/Thanh_Cong.aspx?capnhattt=&capnhatmk=&dangky=1&thanhtoan=");

                }
                else
                {
                    lbErr.Text = "Tên Đăng Nhập đã có người sử dụng";
                    //Session["dangky"] = "0";
                }
            }
            catch (Exception ex)
            {
                lbErr.Text = ex.Message;
            }
        }
    }
    protected void imbbtnDangXuat_DangKy_Click(object sender, ImageClickEventArgs e)
    {
        Session["nguoidung"] = null;
        Response.Redirect("~/Default.aspx");
    }
}