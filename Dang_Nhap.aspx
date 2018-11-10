<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Dang_Nhap.aspx.cs" Inherits="Dang_Nhap" %>
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
<div style="margin-top:30px">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server">
    </asp:SiteMapPath>
</div>
<div style = "width:100%" align="center">
<div align="center" style="margin-top:30px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/LoginIcon.png" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Đăng Nhập" Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label>           
        </div>
        <div>&nbsp;
        </div>
    <asp:MultiView ID="mtvDangNhap" runat="server">
        <asp:View ID="ViewDangNhap" runat="server">
        <div>&nbsp;
        </div>
        <div id="Div1" runat=server style="margin-left:20%" align="center">
            <div style="float:left;clear:none;width:30%;">
                <asp:Label ID="Label1" runat="server" Text="Tên Đăng Nhập" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div id="Div2" style ="float:left">
                <asp:TextBox ID="txtTenDangNhap" runat="server" Width="150px"></asp:TextBox>
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div style="clear:both">&nbsp;</div>
        <div id="Div3" runat=server  style="margin-left:20%; clear:left" align="center">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label2" runat="server" Text="Mật Khẩu" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div style="float:left">
                <asp:TextBox ID="txtMatKhau" runat="server" Width="150" TextMode="Password"></asp:TextBox>
            </div>
            </div>
            <div>&nbsp;</div>
            <div align="center">
                <asp:Label ID="lblErr" runat="server" 
                    Text="Tên Đăng Nhập hoặc Mật Khẩu không đúng" ForeColor="Red" Visible="False"></asp:Label></div>
            <div>&nbsp;</div>
             <div align="center">
            <asp:ImageButton ID="imgbtn_DangNhap" runat="server" 
                ImageUrl="~/images/button_dangnhap.png" onclick="imgbtn_DangNhap_Click" />
        </div>
        </asp:View>
        <asp:View ID="ViewErrDangNhap" runat="server">
        <div>&nbsp;
        </div>
        <div align="center">
        <div align="center" style="width:70%">
        <ul style="border-style: inset; border-color: #663300; color: #663300; font-weight: bolder;">
        <li style="margin:5px">
        Bạn đã đăng nhập rồi</li>
        <li style="margin:5px">
            <asp:Label ID="Label13" runat="server" Text="Nhấn vào" Height="30px"></asp:Label>
            <asp:ImageButton ID="imbbtnDangXuat_DangNhap" runat="server" 
                ImageUrl="~/images/button_dangxuat.png" onclick="imbbtnDangXuat_DangNhap_Click" 
                /><asp:Label ID="Label14" runat="server" Text="để đăng xuất" Height="30px"></asp:Label>
        </li>
        </ul>
        </div>
        </div>
        </asp:View>
    </asp:MultiView>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
    <uc4:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
</asp:Content>

