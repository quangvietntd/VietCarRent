using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Khuyen_Mai : System.Web.UI.Page
{
    public static int trang_thu = 0;
    static PagedDataSource p = new PagedDataSource();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show_promote();
        }
    }
    void show_promote()
    {

        try
        {
            SqlConnection conn = new SqlConnection(DataProvider.ConnectionString);
            SqlCommand cmd = new SqlCommand("select Xe.Ma_Xe as Ma_Xe, Xe.Gia as Gia, Xe.Ten_xe as Ten_xe, Xe.Hinh_Anh as Hinh_Anh, Xe.So_Luong as So_Luong, (Xe.Gia - Xe.Gia/100 * R1.KhuyenMai) as Gia_Khuyen_mai, R1.KhuyenMai as KhuyenMai from Xe join ( select * from Khuyen_Mai where Khuyen_Mai.Ngay_Bat_Dau <= GETDATE() and Khuyen_Mai.Ngay_Ket_Thuc >= GETDATE()) as R1 on Xe.Ma_Xe = R1.Ma_Xe order by R1.Ma_KM desc", conn);
            //cmd.Parameters.AddWithValue("@Ma_Loai_Xe", Ma_Loai_Xe);
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
            p.PageSize = 8;
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
            //txtPage.Text = p.PageCount + "/" + p.PageCount;
            dtlDanhMucKM.DataSource = p;
            dtlDanhMucKM.DataBind();
        }
        catch (Exception ex)
        {

        }
    }
    protected void ibtnTrangDau_Click(object sender, ImageClickEventArgs e)
    {
        trang_thu = 0;
        //Label3.Text = trang_thu.ToString();
        show_promote();

    }
    protected void ibtnTruoc_Click(object sender, ImageClickEventArgs e)
    {
        if (trang_thu > 0)
            trang_thu--;
        //Label3.Text = trang_thu.ToString();
        show_promote();
    }
    protected void ibtnSau_Click(object sender, ImageClickEventArgs e)
    {

        if (trang_thu < p.PageCount - 1)
            trang_thu++;
        //Label3.Text = trang_thu.ToString();
        show_promote();

    }
    protected void ibtnTrangCuoi_Click(object sender, ImageClickEventArgs e)
    {

        trang_thu = p.PageCount - 1;
        // Label3.Text = trang_thu.ToString();
        show_promote();

    }
}