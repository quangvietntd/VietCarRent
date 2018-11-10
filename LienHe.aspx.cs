using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;
using System.Web.Hosting;

public partial class LienHe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void txtTenDangNhap_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnQuayLai_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnGui_Click(object sender, EventArgs e)
    {       
        try 
        {
            String email = "nhommuabanoto@gmail.com";
            String subject = txtChuDe.Text;
            String body = "Thư được gửi từ" + txtEmail.Text+ " với nội dung: "+txtNoiDung.Text;
            GoogleMail.Send(email, subject, body);
            MultiView1.ActiveViewIndex = 1;
            lblHoTen.Text = txtHoTen.Text;
            lblEmail.Text = txtEmail.Text;
            lblChuDe.Text = txtChuDe.Text;
            lblNoiDung.Text = txtNoiDung.Text;
        }
        catch (Exception ex)
        {
           lblthongbao.Text = "Xảy ra lỗi! " + ex.Message;
        }

    }
    protected void btnHuy_Click(object sender, EventArgs e)
    {
        txtHoTen.Text = "";
        txtEmail.Text = "";
        txtChuDe.Text = "";
        txtNoiDung.Text = "";
    }
}