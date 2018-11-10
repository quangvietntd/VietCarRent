using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Car : System.Web.UI.Page
{


    static PagedDataSource p = new PagedDataSource();
    public static int trang_thu = 0;
    public static int intSTT;
    protected void Page_Load(object sender, EventArgs e)
    {
        int maloaixe = int.Parse(Request.QueryString["Ma_Loai_xe"]);
        string loaixe = "select * from Loai_Xe where Ma_Loai_Xe=" + maloaixe ;
        DataTable dt1 = XLDL.docbang(loaixe);
        lblTenHang.Text = dt1.Rows[0]["Ten_Loai_Xe"].ToString();
        load(Request.QueryString["Ma_Loai_xe"].ToString() );
        
    }
   
    //public static int intSTT;
    //public static int trang_thu = 0;
    void load(string Ma_Loai_Xe)
    {
      try
        {
            SqlConnection conn = new SqlConnection(DataProvider.ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from Xe where Loai_Xe = @Ma_Loai_xe", conn);
            cmd.Parameters.AddWithValue("@Ma_Loai_Xe", Ma_Loai_Xe);
            SqlDataAdapter adapter;
            adapter = new SqlDataAdapter(cmd);
            // PHANLOAI = adapter.("PHAN_LOAI");
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            adapter.Dispose();
            System.Data.DataView dv = new System.Data.DataView(dt);
            //   pgitems.DataSource = dv;
            // pgitems.AllowPaging = true;
            //   pgitems.PageSize = 5;
            //  pgitems.CurrentPageIndex = PageNumber;

            // string sql = "select MA_SAN_PHAM, TEN_SAN_PHAM, GIA_BAN, HINH_ANH, PHAN_LOAI";

            p.AllowPaging = true;
            p.DataSource = dv;
            p.PageSize = 4;
            p.CurrentPageIndex = trang_thu;
            //ibtnTrangDau.Enabled = true;
            ibtnTrangDau.Enabled = true;
            ibtnTruoc.Enabled = true;
            ibtnSau.Enabled = true;
            ibtnTrangCuoi.Enabled = true;
            if (p.IsFirstPage == true) //neu la trang dau
            {
                ibtnTrangDau.Enabled = false;
                ibtnTruoc.Enabled = false;
                ibtnSau.Enabled = true;
                ibtnTrangCuoi.Enabled = true;
            }
            if (p.IsLastPage == true)//neu la cuoi thi nguoc lai
            {
                ibtnTrangDau.Enabled = true;
                ibtnTruoc.Enabled = true;
                ibtnSau.Enabled = false;
                ibtnTrangCuoi.Enabled = false;
            }
            if (p.PageCount == 1)
            {
                ibtnTrangDau.Enabled = false;
                ibtnTruoc.Enabled = false;
                ibtnSau.Enabled = false;
                ibtnTrangCuoi.Enabled = false;
            }
            //if (trang_thu < p.PageCount)
                //txtTrang.Text = (trang_thu + 1)+ "/"+ p.PageCount;
                txtPage.Text = (trang_thu + 1) + "/" + p.PageCount;
            //else
                //xtPage.Text = p.PageCount + "/" + p.PageCount;
            DTLXe_Theo_Hang.DataSource = p;
            DTLXe_Theo_Hang.DataBind();
        }
        catch (Exception ex)
        {
 
        }
    }
    protected void ibtnTrangDau_Click(object sender, ImageClickEventArgs e)
    {
        trang_thu = 0;
        //Label3.Text = trang_thu.ToString();
        load(Request.QueryString["Ma_Loai_Xe"].ToString());
    }
    protected void ibtnTruoc_Click(object sender, ImageClickEventArgs e)
    {
        if(trang_thu > 0)
            trang_thu--;
        //Label3.Text = trang_thu.ToString();
        load(Request.QueryString["Ma_Loai_Xe"].ToString());
    }
    protected void ibtnSau_Click(object sender, ImageClickEventArgs e)
    {

        if (trang_thu < p.PageCount)
        trang_thu++;
        //Label3.Text = trang_thu.ToString();
        load(Request.QueryString["Ma_Loai_Xe"].ToString());
    }
    protected void ibtnTrangCuoi_Click(object sender, ImageClickEventArgs e)
    {
       
        trang_thu = p.PageCount-1;
        // Label3.Text = trang_thu.ToString();
        load(Request.QueryString["Ma_Loai_Xe"].ToString());
    }


}