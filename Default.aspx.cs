using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Linq;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "select top 12 a.Ten_Loai_Xe, b.Ten_xe, b.Gia, b.Hinh_Anh, b.Ma_Xe from Loai_Xe a join Xe b on a.Ma_Loai_xe = b.Loai_Xe";
        if (Request.QueryString["Ma"] != null)
            sql += " where Ma_Xe='" + Request.QueryString["Ma"].ToString() + "'";
        sql += " order by Ma_Xe desc";
        DataList1.DataSource = DataProvider.getData(sql);
        DataList1.DataBind();
    }
}
