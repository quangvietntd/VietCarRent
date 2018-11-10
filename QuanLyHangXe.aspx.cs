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
        GridView1.DataKeyNames = new string[] { "Ma_Loai_Xe" };
        GridView1.DataSource = tam_context.Loai_Xes;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Ma_Loai_Xe_canxoa = (int)GridView1.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Loai_Xe obj = tam_context.Loai_Xes.SingleOrDefault(Loai_Xe => Loai_Xe.Ma_Loai_Xe == Ma_Loai_Xe_canxoa);
        tam_context.Loai_Xes.DeleteOnSubmit(obj);
        tam_context.SubmitChanges();
        show_chungloai();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //tham chieu den các đối tượng tai dong hieu chinh hien tai
        TextBox txt_TenLoai_Xe = GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox;

        //chuan bi
        int Ma_Loai_Xe_dangsua = (int)GridView1.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Loai_Xe obj = tam_context.Loai_Xes.SingleOrDefault(Loai_Xe => Loai_Xe.Ma_Loai_Xe == Ma_Loai_Xe_dangsua);
        obj.Ma_Loai_Xe = Ma_Loai_Xe_dangsua;
        obj.Ten_Loai_Xe = txt_TenLoai_Xe.Text;

        //thuc hien
        tam_context.SubmitChanges();
        GridView1.EditIndex = -1;
        show_chungloai();
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
    protected void btnThem_Click1(object sender, EventArgs e)
    {
        //them moi chung loại san pham
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Loai_Xe obj = new Loai_Xe
        {
            Ten_Loai_Xe = txtTenLoaiXe.Text,
        };
        tam_context.Loai_Xes.InsertOnSubmit(obj);
        tam_context.SubmitChanges();
        show_chungloai();
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
        }
    }
}