using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class QuanLyHangXe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
        if (Session["nguoidung"] == null)
        {
            mtvQLHX.ActiveViewIndex = 1;
            lblErr_admin.Text = "Bạn không được quyền truy cập trang này";
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
                mtvQLHX.ActiveViewIndex = 0;
                MultiView1.ActiveViewIndex = 0;
                show_chungloai();
            }
            else
            {
                mtvQLHX.ActiveViewIndex = 1;
                lblErr_admin.Text = "Bạn không được quyền truy cập trang này";
            }
        }
        }
        
    }
    protected void show_chungloai()
    {
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        GridView4.DataKeyNames = new string[] { "Ma_Xe" };
        GridView4.DataSource = tam_context.Xes;
        GridView4.DataBind();
    }
    protected void show_chungloai1()
    {
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        GridView1.DataKeyNames = new string[] { "Ma_Xe" };
        GridView1.DataSource = tam_context.Xes;
        GridView1.DataBind();
    }
    protected void show_chungloai2()
    {
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        GridView2.DataKeyNames = new string[] { "Ma_Xe" };
        GridView2.DataSource = tam_context.Xes;
        GridView2.DataBind();
    }
    protected void show_chungloai3()
    {
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        GridView3.DataKeyNames = new string[] { "Ma_Xe" };
        GridView3.DataSource = tam_context.Xes;
        GridView3.DataBind();
    }
   
    protected void btnHuy_Click(object sender, EventArgs e)
    {
        ddlLoaiXe.SelectedValue = "";
        txtTenXe.Text="";
        txtThongTin.Text = "";
        txtLoaiDongCo.Text = "";
        txtDungTichXilanh.Text = "";
        txtCongSuat.Text = "";
        txtMoment.Text ="";
        txtVanToc.Text = "";
        txtHopSo.Text = "";
        txtDungTichNL.Text = "";
        txtKT_TongThe.Text = "";
        txtChieuDai.Text = "";
        txtChieuRong.Text = "";
        txtTrongLuong.Text = "";
        txtMauSac.Text = "";
        txtGia.Text = "";
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        lblLoaiXe.Text = ddlLoaiXe.SelectedValue;
        lblTenXe.Text = txtTenXe.Text;
        lblThongTin.Text = txtThongTin.Text;
        lblLoaiDongCo.Text = txtLoaiDongCo.Text;
        lblDungTichXilanh.Text = txtDungTichXilanh.Text;
        lblCongSuat.Text = txtCongSuat.Text;
        lblMoment.Text = txtMoment.Text;
        lblVanToc.Text = txtVanToc.Text;
        lblHopSo.Text = txtHopSo.Text;
        lblDungTichNL.Text = txtDungTichNL.Text;
        lblKTTongThe.Text = txtKT_TongThe.Text;
        lblChieuDai.Text = txtChieuDai.Text;
        lblChieuRong.Text = txtChieuRong.Text;
        lblTrongLuong.Text = txtTrongLuong.Text;
        lblMauSac.Text = txtMauSac.Text;
        lblGia.Text = txtGia.Text;
        if (fuPicture.HasFile)
        {
            if (CheckFileType(fuPicture.FileName))
            {
                fuPicture.SaveAs(Server.MapPath("~/San_Pham/") + fuPicture.FileName);
                Image1.ImageUrl = "~/San_Pham/" + fuPicture.FileName;
            }
            else
            {
                lblMessage.Text = "Loại file không hợp lệ";
            }
        }
        //them moi chung loại san pham
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Xe obj = new Xe
        {
            Ten_xe = txtTenXe.Text,
            Loai_Xe = int.Parse(ddlLoaiXe.SelectedValue),
            Thong_Tin = txtThongTin.Text,
            Hinh_Anh = fuPicture.FileName,
            Loai_Dong_Co = txtLoaiDongCo.Text,
            Dung_Tich = txtDungTichXilanh.Text,
            Cong_Suat = txtCongSuat.Text,
            Mo_men = txtMoment.Text,
            Van_Toc_Toi_Da = int.Parse(txtVanToc.Text),
            Hop_So = txtHopSo.Text,
            Dung_Tich_Nhien_Lieu = int.Parse(txtDungTichNL.Text),
            KT_Tong_The = txtKT_TongThe.Text,
            Trong_Luong = int.Parse(txtTrongLuong.Text),
            Chieu_Dai = int.Parse(txtChieuDai.Text),
            Chieu_Rong = int.Parse(txtChieuRong.Text),
            Mau_Sac = txtMauSac.Text,
            Gia = int.Parse(txtGia.Text),
        };
        tam_context.Xes.InsertOnSubmit(obj);
        tam_context.SubmitChanges();
       // show_chungloai();
    }

    private bool CheckFileType(string FileName)
    {
        string ext = Path.GetExtension(FileName);
        if (ext.Equals(".jpeg") || ext.Equals(".jpg") || ext.Equals(".gif") || ext.Equals(".png"))
        {
            return true;
        }
        else
        {
            return false;
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Ma_Xe_canxoa = (int)GridView1.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Xe obj = tam_context.Xes.SingleOrDefault(chungloaisp => chungloaisp.Ma_Xe == Ma_Xe_canxoa);
        tam_context.Xes.DeleteOnSubmit(obj);
        tam_context.SubmitChanges();
        show_chungloai1();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //tham chieu den các đối tượng tai dong hieu chinh hien tai
        TextBox txt_LoaiDongCo = GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox;
        TextBox txt_DungTich_Xilanh = GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox;
        TextBox txt_DungTich_NL = GridView1.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox;
        TextBox txt_CongSuat = GridView1.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox;
        TextBox txt_Moment = GridView1.Rows[e.RowIndex].Cells[7].Controls[0] as TextBox;
        TextBox txt_TocDoToiDa = GridView1.Rows[e.RowIndex].Cells[8].Controls[0] as TextBox;

        //chuan bi
        int Ma_Xe_dangsua = (int)GridView1.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Xe obj = tam_context.Xes.SingleOrDefault(chungloaisp => chungloaisp.Ma_Xe == Ma_Xe_dangsua);
        obj.Ma_Xe = Ma_Xe_dangsua;
        obj.Loai_Dong_Co = txt_LoaiDongCo.Text;
        obj.Dung_Tich = txt_DungTich_Xilanh.Text;
        obj.Dung_Tich_Nhien_Lieu = int.Parse(txt_DungTich_NL.Text);
        obj.Cong_Suat = txt_CongSuat.Text;
        obj.Mo_men = txt_Moment.Text;
        obj.Van_Toc_Toi_Da = int.Parse(txt_TocDoToiDa.Text);
        //thuc hien
        tam_context.SubmitChanges();
        GridView1.EditIndex = -1;
        show_chungloai1();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        show_chungloai1();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        show_chungloai1();
    }

    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Ma_Xe_canxoa = (int)GridView2.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Xe obj = tam_context.Xes.SingleOrDefault(chungloaisp => chungloaisp.Ma_Xe == Ma_Xe_canxoa);
        tam_context.Xes.DeleteOnSubmit(obj);
        tam_context.SubmitChanges();
        show_chungloai2();
    }

    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //tham chieu den các đối tượng tai dong hieu chinh hien tai
        TextBox txt_TenXe = GridView2.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox;
        DropDownList ddlLoaiXe = (DropDownList)GridView2.Rows[e.RowIndex].FindControl("ddl_LoaiXe");
        TextBox txt_ThongTin = GridView2.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox;
        Image img_HinhAnh = (Image)GridView2.Rows[e.RowIndex].FindControl("img_Hinh_Anh");
        TextBox txt_MauSac = GridView2.Rows[e.RowIndex].Cells[7].Controls[0] as TextBox;
        TextBox txt_GiaTien = GridView2.Rows[e.RowIndex].Cells[8].Controls[0] as TextBox;
        FileUpload fu_HinhAnh = (FileUpload)GridView2.Rows[e.RowIndex].FindControl("fileUpload");

        //chuan bi
        int Ma_Xe_dangsua = (int)GridView2.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Xe obj = tam_context.Xes.SingleOrDefault(chungloaisp => chungloaisp.Ma_Xe == Ma_Xe_dangsua);
        obj.Ma_Xe = Ma_Xe_dangsua;
        obj.Loai_Xe = int.Parse(ddlLoaiXe.SelectedValue);
        obj.Ten_xe = txt_TenXe.Text;
        obj.Thong_Tin = txt_ThongTin.Text;

        if (fu_HinhAnh.HasFile)
        {
            if (CheckFileType(fu_HinhAnh.FileName))
            {
                fu_HinhAnh.SaveAs(Server.MapPath("~/San_Pham/") + fu_HinhAnh.FileName);
            }
            else
            {
                lblMessage.Text = "Loại file không hợp lệ";
            }
        }

        obj.Hinh_Anh = fu_HinhAnh.FileName;
        obj.Mau_Sac = txt_MauSac.Text;
        obj.Gia = int.Parse(txt_GiaTien.Text);
        //thuc hien
        tam_context.SubmitChanges();
        GridView2.EditIndex = -1;
        show_chungloai2();
    }

    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = e.NewEditIndex;
        show_chungloai2();
    }

    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        show_chungloai2();
    }
    protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Ma_Xe_canxoa = (int)GridView3.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Xe obj = tam_context.Xes.SingleOrDefault(chungloaisp => chungloaisp.Ma_Xe == Ma_Xe_canxoa);
        tam_context.Xes.DeleteOnSubmit(obj);
        tam_context.SubmitChanges();
        show_chungloai3();
    }

    protected void GridView3_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //tham chieu den các đối tượng tai dong hieu chinh hien tai
        TextBox txt_HopSo = GridView3.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox;
        TextBox txt_KTTongThe = GridView3.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox;
        TextBox txt_TrongLuong = GridView3.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox;
        TextBox txt_ChieuDai = GridView3.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox;
        TextBox txt_ChieuRong= GridView3.Rows[e.RowIndex].Cells[7].Controls[0] as TextBox;

        //chuan bi
        int Ma_Xe_dangsua = (int)GridView3.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Xe obj = tam_context.Xes.SingleOrDefault(chungloaisp => chungloaisp.Ma_Xe == Ma_Xe_dangsua);
        obj.Ma_Xe = Ma_Xe_dangsua;
        obj.Hop_So = txt_HopSo.Text;
        obj.KT_Tong_The = txt_KTTongThe.Text;
        obj.Trong_Luong = int.Parse(txt_TrongLuong.Text);
        obj.Chieu_Dai = int.Parse(txt_ChieuDai.Text);
        obj.Chieu_Rong = int.Parse(txt_ChieuRong.Text);
        //thuc hien
        tam_context.SubmitChanges();
        GridView3.EditIndex = -1;
        show_chungloai3();
    }

    protected void GridView3_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView3.EditIndex = e.NewEditIndex;
        show_chungloai3();
    }

    protected void GridView3_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView3.EditIndex = -1;
        show_chungloai3();
    }

    protected void GridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Ma_Xe_canxoa = (int)GridView4.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Xe obj = tam_context.Xes.SingleOrDefault(chungloaisp => chungloaisp.Ma_Xe == Ma_Xe_canxoa);
        tam_context.Xes.DeleteOnSubmit(obj);
        tam_context.SubmitChanges();
        show_chungloai();
    }

    protected void btnChinhSua_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        show_chungloai1();
        show_chungloai2();
        show_chungloai3();
    }
    
    protected void btnQuaylai_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        int newPage;
        newPage = e.NewPageIndex;
        if (newPage < 0 || newPage >= GridView1.PageCount)
        {
            e.Cancel = true;
        }
        else
        {
            GridView1.PageIndex = newPage;
            GridView1.DataBind();
            show_chungloai1();
        }
    }

    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        int newPage;
        newPage = e.NewPageIndex;
        if (newPage < 0 || newPage >= GridView2.PageCount)
        {
            e.Cancel = true;
        }
        else
        {
            GridView2.PageIndex = newPage;
            GridView2.DataBind();
            show_chungloai2();
        }
    }
    protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        int newPage;
        newPage = e.NewPageIndex;
        if (newPage < 0 || newPage >= GridView3.PageCount)
        {
            e.Cancel = true;
        }
        else
        {
            GridView3.PageIndex = newPage;
            GridView3.DataBind();
            show_chungloai3();
        }
    }

    protected void GridView4_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        int newPage;
        newPage = e.NewPageIndex;
        if (newPage < 0 || newPage >= GridView4.PageCount)
        {
            e.Cancel = true;
        }
        else
        {
            GridView4.PageIndex = newPage;
            GridView4.DataBind();
            show_chungloai();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        show_chungloai1();
        show_chungloai2();
        show_chungloai3();
    }
}

