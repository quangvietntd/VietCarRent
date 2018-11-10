<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="HuongDanThueXe.aspx.cs" Inherits="HuongDanThueXe" %>


<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc1" %>

<%@ Register src="DefaultSidebar2.ascx" tagname="DefaultSidebar2" tagprefix="uc2" %>

<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc3" %>

<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
Hướng Dẫn</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: medium;
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
<uc4:DefaultHeader ID="DefaultHeader1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">   
    <uc1:DefaultMenu ID="DefaultMenu1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
<uc3:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<div>
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" PathSeparator=" :" 
        style="font-weight: 700">
    </asp:SiteMapPath>
</div>
<div id="Div2" runat = "server" style="margin-top:15px;background-repeat: repeat; background-image: url('images/bg-sp.jpg');">
<div>&nbsp;</div>
        <div align="center">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/register.png" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Hướng Dẫn Thuê Xe" Font-Bold="True" 
                Font-Size="20px" ForeColor="White"></asp:Label>           
        </div>    
        <div>&nbsp;</div>   
<div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px" >
<div>&nbsp;
        </div>
        <div id="Div3"  style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px" runat="server" >
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/login_icon.jpg" 
                Height="36px" Width="36px" /><asp:Label ID="Label3" runat="server" 
                Text="Bước 1: Đăng Nhập Vào Website" ForeColor="#666666"></asp:Label>
        </div>
        <div>&nbsp;</div>
        <div id="Div4" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:100%;">
                <asp:Label ID="Label1" runat="server" Text="1. Hãy khai báo đúng tên và mật khẩu của bạn trước khi thuê xe" ></asp:Label>
            </div>
        </div>
        <div id="Div6" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:100%">
                <asp:Label ID="Label2" runat="server" Text="2. Nếu bạn chưa có tài khoản. Hãy đăng ký ngay " ></asp:Label><a href="DangKy.aspx"><u>tại đây!</u></a>
            </div>
        </div>
        
        <div>&nbsp;</div>
        </div>
        <div>&nbsp;</div>
        <div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px">
        <div>&nbsp;
        </div>
        <div style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px">
            <asp:Image ID="Image3" runat="server" Height="36px" 
                ImageUrl="~/images/user_icon.png" Width="36px" /><asp:Label ID="Label4" runat="server" Text="Bước 2: Chọn Xe Thuê" Height="30px" ForeColor="#666666"></asp:Label>
        </div>
        <div  style="margin-left:80px">
            <div style="width:100%;float:left;clear:none">
                <asp:Label ID="Label5" runat="server" Text="1. Vào hãng xe mình yêu thích và xem chi tiết các loại xe của hãng."></asp:Label>
            </div>
            <div >
            </div>
        </div>
        <div style="margin-left:80px">
            <div style="width:100%;float:left;clear:none">
                <asp:Label ID="Label6" runat="server" Text="2. Click vào nút 'Thuê Xe' nếu bạn muốn thuê loại xe đó."></asp:Label>
            </div>
            <div>
            </div>
        </div>
        <div style="margin-left:80px">
            <div style="width:100%;float:left;clear:none">
                <asp:Label ID="Label7" runat="server" Text="3. Trang Web sẽ chuyển đến trang đăng kí thuê loại xe bạn chọn." ></asp:Label>
            </div>
            <div>
            </div>
        </div>
        <div>&nbsp;</div>
        </div>
        <div>&nbsp;</div>
        <div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px">
        <div>&nbsp;
        </div>
 
<div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px" >
<div>&nbsp;
        </div>
        <div id="Div1"  style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px" runat="server" >
            <asp:Image ID="Image5" runat="server" ImageUrl="~/images/login_icon.jpg" 
                Height="36px" Width="36px" /><asp:Label ID="Label9" runat="server" 
                Text="Bước 3: Đăng kí thuê xe" ForeColor="#666666"></asp:Label>
        </div>
        <div>&nbsp;</div>
        <div id="Div5" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:100%;">
                <asp:Label ID="Label10" runat="server" Text="1. Chọn các mục trong mấu đăng kí thuê xe" ></asp:Label>
            </div>
        </div>
        <div id="Div7" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:100%">
                <asp:Label ID="Label11" runat="server" Text="2. Nhấn nút Đồng ý để đăng kí thuê xe" ></asp:Label>
            </div>
        </div>
        <div id="Div8" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:100%">
                <asp:Label ID="Label8" runat="server" Text="3. Bạn có thể xem lại thông tin thuê xe của mình" ></asp:Label>
            </div>
        </div>
        
        <div>&nbsp;</div>
        <div align="center">
            <asp:Label ID="lbErr" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
        </div>
    </div>
    <div>&nbsp;</div>
    </div> 
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
<uc2:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
</asp:Content>

