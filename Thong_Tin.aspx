<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Thong_Tin.aspx.cs" Inherits="Thong_Tin" %>

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
                Text="Thông Tin Khách Hàng" Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label>           
        </div>
    <asp:MultiView ID="mtvThongTin" runat="server">
        <asp:View ID="ViewThongTin" runat="server">
        <div runat = "server">      
<div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px" >
<div>&nbsp;
        </div>
        <div style="width:100%; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
        <div style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px" 
        runat="server" >
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/login_icon.jpg" 
                Height="30px" Width="30px" />
            <asp:Label ID="Label3" runat="server" 
                Text="Thông Tin Đăng Nhập" ForeColor="White"></asp:Label>
        </div>
        </div>
        <div>&nbsp;
        </div>
        <div runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%;">
                <asp:Label ID="Label1" runat="server" Text="Tên Đăng Nhập" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div runat=server>
                <asp:Label ID="lblTenNguoiDung" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label2" runat="server" Text="Mật Khẩu" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div style="float:left">
                <asp:Label ID="lblMatKhau" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
            <div style="float:right">
                <asp:HyperLink ID="hypCapNhatMK" runat="server" Text="[cập nhật]" 
                    Font-Bold="True" ForeColor="#0066CC"></asp:HyperLink>
            </div>
        </div>
        <div>&nbsp;
        </div>
        </div>
        <div>&nbsp;</div>
        <div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px">
        <div>&nbsp;
        </div>
        <div style="width:100%; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
        <div style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px;width:70%">
            <asp:Image ID="Image3" runat="server" Height="30px" 
                ImageUrl="~/images/user_icon.png" Width="30px"/>
            <asp:Label ID="Label4" runat="server" Text="Thông Tin Khách Hàng"
                ForeColor="White"></asp:Label>
        </div>
        
        </div>
        <div>&nbsp;</div>
        <div style="float:right;clear:right">
            <asp:HyperLink ID="hypCapNhatTTCN" runat="server" Text="[cập nhật]" 
                ForeColor="#0066CC" Font-Bold="true"></asp:HyperLink>
        </div>
        <div>&nbsp;</div>
        <div  style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label5" runat="server" Text="Họ Tên Khách Hàng" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div >
                <asp:Label ID="lblHoTen" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label6" runat="server" Text="Giới tính" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblGioiTinh" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px;">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label7" runat="server" Text="Địa Chỉ" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblDiaChi" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        <div  style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label8" runat="server" Text="Số CMND" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label></div>
            <div>
                <asp:Label ID="lblCMND" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label9" runat="server" Text="SĐT" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
                </div>
            <div>
                <asp:Label ID="lblSDT" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label10" runat="server" Text="Email" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label></div>
            <div>
                <asp:Label ID="lblEmail" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        
        <div>&nbsp;</div>
       
        <div>&nbsp;</div>
    </div>
    <div>&nbsp;</div>
    </div>
        </asp:View>
        <asp:View ID="ViewError" runat="server">
        <div align="center" style="margin-top:20px">
             <div style="width:100%;margin-top:30px;" align="center">
            <div style="border-style: outset; border-color: #663300; width:70%; background-color: #FFFFFF;" 
                    align=left>
            <ul style="margin:5px">
                <li style="margin:5px; color: #FF0000;"><span style="font-weight: bold">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/blockcontentbullets.png" />Lỗi:</span><span 
                        style="color: #663300; font-weight: bold"> Không tìm thấy thông tin người 
                    dùng hoặc bạn chưa đăng nhập</span></li>
                <li style="margin:5px; color: #663300; font-weight: bold;">Nhấn vào <a href="Default.aspx">đây</a> để đăng nhập</li>
            </ul>
            </div>
            </div>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server"> 
<uc4:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
</asp:Content>

