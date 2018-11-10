using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_SoLuotTC : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblSoLuotTC.Text = Application["SoLuotTruyCap"].ToString();
        lblOnline.Text = Application["SLOnline"].ToString();
    }
}