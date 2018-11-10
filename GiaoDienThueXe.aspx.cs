using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using DHTMLX.Scheduler;
using DHTMLX.Scheduler.Controls;
using DHTMLX.Scheduler.Data;
using DHTMLX.Common;
using DHTMLX.Scheduler.Authentication;
using System.Collections;
using System.Data;
//using Rental.Models;
public class FormState
{
    public string DateFrom { get; set; }
    public string DateTo { get; set; }
    public string TimeFrom { get; set; }
    public string TimeTo { get; set; }
    public string Type { get; set; }
    public string Price { get; set; }
    public bool DateFilter { get; set; }
}
public partial class GiaoDienThueXe : System.Web.UI.Page
{
    public DHXScheduler scheduler { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
      
        this.scheduler = new DHXScheduler();

       
        scheduler.Extensions.Add(SchedulerExtensions.Extension.Collision);
        scheduler.Extensions.Add(SchedulerExtensions.Extension.Minical);
       

        //call custom template initialization
      
        

       scheduler.InitialValues.Add("text", "New Event");
       scheduler.InitialValues.Add("tinh_trang", "3");
 


        // bước nhảy thời gian 60 phút
        scheduler.Config.time_step = 60;
        //set row height
      scheduler.XY.bar_height = 76;
 

        var context = new LinQtoSQLDataContext();

        IQueryable<Van_Phong> locations = from location in context.Van_Phongs select location;
        var printableList2 = locations.Select(c => new { key = c.id, label = c.Ten_VP });
        IQueryable<Nguoi_Dung> users = from user in context.Nguoi_Dungs select user;
        var printableList4 = users.Select(c => new {key = c.Ma_Nguoi_Dung, label = c.Ma_Nguoi_Dung + " - " + c.Ten_Nguoi_Dung + " - "+ c.Ho_Ten});
        //create custom details form
        IQueryable<Xe> cars = from car in context.Xes select car;
        
        var printableList = cars.Select(c => new { key = c.Ma_Xe, 
                                                label = "<a href='Dang_Ky_Thue_Xe.aspx?Ma_Xe="+ c.Ma_Xe + "' ><div style='width:100%'>" + "<img src='San_Pham/" + c.Hinh_Anh +"' width='70px' height='50px'></img><br/><div style='color:blue'>" + c.Ten_xe + "</div><div style='color:red'>$"+c.Gia+"</div></div></a>" ,
                                                price = c.Gia, 
                                                link = c.Hinh_Anh });
        var printableList3 = cars.Select(c => new { key = c.Ma_Xe, label = c.Ten_xe, price = c.Gia, link = c.Hinh_Anh });
        _ConfigureLightbox(scheduler, printableList3, printableList2, printableList4);
        //load cars to the timeline view
        _ConfigureViews(scheduler, printableList);
       
       

        //data loading/saving settings

        scheduler.DataAction = this.ResolveUrl("~/Data.ashx");// the handler which defines loading data to Scheduler
        scheduler.SaveAction = this.ResolveUrl("~/Save_KHThueXe.ashx");// the handler which defines create/update/delete logic
        scheduler.PreventCache();
        scheduler.LoadData = true;
        scheduler.EnableDataprocessor = true;


        if (Session["nguoidung"] == null)
        {
            //chỉ cho khách chưa đăng nhập xem
            scheduler.Config.isReadonly = true;
            lblAlert2.Text = "Quý khách chưa đăng nhập nên chỉ được quyền xem và tìm kiếm. Xin quý khách vui lòng <a href='Dang_Nhap.aspx'>đăng nhập</a> để có thể đăng ký thuê xe.";
        }
        else
        {
            scheduler.Config.isReadonly = false;
            lblAlert2.Text = "Lưu ý: Sau khi quý khách đăng ký thuê xe thành công thì mọi thao tác chỉnh sửa hoặc xóa sẽ không được lưu lại trên hệ thống."; 

            //Xác định người dùng
            string tennguoidung = Session["nguoidung"].ToString();
            string thongtinkh = "select * from Nguoi_Dung where Ten_Nguoi_Dung='" + tennguoidung + "'";
            DataTable dt = XLDL.docbang(thongtinkh);
            int manguoidung = int.Parse(dt.Rows[0][0].ToString());
            scheduler.InitialValues.Add("userid", manguoidung);
        }

      
        
        //chỉ cho người dùng xem và tạo mới. Không cho chỉnh sửa???
       // scheduler.SetEditMode(EditModes.OwnEventsOnly);

        //Định dạng thời gian
      //  scheduler.Templates.day_scale_date = "{date:date(%d.%m.%Y)}";
          
        
            
    }

 

