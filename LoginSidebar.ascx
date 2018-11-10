<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginSidebar.ascx.cs" Inherits="LoginSidebar" %>

<asp:MultiView ID="mtvLoginSidebar" runat="server">
    <asp:View ID="ViewLogin" runat="server">
    <div class="art-box art-vmenublock">
    <div class="art-box-body art-vmenublock-body">
<div class="art-bar art-vmenublockheader">
    <h3 class="t">Đăng Nhập</h3>
</div><div class="art-box art-vmenublockcontent">
    <div class="art-box-body art-vmenublockcontent-body" style="margin-top:-15px">
    <div style="background-color: #E8E8E8">
    <div>&nbsp;
    </div>
        <div style="margin-left: 10px;margin-right:5px"><asp:Label ID="Label1" runat="server" Text="Tên Đăng Nhập" Font-Bold="True" 
                ForeColor="#663300"></asp:Label></div>
        <div align="center">
            <asp:TextBox ID="txtTenDangNhap_Default" runat="server"></asp:TextBox>
        </div>
        <div style="margin-left: 10px;margin-right:5px">
            <asp:Label ID="Label2" runat="server" Text="Mật Khẩu" Font-Bold="True" 
                ForeColor="#663300"></asp:Label>
        </div>
        <div align="center">
            <asp:TextBox ID="txtMatKhau_Default" runat="server" TextMode="Password"></asp:TextBox>
        </div>

        <div> <asp:Label ID="lblerr_logdef" runat="server" Font-Italic="True" 
                ForeColor="Red"></asp:Label>
        </div>

        <div align="center";>
            <asp:ImageButton ID="imgbtnDangNhap_Default" runat="server" 
                ImageUrl="~/images/button_dangnhap.png" 
                onclick="imgbtnDangNhap_Default_Click" />
        </div>
        <div style="margin-left: 10px;margin-right:5px;color:#666666">
            Chưa có tài khoản?<br/><a href="DangKy.aspx" 
                style="text-decoration: underline; color: #663300; font-style: italic; font-weight: bold;">Đăng ký</a> ngay
        </div>
        </div>
		<div class="cleared">
            
        </div>
    </div>
</div>

		<div class="cleared"></div>
    </div>
</div>
    </asp:View>
    <asp:View ID="ViewInfo" runat="server">
    <div class="art-box art-vmenublock">
    <div class="art-box-body art-vmenublock-body">
<div class="art-bar art-vmenublockheader" style="width:100%">
    <h3 class="t">Chào 
        <asp:Label ID="lblTenNguoiDungSB" runat="server" Text="Label" Font-Bold="True" 
            Font-Italic="True" ForeColor="#993300"></asp:Label></h3>
</div><div class="art-box art-vmenublockcontent">
    <div class="art-box-body art-vmenublockcontent-body" style="margin-top:-15px">
    <div style="background-color: #E8E8E8; margin-bottom: 0px;">
    <div style="clear:both; text-decoration: none; margin-top:5px;margin-left:10px">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/user_icon.png" Width="20" Height="20" />
        <span >
        <asp:HyperLink ID="hypThongtin" runat="server" Font-Bold="True" 
            ForeColor="#663300" style="color: #000066">Xem TT Cá Nhân</asp:HyperLink></span>
    </div>
    
    <div style="clear:left; text-decoration: none;margin-top:5px;margin-left:10px"> 
        &nbsp;</div>
    <div style="margin-left:20px">
        &nbsp;&nbsp;<span><asp:HyperLink ID="hypAdmin" runat="server" Font-Bold="True" 
            ForeColor="#000099">HyperLink</asp:HyperLink>
        </span></div>
    <div runat="server" align="center" style="margin-top:5px">
        <asp:ImageButton ID="imgbtnDangXuat" runat="server" 
            ImageUrl="~/images/button_dangxuat.png" onclick="imgbtnDangXuat_Click" />
    </div>
        
        </div>
		<div class="cleared">
            
        </div>
    </div>
</div>

		<div class="cleared"></div>
    </div>
</div>
    </asp:View>
</asp:MultiView>

