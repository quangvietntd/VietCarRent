using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Cap_Nhat_TT : System.Web.UI.Page
{
    int manguoidung;
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["nguoidung"] == null)
            {
                mtvCapNhatTT.ActiveViewIndex = 1;
            }
         else
         {
             mtvCapNhatTT.ActiveViewIndex = 0;
             if (!IsPostBack)
             {
                 string tennguoidung = Session["nguoidung"].ToString();
                 string thongtinkh = "select * from Nguoi_Dung where Ten_Nguoi_Dung='" + tennguoidung + "'";
                 DataTable dt = XLDL.docbang(thongtinkh);
                 manguoidung = int.Parse(dt.Rows[0]["Ma_Nguoi_Dung"].ToString());
                 txtHoTen.Text = dt.Rows[0]["Ho_Ten"].ToString();
                 string gioitinh = dt.Rows[0]["Gioi_Tinh"].ToString();
                 if (gioitinh == "Nam")
                 {
                     ddlGioiTinh.SelectedIndex = 0;
                 }
                 else
                     ddlGioiTinh.SelectedIndex = 1;
                 txtDiaChi.Text = dt.Rows[0]["Dia_Chi"].ToString();
                 txtSoCMND.Text = dt.Rows[0]["CMND"].ToString();
                 txtEmail.Text = dt.Rows[0]["Email"].ToString();
                 txtSoDT.Text = dt.Rows[0]["SDT"].ToString();

             }

        }
    }
    protected void imgbtnCapNhat_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["nguoidung"] == null)
        {
            Response.Redirect("~/Cap_Nhat_TT.aspx");
        }
        else
        {
            string tennguoidung = Session["nguoidung"].ToString();
            string thongtinkh = "select * from Nguoi_Dung where Ten_Nguoi_Dung='" + tennguoidung + "'";
            DataTable dt = XLDL.docbang(thongtinkh);
            manguoidung = int.Parse(dt.Rows[0]["Ma_Nguoi_Dung"].ToString());
            string dienthoai = txtSoDT.Text;
            string gioitinh = ddlGioiTinh.SelectedItem.Value.ToString();
            string cmnd = txtSoCMND.Text;
            try
            {
                string str = "update Nguoi_Dung set Ho_Ten='" + txtHoTen.Text + "' , Dia_Chi ='" + txtDiaChi.Text + "' , SDT='" + dienthoai + "' , Email='" + txtEmail.Text + "', Gioi_Tinh='" + gioitinh + "', CMND='" + txtSoCMND.Text + "' where Ma_Nguoi_Dung=" + manguoidung;
                XLDL.thuchienlenh(str);
                Response.Redirect("Thanh_Cong.aspx?capnhattt=1&capnhatmk=&dangky=&thanhtoan=");
            }
            catch (Exception ex)
            {
                lblErrCapNhat.Visible = true;
                lblErrCapNhat.Text = "Lỗi: Không cập nhật được thông tin";
            }
        }
    }
}