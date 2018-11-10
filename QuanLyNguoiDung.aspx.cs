using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class QuanLyHangXe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            lblErrMatKhau.Visible = false;
            lblErrTenDangNhap.Visible = false;
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
                show_chungloai();
                show_chungloai1();
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
        DataTable dtTT_DN = new DataTable();
        string sqldangnhap = "select * from Nguoi_Dung";
        dtTT_DN = DataProvider.getData(sqldangnhap);
        dtTT_DN.Columns.Add("Phan_Quyen");
        for (int i = 0; i < dtTT_DN.Rows.Count; i++)
        {
            if (dtTT_DN.Rows[i]["Admin"].ToString() == "1")
                dtTT_DN.Rows[i]["Phan_Quyen"] = "Admin";
            else
                dtTT_DN.Rows[i]["Phan_Quyen"] = "Không";
        }

            GridView1.DataKeyNames = new string[] { "Ma_Nguoi_Dung" };
        GridView1.DataSource = dtTT_DN;
        GridView1.DataBind();
    }

    protected void show_chungloai1()
    {
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        GridView2.DataKeyNames = new string[] { "Ma_Nguoi_Dung" };
        GridView2.DataSource = tam_context.Nguoi_Dungs;
        GridView2.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Ma_Nguoi_Dung_canxoa = (int)GridView1.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Nguoi_Dung obj = tam_context.Nguoi_Dungs.SingleOrDefault(Nguoi_Dung => Nguoi_Dung.Ma_Nguoi_Dung == Ma_Nguoi_Dung_canxoa);
        string sql = "select * from Don_Dat_Hang where Ma_KH = " + Ma_Nguoi_Dung_canxoa;
        DataTable DDH = DataProvider.getData(sql);
        if (DDH.Rows.Count > 0)
        {
            for (int i = 0; i < DDH.Rows.Count; i++)
            {
                int Ma_DDH = int.Parse(DDH.Rows[i]["Ma_DDH"].ToString());
                string sqldeleteCTDDH = "delete from Chi_Tiet_DDH where Ma_DDH = " + Ma_DDH;
                DataProvider.runSQL(sqldeleteCTDDH);
            }
            string sqldeleteDDH = "delete from Don_Dat_Hang where Ma_KH = " + Ma_Nguoi_Dung_canxoa;
            DataProvider.runSQL(sqldeleteDDH);
        }
            tam_context.Nguoi_Dungs.DeleteOnSubmit(obj);
        tam_context.SubmitChanges();
        show_chungloai();
        show_chungloai1();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //tham chieu den các đối tượng tai dong hieu chinh hien tai
       // TextBox txt_MaNguoiDung = GridView1.Rows[e.RowIndex].Cells[0].Controls[0] as TextBox;
        Label lblTenNguoiDung = GridView1.Rows[e.RowIndex].Cells[3].FindControl("lblTenNguoiDung") as Label;
        TextBox txt_MatKhau = GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox;
        DropDownList ddlAdmin = GridView1.Rows[e.RowIndex].FindControl("ddlAdmin") as DropDownList;
        
        //chuan bi
        int Ma_Nguoi_Dung_dangsua = (int)GridView1.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Nguoi_Dung obj = tam_context.Nguoi_Dungs.SingleOrDefault(Nguoi_Dung => Nguoi_Dung.Ma_Nguoi_Dung == Ma_Nguoi_Dung_dangsua);
        obj.Ma_Nguoi_Dung = Ma_Nguoi_Dung_dangsua;
        obj.Ten_Nguoi_Dung = lblTenNguoiDung.Text;
        obj.Mat_Khau = txt_MatKhau.Text;
        obj.Admin = int.Parse(ddlAdmin.SelectedItem.Value);
       
        //thuc hien
        tam_context.SubmitChanges();
        GridView1.EditIndex = -1;
        show_chungloai();
        show_chungloai1();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        show_chungloai();
 
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        show_chungloai();
    }

    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Ma_Nguoi_Dung_canxoa = (int)GridView2.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Nguoi_Dung obj = tam_context.Nguoi_Dungs.SingleOrDefault(Nguoi_Dung => Nguoi_Dung.Ma_Nguoi_Dung == Ma_Nguoi_Dung_canxoa);
        string sql = "select * from Don_Dat_Hang where Ma_KH = " + Ma_Nguoi_Dung_canxoa;
        DataTable DDH = DataProvider.getData(sql);
        if (DDH.Rows.Count > 0)
        {
            for (int i = 0; i < DDH.Rows.Count; i++)
            {
                int Ma_DDH = int.Parse(DDH.Rows[i]["Ma_DDH"].ToString());
                string sqldeleteCTDDH = "delete from Chi_Tiet_DDH where Ma_DDH = " + Ma_DDH;
                DataProvider.runSQL(sqldeleteCTDDH);
            }
            string sqldeleteDDH = "delete from Don_Dat_Hang where Ma_KH = " + Ma_Nguoi_Dung_canxoa;
            DataProvider.runSQL(sqldeleteDDH);
        }
        tam_context.Nguoi_Dungs.DeleteOnSubmit(obj);
        tam_context.SubmitChanges();
        show_chungloai();
        show_chungloai1();
    }

    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //TextBox txt_HoTen = GridView2.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox;
        //DropDownList txt_GioiTinh = GridView2.Rows[e.RowIndex].Cells[5].Controls[0] as DropDownList;
        //TextBox txt_DiaChi = GridView2.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox;
        //TextBox txt_CMND = GridView2.Rows[e.RowIndex].Cells[7].Controls[0] as TextBox;
        //TextBox txt_Email = GridView2.Rows[e.RowIndex].Cells[8].Controls[0] as TextBox;
        //TextBox txt_SDT = GridView2.Rows[e.RowIndex].Cells[9].Controls[0] as TextBox;

        TextBox txt_HoTen = GridView2.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox;
        DropDownList ddl_GioiTinh = GridView2.Rows[e.RowIndex].FindControl("ddlGioiTinh") as DropDownList;
        TextBox txt_DiaChi = GridView2.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox;
        TextBox txt_CMND = GridView2.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox;
        TextBox txt_Email = GridView2.Rows[e.RowIndex].Cells[7].Controls[0] as TextBox;
        TextBox txt_SDT = GridView2.Rows[e.RowIndex].Cells[8].Controls[0] as TextBox;
        //chuan bi
        int Ma_Nguoi_Dung_dangsua = (int)GridView2.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Nguoi_Dung obj = tam_context.Nguoi_Dungs.SingleOrDefault(Nguoi_Dung => Nguoi_Dung.Ma_Nguoi_Dung == Ma_Nguoi_Dung_dangsua);
        obj.Ma_Nguoi_Dung = Ma_Nguoi_Dung_dangsua;
        obj.Ho_Ten = txt_HoTen.Text;
        obj.Gioi_Tinh = ddl_GioiTinh.SelectedItem.Value;
        obj.Dia_Chi = txt_DiaChi.Text;
        obj.CMND = txt_CMND.Text;
        obj.Email = txt_Email.Text;
        obj.SDT = txt_SDT.Text;
        //thuc hien
        tam_context.SubmitChanges();
        GridView2.EditIndex = -1;
        show_chungloai();
        show_chungloai1();
    }

    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = e.NewEditIndex;
        show_chungloai();
        show_chungloai1();
    }

    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        show_chungloai();
        show_chungloai1();
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
            show_chungloai();
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
            show_chungloai();
            show_chungloai1();
        }
    }
    

    protected void imgbtnThem_Click(object sender, ImageClickEventArgs e)
    {

        if (txtTenDangNhap.Text == "")
        {
            lblErrMatKhau.Visible = true;
        }
        else if (lblErrMatKhau.Text == "")
        {
            lblErrMatKhau.Visible = true;
        }
        else
        {
            //them moi chung loại san pham
            LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
            Nguoi_Dung obj = new Nguoi_Dung
            {
                Ten_Nguoi_Dung = txtTenDangNhap.Text,
                Mat_Khau = txtMatKhau.Text,
                Admin = int.Parse(ddlAdmin.SelectedItem.Value),
                Ho_Ten = txtHoTen.Text,
                Gioi_Tinh = ddlGioiTinh.Text,
                Dia_Chi = txtDiaChi.Text,
                CMND = txtCMND.Text,
                Email = txtEmail.Text,
                SDT = txtSDT.Text,
            };
            tam_context.Nguoi_Dungs.InsertOnSubmit(obj);
            tam_context.SubmitChanges();
        }
        show_chungloai();
        show_chungloai1();
    }
}