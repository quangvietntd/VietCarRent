using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class QuanLyTrangThai : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["nguoidung"] == null)
            {
                mtvQLTT.ActiveViewIndex = 1;
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
                    mtvQLTT.ActiveViewIndex = 0;
                    show_chungloai();

                }
                else
                {
                    mtvQLTT.ActiveViewIndex = 1;
                    lblErr_admin.Text = "Bạn không được quyền truy cập trang này";
                }
            }
        }

    }
    protected void show_chungloai()
    {
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataSource = tam_context.Trang_Thais;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Ma_TT_canxoa = (int)GridView1.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Trang_Thai obj = tam_context.Trang_Thais.SingleOrDefault(Trang_Thai => Trang_Thai.id == Ma_TT_canxoa);
        tam_context.Trang_Thais.DeleteOnSubmit(obj);
        tam_context.SubmitChanges();
        show_chungloai();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //tham chieu den các đối tượng tai dong hieu chinh hien tai
        TextBox txt_Ten_TT = GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox;

        //chuan bi
        int Ma_TT_dangsua = (int)GridView1.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Trang_Thai obj = tam_context.Trang_Thais.SingleOrDefault(Trang_Thai => Trang_Thai.id == Ma_TT_dangsua);
        obj.id = Ma_TT_dangsua;
        obj.tinh_trang = txt_Ten_TT.Text;

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

        string sql_maxid = "select Max(id) as MAXID from Trang_Thai";
        DataTable dt = XLDL.docbang(sql_maxid);
        int maxid = int.Parse(dt.Rows[0][0].ToString());
        int matrangthai = maxid + 1;

        Trang_Thai obj = new Trang_Thai
        {
            id = matrangthai,
            tinh_trang = txtTenTrangThai.Text,
        };
        tam_context.Trang_Thais.InsertOnSubmit(obj);
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