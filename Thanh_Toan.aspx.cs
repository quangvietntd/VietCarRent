using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;

public partial class Thanh_Toan : System.Web.UI.Page
{
    int makh;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["giohang"] == null)
        {
            mtvThanhToan.ActiveViewIndex = 1;
        }
        else
        {
            mtvThanhToan.ActiveViewIndex = 0;
            if (Session["nguoidung"] != null)
            {
                string tennguoidung = Session["nguoidung"].ToString();
                string thongtinkh = "select * from Nguoi_Dung where Ten_Nguoi_Dung='" + tennguoidung + "'";
                DataTable thongtin = XLDL.docbang(thongtinkh);
                txtTenKhachHang.Text = thongtin.Rows[0]["Ho_Ten"].ToString();
                txtDiaChiKH.Text = thongtin.Rows[0]["Dia_Chi"].ToString();
                txtDienThoaiKH.Text = thongtin.Rows[0]["SDT"].ToString();
                txtSoCMNDKH.Text = thongtin.Rows[0]["CMND"].ToString();
                txtEmailKH.Text = thongtin.Rows[0]["Email"].ToString();
                txtDiaChiKH.Enabled = false;
                txtDienThoaiKH.Enabled = false;
                txtEmailKH.Enabled = false;
                txtSoCMNDKH.Enabled = false;
                txtTenKhachHang.Enabled = false;
            }
            //hien thi thong tin gio hang len gridview
            DataTable dt = (DataTable)Session["giohang"];
            System.Decimal tongThanhTien = 0;
            foreach (DataRow row in dt.Rows)
            {
                row["thanhtien"] = Convert.ToInt32(row["soluong"]) * Convert.ToDecimal(row["gia"]);
                tongThanhTien += Convert.ToDecimal(row["thanhtien"]);
                lblTongTien.Text = tongThanhTien.ToString();
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            if (!IsPostBack)
                calNgayNhan.SelectedDate = DateTime.Today;
        }
    }
    protected void Imgbtn_ThanhToan_Click(object sender, ImageClickEventArgs e)
    {
        string match = @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*";
        Regex reg = new Regex(match);
        Int32 tongthanhtien1 = Int32.Parse(lblTongTien.Text);
        string hotenkh = txtTenKhachHang.Text;
        string diachi = txtDiaChiKH.Text;
        string dienthoai = txtDienThoaiKH.Text;
        string socmnd = txtSoCMNDKH.Text;
        string email = txtEmailKH.Text;
        string hotennguoinhan = txtTenNguoiNhan.Text;
        string diachinhan = txtDiaChiNguoiNhan.Text;
        string dienthoainhan = txtSDTNguoiNhan.Text;
        string Ngaygiao = calNgayNhan.SelectedDate.ToString();
        string ngaydathang = DateTime.Today.ToString();
        if (hotenkh == "")
        {
            lblErrTenKH.Visible = true;
        }
        else if (socmnd == "")
        {
            lblErrCMND.Visible = true;
        }
        else if (diachi == "")
        {
            lblErrDiaChiKKH.Visible = true;
        }
        else if (dienthoai == "")
        {
            lblErrSDTKH.Visible = true;
        }
        else if (email == "")
        {
            lblErrEmailKH.Visible = true;
        }
        else if (!reg.IsMatch(email))
        {
            lblErrEmailHopLe.Visible = true;
        }
        else if (hotennguoinhan == "")
        {
            lblErrTenNguoiNhan.Visible = true;
        }
        else if (diachinhan == "")
        {
            lblErrDiaChiNguoiNhan.Visible = true;
        }
        else if (dienthoainhan == "")
        {
            lblErrSDTNguoiNhan.Visible = true;
        }
        else
        {
            if (Session["nguoidung"] == null)
            {
                string themthongtinkh = "insert into Nguoi_Dung(Ho_Ten,Dia_Chi,SDT,Email,CMND)values(N'" + hotenkh + "',N'" + diachi + "'," + dienthoai + ",'" + email + "'," + socmnd + ")";
                XLDL.thuchienlenh(themthongtinkh);
                string laymakh = "select max(Ma_Nguoi_Dung) from Nguoi_Dung";
                DataTable laymakh1 = XLDL.docbang(laymakh);
                makh = int.Parse(laymakh1.Rows[0][0].ToString());
            }
            else
            {
                string tennguoidung = Session["nguoidung"].ToString();
                string thongtinkh = "select * from Nguoi_Dung where Ten_Nguoi_Dung='" + tennguoidung + "'";
                DataTable dt1 = XLDL.docbang(thongtinkh);
                makh = int.Parse(dt1.Rows[0][0].ToString());
            }
            try
            {
                string strString = "abcdefghijklmnopqrstuvwxyz0123456789";
                Random random = new Random();
                int randomCharIndex = 0;
                char randomChar;
                string captcha = "";
                for (int i = 0; i < 40; i++)
                {
                    randomCharIndex = random.Next(0, strString.Length);
                    randomChar = strString[randomCharIndex];
                    captcha += Convert.ToString(randomChar);
                }
                Session["rdnCode"] = captcha;
                string chuoi = Session["rdnCode"].ToString();
                string themdonhang = "insert into Don_Dat_Hang(Nguoi_Nhan,Dia_Chi_Nhan,Ngay_Giao,Ngay_DH,Tong_Tien,Tinh_Trang,Ma_KH,SDT_Nguoi_Nhan,Captcha)values(N'" + hotennguoinhan + "',N'" + diachinhan + "','" + Ngaygiao + "','" + ngaydathang + "'," + tongthanhtien1 + ","+ 0 +"," + makh + "," + dienthoainhan + ",'" + chuoi + "')";
                XLDL.thuchienlenh(themdonhang);
                // them vao chi tiet don dat hang
                string laymadh = "select top 1 Ma_DDH from Don_Dat_Hang where Ma_KH = '" + makh +"' and Captcha = '" + chuoi + "' order by Ma_DDH desc";
                DataTable laymadh1 = XLDL.docbang(laymadh);
                //string chuoiactive = (laymadh1.Rows[0][1].ToString());
                int madh = int.Parse(laymadh1.Rows[0][0].ToString());
                DataTable laygiohang = (DataTable)Session["giohang"];
                int soluong, masp, dongia, thanhtien;
                string themvaoctdh;
                for (int i = 0; i < laygiohang.Rows.Count; i++)
                {
                    masp = int.Parse(laygiohang.Rows[i]["maxe"].ToString());
                    dongia = int.Parse(laygiohang.Rows[i]["gia"].ToString());
                    soluong = int.Parse(laygiohang.Rows[i]["soluong"].ToString());
                    thanhtien = int.Parse(laygiohang.Rows[i]["thanhtien"].ToString());
                    themvaoctdh = "insert into Chi_Tiet_DDH(Ma_DDH,Ma_Xe,Gia,So_Luong,Thanh_Tien)values(" + madh + "," + masp + "," + dongia + "," + soluong + "," + thanhtien + ")";
                    XLDL.thuchienlenh(themvaoctdh);
                }
                Response.Redirect("~/Default.aspx");
            }
            catch (Exception ex)
            {
                lblErr.Text = "";
                lblErr.Text = "Lỗi: Cập nhật CSDL không thành công";

            }
        }
    }
}