    protected void _ConfigureViews(DHXScheduler scheduler, IEnumerable cars)
        {
            var units = new TimelineView("Thue_Xes", "carid");
            units.X_Step = 2;
            units.X_Length = 12;
            units.X_Size = 12;
            //width of the first column
            units.Dx = 180;
            //row height
            units.Dy = 90;
            //order bar height
            units.EventDy = units.Dy - 10;
            units.AddOptions(cars);
            units.RenderMode = TimelineView.RenderModes.Bar;
            scheduler.Views.Clear();
            scheduler.Views.Add(units);
            scheduler.InitialView = scheduler.Views[0].Name;
         
        }
    protected void _ConfigureLightbox(DHXScheduler scheduler, IEnumerable cars, IEnumerable locations, IEnumerable users)
    {
        
       
        
       scheduler.Lightbox.Add(new LightboxText("text", "Ghi chú") { Height = 42, Focus = true });
     
        var select = new LightboxSelect("carid", "Tên Xe");
        scheduler.Lightbox.Add(select);
      var select2 = new LightboxSelect("pick_location", "Địa điểm nhận xe");
        scheduler.Lightbox.Add(select2);
      var select3 = new LightboxSelect("drop_location", "Địa điểm trả xe");
        scheduler.Lightbox.Add(select3);
      //  var select4 = new LightboxSelect("userid", "Khách hàng thuê");
      //  scheduler.Lightbox.Add(select4);
        

        select.AddOptions(cars);
        select2.AddOptions(locations);
        select3.AddOptions(locations);
       // select4.AddOptions(users);

        scheduler.Lightbox.Add(new LightboxTime("time", "Khoảng thời gian thuê"));
    }



    protected IQueryable<Xe> _SelectCars( LinQtoSQLDataContext context)
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

        if (ckbDateFilter.Checked && _from != default(DateTime) && _to != default(DateTime))
        {
            //select cars, which are available in specified time range
            cars = from car in cars
                   where car.Thue_Xes.Count == 0
                       || car.Thue_Xes.Where(o => o.end_date > _from && o.start_date < _to).Count() == 0
                   select car;
        }

        return cars;
    }

    protected void btnTimKiem_Click(object sender, EventArgs e)
    {

        //if 'Pick Up Date' selected - make it initial date for calendar
        var _from = default(DateTime);

        // try to parse time range
        if (!string.IsNullOrEmpty(DateFrom.Text))
        {
            DateTime.TryParse(DateFrom.Text, System.Globalization.CultureInfo.InvariantCulture, System.Globalization.DateTimeStyles.None, out _from);
        }
        if (_from != default(DateTime))
        {
            scheduler.InitialDate = _from;
        }

        var context = new LinQtoSQLDataContext();

       // selecting cars according to form values
        IQueryable<Xe> cars = _SelectCars(context);
        //if no cars found - show message and load default set
        if (cars.Count() == 0)
        {
            lblAlert.Text = "Không xe nào được tìm thấy như yêu cầu của quý khách!";
       
        }
        else
        {
            lblAlert.Text = "";
        }

        var printableList = cars.Select(c => new
        {
            key = c.Ma_Xe,
            label = "<a href='Dang_Ky_Thue_Xe.aspx?Ma_Xe=" + c.Ma_Xe + "' ><div style='width:100%'>" + "<img src='San_Pham/" + c.Hinh_Anh + "' width='70px' height='50px'></img><br/><div style='color:blue'>" + c.Ten_xe + "</div><div style='color:red'>$" + c.Gia + "</div></div></a>",
            price = c.Gia,
            link = c.Hinh_Anh
        });
  
        _ConfigureViews(scheduler, printableList);

    }
}