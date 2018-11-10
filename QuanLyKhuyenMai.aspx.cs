using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class QuanLyKhuyenMai : System.Web.UI.Page
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
                show_KhuyenMai();
                Calendar1.SelectedDate = DateTime.Now;
                Calendar2.SelectedDate = DateTime.Now;
            }
            else
            {
                mtvQLHX.ActiveViewIndex = 1;
                lblErr_admin.Text = "Bạn không được quyền truy cập trang này";
            }
        }
        }
        
    }
    void show_KhuyenMai()
    {
            DataTable dt = new DataTable();
            string select = "select * from Xe,Khuyen_Mai where Xe.Ma_Xe = Khuyen_Mai.Ma_Xe";
            dt = DataProvider.getData(select);
            gdvKM.DataSource = dt;
            gdvKM.DataBind();
            // TotalRecord = dts.Tables[0].Rows.Count;            
       
    }
    /*
    protected void btnThem_Click1(object sender, EventArgs e)
    {
        //them moi chung loại san pham
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Khuyen_Mai obj = new Khuyen_Mai
        {
            Ma_Xe = int.Parse(txtMaXe.Text),
            KhuyenMai = int.Parse(txtKhuyenMai.Text),
            Ngay_Bat_Dau = Calendar1.SelectedDate,
            Ngay_Ket_Thuc = Calendar2.SelectedDate,
        };
        tam_context.Khuyen_Mais.InsertOnSubmit(obj);
        tam_context.SubmitChanges();

    }
    */
    protected void gdvKM_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gdvKM.EditIndex = -1;
        show_KhuyenMai();
    }
    protected void gdvKM_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gdvKM.EditIndex = e.NewEditIndex;
        /* DataTable dtxe  = DataProvider.getData("select * from Xe");
         DropDownList ddlXe = (DropDownList)gdvKM.Rows[e.NewEditIndex].FindControl("ddlXe");
         ddlXe.DataSource = dtxe;
         ddlXe.DataTextField = dtxe.Columns["Ten_xe"].ColumnName;
         ddlXe.DataValueField = dtxe.Columns["Ma_Xe"].ColumnName;
         ddlXe.DataBind();*/
        show_KhuyenMai();
    }

    protected void gdvKM_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Ma_KM = int.Parse(gdvKM.DataKeys[e.RowIndex].Values["Ma_KM"].ToString());
        string delete = "delete from Khuyen_Mai where Ma_KM = " + Ma_KM;
        DataProvider.runSQL(delete);
        show_KhuyenMai();
    }
    protected void gdvKM_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int Ma_KM = int.Parse(gdvKM.DataKeys[e.RowIndex].Value.ToString());
        DropDownList ddlXe = (DropDownList)gdvKM.Rows[e.RowIndex].FindControl("ddlXe");
        TextBox txtKhuyenMai = (TextBox)gdvKM.Rows[e.RowIndex].FindControl("txtKhuyenMai");
        Calendar cldNgayBD = (Calendar)gdvKM.Rows[e.RowIndex].FindControl("cldNgayBD");
        Calendar cldNgayKT = (Calendar)gdvKM.Rows[e.RowIndex].FindControl("cldNgayKT");

        int Ma_Xe = int.Parse(ddlXe.SelectedItem.Value);
        int KhuyenMai = int.Parse(txtKhuyenMai.Text);
        string NgayBD = cldNgayBD.SelectedDate.ToString();
        string NgayKT = cldNgayKT.SelectedDate.ToString();
        string updatesql = "update Khuyen_Mai set Ma_xe = " + Ma_Xe + " , KhuyenMai = " + KhuyenMai +", Ngay_Bat_Dau = '" + NgayBD + "', Ngay_Ket_Thuc = '" + NgayKT + "' where Ma_KM = " + Ma_KM;
        DataProvider.runSQL(updatesql);
        gdvKM.EditIndex = -1;
        show_KhuyenMai();
    }
    protected void imgbtThem_Click(object sender, ImageClickEventArgs e)
    {
        if(txtKhuyenMai.Text == "")
        {
            lblErr.Text = " Khuyến Mãi không được để trống";
        }
        else
        {
            int maxe = int.Parse(ddlxe.SelectedItem.Value);
            int khuyenmai = int.Parse(txtKhuyenMai.Text);
            string ngaybatdau = Calendar1.SelectedDate.ToString();
            string ngayketthuc = Calendar2.SelectedDate.ToString();
            string sqlthem = "insert into Khuyen_Mai(Ma_Xe, KhuyenMai, Ngay_Bat_Dau, Ngay_Ket_Thuc) values(" + maxe + ", " + khuyenmai +", '" + ngaybatdau + "', '" + ngayketthuc+"' )";
            DataProvider.runSQL(sqlthem);
            show_KhuyenMai();
        }
    }
    protected void imgbtnHuy_Click(object sender, ImageClickEventArgs e)
    {
        txtKhuyenMai.Text = "";
        show_KhuyenMai();
    }
}