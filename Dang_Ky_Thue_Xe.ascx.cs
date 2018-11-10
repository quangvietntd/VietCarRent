using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Dang_Ky_Thue_Xe : System.Web.UI.UserControl
{
    LinQtoSQLDataContext db = new LinQtoSQLDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Ma_Xe"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        else
        {
            string car = "select * from Xe where Ma_Xe='" + Request.QueryString["Ma_Xe"] + "'";
            DataTable xe = XLDL.docbang(car);
            //int manguoidung = int.Parse(dt.Rows[0][0].ToString());
            string hinh = xe.Rows[0][4].ToString();
            string tenxe = xe.Rows[0][2].ToString();
            string gia = xe.Rows[0]["Gia"].ToString();
            Image1.ImageUrl = "~/San_Pham/" + hinh;

            Label1.Text = tenxe;
            Label4.Text = "Giá thuê: $" + gia +"/ngày";
        }
    }
    
    protected void btnThue_Click(object sender, EventArgs e)
    {
        if (Session["nguoidung"] == null)
        {
            Response.Redirect("~/Dang_Nhap.aspx");
        }
        else
        {
            if (Request.QueryString["Ma_Xe"] != null)
            {
                Thue_Xe thuexe = new Thue_Xe();

                //xac dinh ma xe
                int maxe = int.Parse(Request.QueryString["Ma_Xe"]);

                //xac dinh ma nguoi dung
                string tennguoidung = Session["nguoidung"].ToString();
                string thongtinkh = "select * from Nguoi_Dung where Ten_Nguoi_Dung='" + tennguoidung + "'";
                DataTable dt = XLDL.docbang(thongtinkh);
                int manguoidung = int.Parse(dt.Rows[0][0].ToString());


                // xử lý ngày tháng
                DateTime kq_start_date = new DateTime();
                DateTime kq_end_date = new DateTime();

                DateTime.TryParse(txtStartDate.Text, System.Globalization.CultureInfo.InvariantCulture, System.Globalization.DateTimeStyles.None, out kq_start_date);
                DateTime.TryParse(txtEndDate.Text, System.Globalization.CultureInfo.InvariantCulture, System.Globalization.DateTimeStyles.None, out kq_end_date);


                // kiểm tra điều kiện xe rảnh thì mới cho đăng ký thuê - Cách 1
                //var qrkiemtra = from m in db.Thue_Xes
                //                where m.carid == maxe && ( (m.start_date < kq_end_date && m.end_date > kq_end_date) 
                //                        || (m.start_date < kq_start_date && m.end_date > kq_start_date)
                //                        || (m.start_date > kq_start_date && m.end_date < kq_end_date))

                //                select m;

                // kiểm tra điều kiện xe rảnh thì mới cho đăng ký thuê - Cách 2
                var qrkiemtra = from m in db.Thue_Xes
                                where (m.carid == maxe && m.end_date > kq_start_date && m.start_date < kq_end_date)
                                select m;
                if (kq_start_date < kq_end_date)
                {
                    if (qrkiemtra.Count() == 0)
                    {
                        // insert vào csdl

                        thuexe.start_date = kq_start_date;
                        thuexe.end_date = kq_end_date;
                        thuexe.pick_location = int.Parse(DDLPickLocation.SelectedValue);
                        thuexe.drop_location = int.Parse(DDLDropLocation.SelectedValue);
                        thuexe.carid = maxe;
                        thuexe.userid = manguoidung;
                        thuexe.text = "đã được thuê";
                        thuexe.tinh_trang = 3;


                        // insert vào csdl
                        db.Thue_Xes.InsertOnSubmit(thuexe);
                        db.SubmitChanges();


                        lblThongBao.Text = "Đã đặt xe thành công!";
                        string str = "~/Hoa_Don_Thue_Xe.aspx?Ma_Xe=" + maxe + "&startD=" + kq_start_date;
                        
                        Response.Redirect(str);
                    }
                    else
                    {
                        lblThongBao.Text = "Xin lỗi! Xe không rảnh trong khoảng thời gian bạn chọn. Xin mời chọn xe khác hoặc chọn khoảng thời gian khác";

                        // gợi ý các xe rảnh trong khoảng thời gian người dùng đã chọn
                        var context = new LinQtoSQLDataContext();
                        IQueryable<Xe> cars = from car in context.Xes select car;


                        cars = from car in cars
                               where car.Thue_Xes.Count == 0
                                   || car.Thue_Xes.Where(o => o.end_date > kq_start_date && o.start_date < kq_end_date).Count() == 0
                               select car;

                        //Không tìm thấy xe khác rảnh
                        if (cars.Count() == 0)
                        {
                            Label2.Text = "Không tìm thấy xe nào khác rảnh trong khoảng thời gian bạn chọn!";
                        }
                        else // Tìm thấy xe khác rảnh
                        {
                            Label3.Text = "<h2>Gợi ý: Có " + cars.Count() + " xe sau đây rảnh trong khoảng thời gian quý khách đã chọn</h2>";

                            Label2.Text = "<table border=1>";
                            Label2.Text += "<tr style='text-align:center;font-weight:bold'><td>Mã xe</td><td>Tên xe</td><td>Hình</td><td>Giá thuê</td></tr>";

                            foreach (Xe car in cars)
                            {

                                Label2.Text += "<tr><td>" + car.Ma_Xe + "</td><td><a href='Dang_Ky_Thue_Xe.aspx?Ma_xe=" + car.Ma_Xe + "'>" + car.Ten_xe + "</a></td><td><img src='San_Pham/" + car.Hinh_Anh + "' width=150px ></td><td>" + car.Gia + " USD" + "</td></tr>";

                            }
                            Label2.Text += "</table>";
                        }

                    }
                }
                else
                {
                    lblThongBao.Text = "Thời gian trả xe phải sau thời gian nhận xe! Mời quý khách chọn lại thời gian";
                }



            }
            else
            {
                Response.Redirect("~/default.aspx");
            }
        }
    }

    
}