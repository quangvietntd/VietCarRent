using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Car : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request.QueryString["ID"] != null)
            {
                string sql = "select * from Xe";
                sql += " where Ma_Xe=" + Request.QueryString["ID"].ToString();
                if (DataProvider.getData(sql) != null)
                {
                    lblErr.Visible=false;
                    DataList1.DataSource = DataProvider.getData(sql);
                    DataList1.DataBind();
                   /* ImageButton imgbutton = (ImageButton)DataList1.FindControl("imgbtnThem");
                    string sqlsoluong = "select * from Xe where Ma_Xe=" + Request.QueryString["ID"].ToString();
                    DataTable dt = XLDL.docbang(sqlsoluong);
                    int soluong = int.Parse(dt.Rows[0]["So_Luong"].ToString());
                    if (soluong != 0)
                    {
                        imgbutton.Visible = true;
                    }
                    else
                        imgbutton.Visible = false;*/
                }
                else
                {
                    lblErr.Text = "Không tìm thấy sản phẩm";
                }
            }
        }
        catch (Exception ex)
        {
 
        }
    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
    }
}