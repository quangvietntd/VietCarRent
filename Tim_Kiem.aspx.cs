using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Tim_Kiem : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int low = int.Parse(Request.QueryString["giatu"]);
            int top = int.Parse(Request.QueryString["giaden"]);
            int loaixe = int.Parse(Request.QueryString["loaixe"]);
            var context = new LinQtoSQLDataContext();
            IQueryable<Xe> cars = from car in context.Xes select car;
            cars = cars.Where(c => c.Gia <= top && c.Gia >= low);
            
            //filter by car type
            if (loaixe!=-1)
            {
               // int hangxe = context.Loai_Xes.First().Ma_Loai_Xe;
                
                cars = cars.Where(c => c.Loai_Xe == loaixe);
            }


            if (cars.Count() == 0)
            {
                lblKetQuaTimKiem.Text = "Không xe nào được tìm thấy như yêu cầu của quý khách!";
            }
            else // Tìm thấy xe khác rảnh
            {
                if (loaixe == -1)
                {
                    lblThongBao.Text = "Đã tìm thấy tất cả " + cars.Count() + " xe có giá từ " + low + "$ đến " + top + "$";
                }
                else
                {
                  
                    lblThongBao.Text = "Đã tìm thấy tất cả " + cars.Count() + " xe có giá từ " + low + "$ đến " + top + "$ thuộc loại xe như yêu cầu";
                }
                lblKetQuaTimKiem.Text = "<table border=1 width='90%' style='text-align:center;'>";
                lblKetQuaTimKiem.Text += "<tr style='text-align:center;font-weight:bold'><td>Mã xe</td><td>Tên xe</td><td>Hình</td><td>Giá thuê</td><td>&nbsp;</td></tr>";

                foreach (Xe car in cars)
                {

                    lblKetQuaTimKiem.Text += "<tr><td>" + car.Ma_Xe + "</td><td style='color:blue;font-size:18px;font-weight:bold'><a href='ChiTiet_Xe.aspx?ID=" + car.Ma_Xe + "'>" + car.Ten_xe + "</a></td><td><img src='San_Pham/" + car.Hinh_Anh + "' width=150px ></td><td style='color:red;font-size:18px;font-weight:bold;'>$" + car.Gia + "</td><td><a href='Dang_Ky_Thue_Xe.aspx?Ma_xe=" + car.Ma_Xe + "' ><img src='images/thuexe.png'></a></td></tr>";

                }
                lblKetQuaTimKiem.Text += "</table>";
            }
        }
        catch
        {
        }

    }
    protected IQueryable<Xe> _SelectCars(LinQtoSQLDataContext context)
    {
        IQueryable<Xe> cars = from car in context.Xes select car;
        //if (state == null)
        //    return cars;

        string _hangxe = DDLHangXe.SelectedValue;
        string _gia = DDLGiaThue.SelectedValue;
        string _tenxe = DDLTenXe.SelectedValue;

        var _from = default(DateTime);
        var _to = default(DateTime);
        // try to parse time range
        if (!string.IsNullOrEmpty(DateFrom.Text))
        {

            DateTime.TryParse(DateFrom.Text, System.Globalization.CultureInfo.InvariantCulture, System.Globalization.DateTimeStyles.None, out _from);
            DateTime.TryParse(DateTo.Text, System.Globalization.CultureInfo.InvariantCulture, System.Globalization.DateTimeStyles.None, out _to);

            if (_from.CompareTo(default(DateTime)) != 0 && _to.CompareTo(default(DateTime)) == 0)//only start date set
            {
                _to = _from.AddHours(1);
            }
        }

        //filter by car type
        if (!string.IsNullOrEmpty(_hangxe))
        {
            int hangxe = context.Loai_Xes.First().Ma_Loai_Xe;
            if (!string.IsNullOrEmpty(_hangxe))
            {
                int.TryParse(_hangxe, out hangxe);
            }
            cars = cars.Where(c => c.Loai_Xe == hangxe);
        }

        //filter by car name
        if (!string.IsNullOrEmpty(_tenxe))
        {
            int tenxe = context.Xes.First().Ma_Xe;
            if (!string.IsNullOrEmpty(_tenxe))
            {
                int.TryParse(_tenxe, out tenxe);
            }
            cars = cars.Where(c => c.Ma_Xe == tenxe);
        }

        //filter by price
        if (!string.IsNullOrEmpty(_gia))
        {
            var gia = _gia.Split('-');
            int low = int.Parse(gia[0]);
            int top = int.Parse(gia[1]);
            cars = cars.Where(c => c.Gia <= top && c.Gia >= low);
        }

        if (_from != default(DateTime) && _to != default(DateTime))
        {
            //select cars, which are available in specified time range
            cars = from car in cars
                   where car.Thue_Xes.Count == 0
                       || car.Thue_Xes.Where(o => o.end_date > _from && o.start_date < _to).Count() == 0
                   select car;
        }

        return cars;
    }
    protected void imgbtnTimKiem_Click(object sender, ImageClickEventArgs e)
    {
        lblKetQuaTimKiem.Text = "";
        lblThongBao.Text = "";
        // gợi ý các xe rảnh trong khoảng thời gian người dùng đã chọn
        var context = new LinQtoSQLDataContext();
        IQueryable<Xe> cars = _SelectCars(context);


       

        //Không tìm thấy xe khác rảnh
        if (cars.Count() == 0)
        {
            lblKetQuaTimKiem.Text = "Không xe nào được tìm thấy như yêu cầu của quý khách!";
        }
        else // Tìm thấy xe khác rảnh
        {

            lblThongBao.Text = "Đã tìm thấy tất cả " + cars.Count() + " xe như yêu cầu!";

            lblKetQuaTimKiem.Text = "<table border=1 width='90%' style='text-align:center;'>";
            lblKetQuaTimKiem.Text += "<tr style='text-align:center;font-weight:bold'><td>Mã xe</td><td>Tên xe</td><td>Hình</td><td>Giá thuê</td><td>&nbsp;</td></tr>";

            foreach (Xe car in cars)
            {

                lblKetQuaTimKiem.Text += "<tr><td>" + car.Ma_Xe + "</td><td style='color:blue;font-size:18px;font-weight:bold'><a href='ChiTiet_Xe.aspx?ID=" + car.Ma_Xe + "'>" + car.Ten_xe + "</a></td><td><img src='San_Pham/" + car.Hinh_Anh + "' width=150px ></td><td style='color:red;font-size:18px;font-weight:bold;'>$" + car.Gia + "</td><td><a href='Dang_Ky_Thue_Xe.aspx?Ma_xe=" + car.Ma_Xe + "' ><img src='images/thuexe.png'></a></td></tr>";

            }
            lblKetQuaTimKiem.Text += "</table>";
        }

    }
}