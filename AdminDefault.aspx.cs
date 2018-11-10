using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminDefault : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["nguoidung"] == null)
            {
                mtvAdmin.ActiveViewIndex = 1;

            }
            else
            {
                string tennguoidung = Session["nguoidung"].ToString();
                string thongtinkh = "select * from Nguoi_Dung where Ten_Nguoi_Dung='" + tennguoidung + "'";
                DataTable dt = XLDL.docbang(thongtinkh);
                int manguoidung = int.Parse(dt.Rows[0][0].ToString());
                int IsAdmin = int.Parse(dt.Rows[0]["Admin"].ToString());
                if (IsAdmin == 1)
                {
                    mtvAdmin.ActiveViewIndex = 0;

                }
                else
                {
                    mtvAdmin.ActiveViewIndex = 1;
                    
                }
            }
        }
    }
}