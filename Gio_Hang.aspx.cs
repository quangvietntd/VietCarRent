using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Gio_Hang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["nguoidung"] == null)
            {
                mtvGioHang.ActiveViewIndex = 1;
            }
            else
            {
                mtvGioHang.ActiveViewIndex = 0;
                Int64 ngay = DateTime.Now.Ticks;
                if (Session["giohang"] == null)
                {

                    imgbtnCapNhat.Visible = false;
                    imgbtnThanhToan.Visible = false;
                    imgbtnXoaGH.Visible = false;
                    lblTongTien.Visible = false;
                }

                if (Request.QueryString["Ma_Xe"] != null)
                {
                    int maxe = int.Parse(Request.QueryString["Ma_Xe"]);
                    DataTable dt = XLDL.docbang("select Loai_Xe.Ten_Loai_Xe as Ten_Loai_Xe, Xe.Ma_Xe as Ma_Xe, Xe.Gia as Gia, Xe.Ten_xe as Ten_xe, Xe.Hinh_Anh as Hinh_Anh, Xe.So_Luong as So_Luong, (Xe.Gia - Xe.Gia/100 * R1.KhuyenMai) as Gia_Khuyen_Mai, R1.KhuyenMai as KhuyenMai from Loai_Xe, Xe left join ( select * from Khuyen_Mai where Khuyen_Mai.Ngay_Bat_Dau <= GETDATE() and Khuyen_Mai.Ngay_Ket_Thuc >= GETDATE()) as R1 on Xe.Ma_Xe = R1.Ma_Xe where Xe.Loai_Xe= Loai_Xe.Ma_Loai_Xe and Xe.Ma_Xe = " + maxe);
                    String tenxe = dt.Rows[0]["Ten_xe"].ToString();
                    int gia;
                    if (dt.Rows[0]["KhuyenMai"].ToString() == "")
                        gia = int.Parse(dt.Rows[0]["Gia"].ToString());
                    else gia = int.Parse(dt.Rows[0]["Gia_Khuyen_Mai"].ToString());
                    string tenloaixe = dt.Rows[0]["Ten_Loai_Xe"].ToString();
                    //string hinhminhhoa = dt.Rows[0][3].ToString();
                    if (int.Parse(dt.Rows[0]["So_Luong"].ToString()) == 0)
                        lblErr.Text = "Lỗi: Sản phẩm không đủ số lượng";
                    else
                    {
                        int Soluong = 1;
                        ThemVaoGioHang(maxe, tenxe, tenloaixe, gia, Soluong);
                    }
                }
                if (Session["giohang"] != null)
                {
                    DataTable dt = new DataTable();
                    dt = (DataTable)Session["giohang"];
                    if (dt.Rows.Count == 0)
                    {
                        imgbtnCapNhat.Visible = false;
                        imgbtnThanhToan.Visible = false;
                        imgbtnXoaGH.Visible = false;
                        lblTongTien.Visible = false;

                        return;
                    }
                    System.Decimal tongThanhTien = 0;
                    foreach (DataRow r in dt.Rows)
                    {
                        r["thanhtien"] = Convert.ToInt32(r["soluong"]) * Convert.ToDecimal(r["gia"]);
                        tongThanhTien += Convert.ToDecimal(r["thanhtien"]);
                        lblTongTien.Text = tongThanhTien.ToString();
                    }
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    }
    public void ThemVaoGioHang(int maxe, string tenxe, string tenloaixe, int gia, int soluong)
    {
        DataTable datatable;
        if (Session["giohang"] == null)
        {
            datatable = new DataTable();
            datatable.Columns.Add("maxe");
            datatable.Columns.Add("tenxe");
            //datatable.Columns.Add("hinhminhhoa");
            datatable.Columns.Add("tenloaixe");
            datatable.Columns.Add("gia");
            datatable.Columns.Add("soluong");
            datatable.Columns.Add("thanhtien");
        }
        else
            datatable = (DataTable)Session["giohang"];
        int dong = SPdacotronggiohang(maxe, datatable);
        if (dong != -1)
        {
            datatable.Rows[dong]["soluong"] = Convert.ToInt32(datatable.Rows[dong]["soluong"]) + soluong;
        }
        else
        {
            DataRow dr = datatable.NewRow();
            dr["maxe"] = maxe;
            dr["tenxe"] = tenxe;
            //dr["hinhminhhoa"] = hinhminhhoa;
            dr["tenloaixe"] = tenloaixe;
            dr["gia"] = gia;
            dr["soluong"] = soluong;
            dr["thanhtien"] = gia * soluong;
            datatable.Rows.Add(dr);
        }
        Session["giohang"] = datatable;
        Response.Redirect("Gio_Hang.aspx");
    }
    public static int SPdacotronggiohang(int maxe, DataTable datatable)
    {
        int dong = -1;
        for (int i = 0; i < datatable.Rows.Count; i++)
        {
            if (int.Parse(datatable.Rows[i]["maxe"].ToString()) == maxe)
            {
                dong = i;
                break;
            }
        }
        return dong;
    }

    protected void imgbtnTiepTuc_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Danh_Muc_SP.aspx");
    }
    protected void imgbtnXoaGH_Click(object sender, ImageClickEventArgs e)
    {
        Session["giohang"] = null;
        Response.Redirect("~/Gio_Hang.aspx");
    }
    protected void imgbtnCapNhat_Click(object sender, ImageClickEventArgs e)
    {
        DataTable dt = (DataTable)Session["gioHang"];

        foreach (GridViewRow r in GridView1.Rows)
        {
            foreach (DataRow dr in dt.Rows)
            {
                if (Convert.ToString(GridView1.DataKeys[r.RowIndex].Value) == dr["maxe"].ToString())
                {
                    TextBox t = (TextBox)r.Cells[4].FindControl("txtSoLuong");

                    if (Convert.ToInt32(t.Text) <= 0)
                    {
                        dt.Rows.Remove(dr);

                    }
                    else
                    {
                        if (!(int.Parse(DataProvider.get_record("Xe", "So_Luong", "Ma_Xe", dr["maxe"].ToString())) > int.Parse(t.Text)))
                        {
                            lblErr.Visible = true;
                            lblErr.Text = "Lỗi: Cập nhật không thành công do số lượng sản phẩm " + dr["tenxe"].ToString()+ " không đủ ";
                            t.Text = dr["soluong"].ToString();
                            return;
                            
                        }
                        else
                            dr["soluong"] = t.Text;
                        //else
                            
                    }
                    break;
                }
            }
        }
        Session["giohang"] = dt;
        Response.Redirect("Gio_Hang.aspx");
    }
    protected void imgbtnThanhToan_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Thanh_Toan.aspx");
    }
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "xoa")
        {
            int chiso = int.Parse(e.CommandArgument.ToString());
            try
            {
                DataTable dt = (DataTable)Session["giohang"];
                dt.Rows.RemoveAt(chiso);
                Session["giohang"] = dt;
                Response.Redirect("Gio_Hang.aspx");
            }
            catch
            {
                Response.Redirect("Gio_Hang.aspx");
            }
        }
    }
    protected void imbbtnDangXuat_DangNhap_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Dang_Nhap.aspx");
    }
}