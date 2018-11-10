<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Doi_Mat_Khau.aspx.cs" Inherits="Doi_Mat_Khau" %>

<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc1" %>
<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc2" %>
<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc3" %>
<%@ Register src="DefaultSidebar2.ascx" tagname="DefaultSidebar2" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
    <uc1:DefaultHeader ID="DefaultHeader1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <uc3:DefaultMenu ID="DefaultMenu1" runat="server" />
    
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <uc2:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<div align="center" style="margin-top:30px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/register.png" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Đổi Mật Khẩu" Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label>           
        </div>
    <asp:MultiView ID="mtvDoiMatKhau" runat="server">
        <asp:View ID="View1" runat="server">
        <div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px" >
<div>&nbsp;
        </div>
        <div style="width:100%; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
        <div id="Div1"  style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;" 
        runat="server" >
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/login_icon.jpg" 
                Height="30px" Width="30px" />
            <asp:Label ID="Label3" runat="server" 
                Text="Đổi Mật Khẩu" ForeColor="White"></asp:Label>
        </div>
        </div>
        <div>&nbsp;
        </div>
        <div  runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%;">
                <asp:Label ID="Label1" runat="server" Text="Mật khẩu hiện tại" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div runat=server>
                <asp:TextBox ID="txtMatKhauHienTai" runat="server" Width="200px" 
                    TextMode="Password"></asp:TextBox>
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div  runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label2" runat="server" Text="Mật Khẩu Mới" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div runat=server>
                <asp:TextBox ID="txtMatKhauMoi" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div3" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label11" runat="server" Text=" Xác Nhận Mật Khẩu" 
                    Font-Bold="True" ForeColor="#663300"></asp:Label>
            </div>
            <div id="Div8" runat=server>
                <asp:TextBox ID="txtXacNhanMK" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
            </div>
            </div>
             <div>&nbsp;</div>
             <div>&nbsp;</div>
        <div align="center">
            <asp:Label ID="lblErrCapNhat" runat="server" ForeColor="Red" Visible="False"></asp:Label></div>
        <div>&nbsp;</div>
        <div align="center">
            <asp:ImageButton ID="imgbtnCapNhat" runat="server" 
                ImageUrl="~/images/button_update.png" onclick="imgbtnCapNhat_Click" />
        </div>
        </div>
        </asp:View>
        <asp:View ID="ViewErr" runat="server">
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

