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
using System.Collections;
//using Rental.Models;

public partial class Chon_Xe_Thue : System.Web.UI.UserControl
{
    public class FormState
    {
        public string DateFrom { get; set; }
        public string DateTo { get; set; }
        public string TimeFrom { get; set; }
        public string TimeTo { get; set; }
        public string Type { get; set; }
        public string Price { get; set; }        
        public string Name { get; set; }
    }

    public FormState state = new FormState();
    
    public DHXScheduler scheduler { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (int.Parse(rdbTim.SelectedValue) == 0)
        {
            ddlLoai.Enabled = false;
            ddlTenXe.Enabled = false;
            btnSearch.Enabled = false;
            calPick.Enabled = false;
            calDrop.Enabled = false;
            ddlTimeFrom.Enabled = false;
            ddlTimeTo.Enabled = false;
            state.Name = null;
            state.Type = null;
            state.DateFrom = null;
            state.DateTo = null;
            state.TimeFrom = null;
            state.TimeTo = null;
        }
        else if (int.Parse(rdbTim.SelectedValue) == 1)
        {
            btnSearch.Enabled = true;
            ddlLoai.Enabled = false;
            ddlTenXe.Enabled = true;
            calPick.Enabled = true;
            calDrop.Enabled = true;
            ddlTimeFrom.Enabled = true;
            ddlTimeTo.Enabled = true;
            state.Name = ddlTenXe.SelectedValue;
            state.DateFrom = calPick.SelectedDate.ToShortDateString();
            state.DateTo = calDrop.SelectedDate.ToShortDateString();
            state.TimeFrom = ddlTimeFrom.SelectedValue.ToString();
            state.TimeTo = ddlTimeTo.SelectedValue.ToString();
        }
        else if (int.Parse(rdbTim.SelectedValue) == 2)
        {
            btnSearch.Enabled = true;
            ddlTenXe.Enabled = false;
            ddlLoai.Enabled = true;
            calPick.Enabled = true;
            calDrop.Enabled = true;
            ddlTimeFrom.Enabled = true;
            ddlTimeTo.Enabled = true;
            state.Type = ddlLoai.SelectedValue;
            state.DateFrom = calPick.SelectedDate.ToShortDateString();
            state.DateTo = calDrop.SelectedDate.ToShortDateString();
            state.TimeFrom = ddlTimeFrom.SelectedValue.ToString();
            state.TimeTo = ddlTimeTo.SelectedValue.ToString();
        }
        else
        {
            btnSearch.Enabled = true;
            ddlLoai.Enabled = false;
            ddlTenXe.Enabled = false;
            calPick.Enabled = true;
            calDrop.Enabled = true;
            ddlTimeFrom.Enabled = true;
            ddlTimeTo.Enabled = true;
            state.Name = null;
            state.Type = null;
            state.DateFrom = calPick.SelectedDate.ToShortDateString();
            state.DateTo = calDrop.SelectedDate.ToShortDateString();            
            //state.DateFrom = txtDateFrom.Text;
            //state.DateTo = txtDateTo.Text;
            state.TimeFrom = ddlTimeFrom.SelectedValue.ToString();
            state.TimeTo = ddlTimeTo.SelectedValue.ToString();
        }
        this.scheduler = new DHXScheduler();


        scheduler.Extensions.Add(SchedulerExtensions.Extension.Collision);
        scheduler.Extensions.Add(SchedulerExtensions.Extension.Minical);

        //call custom template initialization
        scheduler.InitialValues.Add("text", "");

        // bước nhảy thời gian 60 phút
        scheduler.Config.time_step = 60;
        //set row height
        scheduler.XY.bar_height = 76;
        scheduler.Config.wide_form = true;
        

        var context = new LinQtoSQLDataContext();

        //selecting cars according to form values
        //var cars = _SelectCars(context, state);
        ////if no cars found - show message and load default set
        //if (cars.Count() == 0)
        //{
        //    ViewData["Message"] = "Nothing was found on your request";
        //    cars = _SelectCars(context);//select default set of events
        //}
        
        
        //state.DateFrom = txtDateFrom.Text;
        //state.DateTo = txtDateTo.Text;
                
        IEnumerable<Van_Phong> locations = from location in context.Van_Phongs select location;
        var printableList2 = locations.Select(c => new { key = c.id, label = c.Ten_VP });
        //create custom details form
        //IEnumerable<Xe> cars = from car in context.Xes select car;
        var cars = _SelectCars(context, state);
        if (cars.Count() == 0)
        {
            lblThongBao.Text = "Không tìm thấy kết quả mà bạn yêu cầu! Hiển thị toàn bộ danh sách xe!";
            cars = _SelectCars(context);//select default set of events
        }
        else if (cars.Count() > 0)
        {
            lblThongBao.Text = "";            
        }

        var printableList = cars.Select(c => new
        {
            key = c.Ma_Xe,
            label = "<a href='Dang_Ky_Thue_Xe.aspx?Ma_Xe=" + c.Ma_Xe + "' ><div style='width:100%'>" + "<img src='San_Pham/" + c.Hinh_Anh + "' width='70px' height='50px'></img><br/><div style='color:blue'>" + c.Ten_xe + "</div><div style='color:red'>$" + c.Gia + "</div></div></a>",
            price = c.Gia,
            link = c.Hinh_Anh
        });
        var printableList3 = cars.Select(c => new { key = c.Ma_Xe, label = c.Ten_xe, price = c.Gia, link = c.Hinh_Anh });
        _ConfigureLightbox(scheduler, printableList3, printableList2);
        //load cars to the timeline view
        _ConfigureViews(scheduler, printableList);

        //assign ViewData values
        //_UpdateViewData(scheduler, context, state);

        //data loading/saving settings

        scheduler.DataAction = this.ResolveUrl("~/Data.ashx");
        scheduler.PreventCache();
        scheduler.LoadData = true;
        scheduler.EnableDataprocessor = true;

        //chỉ cho người dùng xem
        scheduler.Config.isReadonly = true;

        //Định dạng thời gian
        scheduler.Templates.day_scale_date = "{date:date(%d.%m.%Y)}";
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
    protected void _ConfigureLightbox(DHXScheduler scheduler, IEnumerable cars, IEnumerable locations)
    {
        //  scheduler.Lightbox.Add(new LightboxText("text", "Contact details") { Height = 42, Focus = true });

        var select = new LightboxSelect("carid", "Tên Xe");
        scheduler.Lightbox.Add(select);
        var select2 = new LightboxSelect("pick_location", "Địa điểm nhận xe");
        scheduler.Lightbox.Add(select2);
        var select3 = new LightboxSelect("drop_location", "Địa điểm trả xe");
        scheduler.Lightbox.Add(select3);
        // scheduler.Lightbox.Add(new LightboxText("pick_location", "Địa điểm nhận xe") { Height = 21 });
        // scheduler.Lightbox.Add(new LightboxText("drop_location", "Địa điểm trả xe") { Height = 21 });

        select.AddOptions(cars);
        select2.AddOptions(locations);
        select3.AddOptions(locations);
        scheduler.Lightbox.Add(new LightboxTime("time", "Thời gian thuê"));
    }

    private DateTime _ParseDate(string date, string time)
    {
        var datestr = string.Format("{0} {1}", date, time);
        DateTime result = new DateTime();
        DateTime.TryParse(datestr, System.Globalization.CultureInfo.InvariantCulture, System.Globalization.DateTimeStyles.None, out result);
        return result;
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        
    }

    protected IQueryable<Xe> _SelectCars(LinQtoSQLDataContext context, FormState state)
    {
        IQueryable<Xe> cars = from car in context.Xes select car;
        if (state == null)
            return cars;
        string name = state.Name;
        string _type = state.Type;
        //string _price = state.Price;

        var _from = default(DateTime);
        var _to = default(DateTime);
        //try to parse time range
        if (!string.IsNullOrEmpty(name))
        {
            int maxe = int.Parse(name);
            if (!string.IsNullOrEmpty(name))
            {
                int.TryParse(name, out maxe);
            }
            cars = cars.Where(c => c.Ma_Xe == maxe);
        }
        if (!string.IsNullOrEmpty(state.DateFrom))
        {
            _from = _ParseDate(state.DateFrom, state.TimeFrom);
            _to = _ParseDate(state.DateTo, state.TimeTo);
            if (_from.CompareTo(default(DateTime)) != 0 && _to.CompareTo(default(DateTime)) == 0)//only start date set
            {
                _to = _from.AddHours(1);
            }
        }
        

        //filter by car type
        if (!string.IsNullOrEmpty(_type))
        {
            int type = int.Parse(_type);
            if (!string.IsNullOrEmpty(_type))
            {
                int.TryParse(_type, out type);
            }
            cars = cars.Where(c => c.Loai_Xe == type);
        }
        /*
        //filter by price
        if (!string.IsNullOrEmpty(_price))
        {
            var price = _price.Split('-');
            int low = int.Parse(price[0]);
            int top = int.Parse(price[1]);
            cars = cars.Where(c => c.Price <= top && c.Price >= low);
        }
        */
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

    protected IQueryable<Xe> _SelectCars(LinQtoSQLDataContext context)
    {
        return _SelectCars(context, null);
    }
}