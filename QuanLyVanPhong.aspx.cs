using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class QuanLyVanPhong : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["nguoidung"] == null)
            {
                mtvQLVP.ActiveViewIndex = 1;
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
                    mtvQLVP.ActiveViewIndex = 0;
                    show_chungloai();

                }
                else
                {
                    mtvQLVP.ActiveViewIndex = 1;
                    lblErr_admin.Text = "Bạn không được quyền truy cập trang này";
                }
            }
        }

    }
    protected void show_chungloai()
    {
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataSource = tam_context.Van_Phongs;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Ma_VP_canxoa = (int)GridView1.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Van_Phong obj = tam_context.Van_Phongs.SingleOrDefault(Van_Phong => Van_Phong.id == Ma_VP_canxoa);
        tam_context.Van_Phongs.DeleteOnSubmit(obj);
        tam_context.SubmitChanges();
        show_chungloai();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //tham chieu den các đối tượng tai dong hieu chinh hien tai
        TextBox txt_Ten_VP = GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox;

        //chuan bi
        int Ma_VP_dangsua = (int)GridView1.DataKeys[e.RowIndex].Value;
        LinQtoSQLDataContext tam_context = new LinQtoSQLDataContext();
        Van_Phong obj = tam_context.Van_Phongs.SingleOrDefault(Van_Phong => Van_Phong.id == Ma_VP_dangsua);
        obj.id = Ma_VP_dangsua;
        obj.Ten_VP = txt_Ten_VP.Text;

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

        string sql_maxid = "select Max(id) as MAXID from Van_Phong";
        DataTable dt = XLDL.docbang(sql_maxid);
        int maxid = int.Parse(dt.Rows[0][0].ToString());
        int mavanphong = maxid + 1;

        Van_Phong obj = new Van_Phong
        {
            id = mavanphong,
            Ten_VP = txtTenVanPhong.Text,
        };
        tam_context.Van_Phongs.InsertOnSubmit(obj);
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