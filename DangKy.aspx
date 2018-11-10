<%@ Page Title="Đăng Ký" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>
<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>

<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc1" %>
<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc2" %>
<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc3" %>

<%@ Register src="DefaultSidebar2.ascx" tagname="DefaultSidebar2" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
    <uc1:DefaultHeader ID="DefaultHeader1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    
    <uc2:DefaultMenu ID="DefaultMenu1" runat="server" />
    
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
<uc3:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<div align="center" style="margin-top:30px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/register.png" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Đăng Ký" Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label>           
        </div>
    <asp:MultiView ID="mtvRegister" runat="server">
        <asp:View ID="viewformregister" runat="server">
        <div runat = "server">      
<div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px" >
<div>&nbsp;
        </div>
        <div style="width:100%; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
        <div  style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;" 
        runat="server" >
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/login_icon.jpg" 
                Height="30px" Width="30px" />
            <asp:Label ID="Label3" runat="server" 
                Text="Thông Tin Đăng Nhập" ForeColor="White"></asp:Label>
        </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div3" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%;">
                <asp:Label ID="Label1" runat="server" Text="Tên Đăng Nhập" Font-Bold="True"></asp:Label>
            </div>
            <div id="Div4"  runat=server>
                <asp:TextBox ID="txtTenDangNhap" runat="server" Width="200px"></asp:TextBox>
                <asp:Label ID="lblErrTenDangNhap_DangKy" runat="server" 
                    Text="Tên đăng nhập không được để trống" ForeColor="Red" Visible="False"></asp:Label>
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div1" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label2" runat="server" Text="Mật Khẩu" Font-Bold="True"></asp:Label>
            </div>
            <div id="Div5" runat=server>
                <asp:TextBox ID="txtMatKhau" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:Label ID="lblErrMatKhauDK" runat="server" Text="Mật khẩu không được để trống" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div2" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label11" runat="server" Text=" Xác Nhận Mật Khẩu" 
                    Font-Bold="True"></asp:Label>
            </div>
            <div id="Div8" runat=server>
                <asp:TextBox ID="txtXacNhanMK" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:Label ID="lblErrXacNhanMK" runat="server" Text="Mật khẩu xác nhận không đúng" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </div>
             <div>&nbsp;</div>
        </div>
        </div>
        <div>&nbsp;</div>
        <div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px">
        <div>&nbsp;
        </div>
        <div style="width:100%; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
        <div style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px">
            <asp:Image ID="Image3" runat="server" Height="30px" 
                ImageUrl="~/images/user_icon.png" Width="30px" BorderColor="White" />
            <asp:Label ID="Label4" runat="server" Text="Thông Tin Khách Hàng" 
                ForeColor="White"></asp:Label>
        </div>
        </div>
        <div>&nbsp;</div>
        <div  style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label5" runat="server" Text="Họ Tên Khách Hàng" Font-Bold="True"></asp:Label>
            </div>
            <div >
                <asp:TextBox ID="txtHoTen" runat="server" Width="200px"></asp:TextBox>
                <asp:Label ID="lblErrTenKH" runat="server" 
                    Text="Tên khách hàng không được để trống" ForeColor="Red" Visible="False"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label6" runat="server" Text="Giới tính" Font-Bold="True"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="ddlGioiTinh" runat="server" Width="100px">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px;">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label7" runat="server" Text="Địa Chỉ" Font-Bold="True"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtDiaChi" runat="server" Width="400px"></asp:TextBox>
                <asp:Label ID="lblErrDiaChi" runat="server" Text="Địa chỉ không được để trống" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        <div  style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label8" runat="server" Text="Số CMND" Font-Bold="True"></asp:Label></div>
            <div>
                <asp:TextBox ID="txtCMND" runat="server" Width="200px"></asp:TextBox>
                <asp:Label ID="lblErrSoCMND" runat="server" Text="Số CMND không được để trống" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label9" runat="server" Text="SĐT" Font-Bold="True"></asp:Label>
                </div>
            <div>
                <asp:TextBox ID="txtSDT" runat="server" Width="200px"></asp:TextBox>
            
                <asp:Label ID="lblErrSDT" runat="server" 
                    Text="Số điện thoại không được để trống" ForeColor="Red" Visible="False"></asp:Label>
            
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label10" runat="server" Text="Email" Font-Bold="True"></asp:Label></div>
            <div>
                <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                <asp:Label ID="lblErrEmail" runat="server" Text="Email không hợp lệ" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div align="center">
            <asp:Label ID="lbErr" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
        </div>
        <div>&nbsp;</div>
        <div id="Div9" align="center" runat="server">
            <asp:ImageButton ID="imgbtnDangKy" runat="server" 
                ImageUrl="~/images/button_dangky.png"
                onclick="imgbtnDangKy_Click"/>
        <!--<p onclick="DangKy_Click">
        <span class="art-button-wrapper">
    		<span class="art-button-l"> </span>
    		<span class="art-button-r"> </span>
    		<a runat="server" class="art-button" onclick="DangKy_Click">Đăng Ký</a>
    	</span>
        </p>-->
        </div>
        <div>&nbsp;</div>
    </div>
    <div>&nbsp;</div>
    </div>
        </asp:View>
        <asp:View ID="ViewHasLogined" runat="server">
        <div>&nbsp;
        </div>
        <div align="center">
        <div align="center" style="width:70%">
        <ul style="border-style: inset; border-color: #663300; color: #663300; font-weight: bolder;">
        <li style="margin:5px">
        Bạn đã đăng nhập rồi</li>
        <li style="margin:5px">
            <asp:Label ID="Label13" runat="server" Text="Nhấn vào" Height="30px"></asp:Label>
            <asp:ImageButton ID="imbbtnDangXuat_DangKy" runat="server" 
                ImageUrl="~/images/button_dangxuat.png" 
                onclick="imbbtnDangXuat_DangKy_Click"  /><asp:Label ID="Label14" runat="server" Text="để đăng xuất" Height="30px"></asp:Label>
        </li>
        </ul>
        </div>
        </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server"><uc4:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
</asp:Content>

