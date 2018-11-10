using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TimKiem : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void imgbtnTimKiem_Sidebar_Click(object sender, ImageClickEventArgs e)
    {
       int giaden, giatu, loaixe;
        

            giaden =int.Parse(ddlTimKiem_GiaDen.SelectedItem.Value.ToString());
   
            giatu = int.Parse(ddlTimKiem_GiaTu.SelectedItem.Value.ToString());

            loaixe = int.Parse(DDLLoaiXe.SelectedValue.ToString());

            if (giaden <= giatu)
            {
                lblErr.Text = "Khoảng giá không đúng! Mời bạn chọn lại";
            }
            else
            {
                string url = "~/Tim_Kiem.aspx?giatu=" + giatu + "&giaden=" + giaden+"&loaixe="+loaixe;
                Response.Redirect(url);
            }
        
    }
}