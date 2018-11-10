using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Hoa_Don_Thue_Xe : System.Web.UI.Page
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
           
            lblHoTen.Text = dt.Rows[0]["Ho_Ten"].ToString();
            lblGioiTinh.Text = dt.Rows[0]["Gioi_Tinh"].ToString();
            lblDiaChi.Text = dt.Rows[0]["Dia_Chi"].ToString();
            lblCMND.Text = dt.Rows[0]["CMND"].ToString();
            lblEmail.Text = dt.Rows[0]["Email"].ToString();
            lblSDT.Text = dt.Rows[0]["SDT"].ToString();

            int maxe = int.Parse(Request.QueryString["Ma_Xe"]);
            DateTime startdate = DateTime.Parse(Request.QueryString["startD"]);
            // Cần chuyển định dạng ngày tháng của biến startdate thành MM/dd/yyyy HH:mm:ss tt
            string ttphieuthue = " select * from Thue_Xe inner join Xe on Thue_Xe.carid = Xe.Ma_Xe  where carid=" + maxe + " and start_date='" + DateTimeClass.ConvertDateTime(startdate, "MM/dd/yyyy HH:mm:ss tt") + "'";
            DataTable dt2 = XLDL.docbang(ttphieuthue);
            try
            {
                // hien thi  ten dia diem nhan xe thay vi hien ma dia diem
                string pick =dt2.Rows[0]["pick_location"].ToString();
                string ttdiadiemnhanxe = " select * from Van_Phong where id=" + pick;
                DataTable dtpick = XLDL.docbang(ttdiadiemnhanxe);
                lblDiaDiemNhanXe.Text = dtpick.Rows[0]["Ten_VP"].ToString();

                // hien thi dia diem tra xe
                string drop = dt2.Rows[0]["drop_location"].ToString();
                string ttdiadiemtraxe = " select * from Van_Phong where id=" + drop;
                DataTable dtdrop = XLDL.docbang(ttdiadiemtraxe);
                lblDiaDiemTraXe.Text = dtdrop.Rows[0]["Ten_VP"].ToString();


                lblMaPhieuThue.Text = dt2.Rows[0]["id"].ToString();
                lblStartDate.Text = DateTimeClass.ConvertDateTime(dt2.Rows[0]["start_date"].ToString(),"dd/MM/yyyy HH:mm:ss");
                lblEndDate.Text = DateTimeClass.ConvertDateTime(dt2.Rows[0]["end_date"].ToString(),"dd/MM/yyyy HH:mm:ss");


                lblMaXe.Text = dt2.Rows[0]["carid"].ToString();
                lblTenXe.Text = dt2.Rows[0]["Ten_xe"].ToString();
                lblDonGia.Text = "$" + dt2.Rows[0]["Gia"].ToString() + "/ngày";

                //Tính toán tổng thời gian thuê
                TimeSpan tgThue = new TimeSpan();
                tgThue = DateTime.Parse(dt2.Rows[0]["end_date"].ToString()) -  DateTime.Parse(dt2.Rows[0]["start_date"].ToString());
                lblGioThue.Text = Math.Round(tgThue.TotalDays,2).ToString()+ " ngày " +"("+tgThue.TotalHours.ToString()+" giờ)";

                // Tính thành tiền: 
                float thanhtien = float.Parse(dt2.Rows[0]["Gia"].ToString()) * float.Parse(Math.Round(tgThue.TotalDays,2).ToString());
                lblThanhTien.Text = "$"+ Math.Round(thanhtien).ToString();
                string str = "update Thue_Xe set thanh_tien='" + Math.Round(thanhtien).ToString() + "' where carid=" + maxe + " and start_date='" + DateTimeClass.ConvertDateTime(startdate, "MM/dd/yyyy HH:mm:ss tt") + "'";
                XLDL.thuchienlenh(str);
            }
            catch
            {
                lblerr.Text = "Lỗi định dạng ngày tháng!";
                lblerr.Visible = true;
            }

        }
    }
}