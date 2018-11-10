<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Thanh_Cong.aspx.cs" Inherits="Thanh_Cong" %>

<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc1" %>
<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc2" %>
<%@ Register src="DefaultSidebar2.ascx" tagname="DefaultSidebar2" tagprefix="uc3" %>

<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc4" %>

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
<uc4:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<div style="margin-top:50px" >
</div>
<div style="width:100%; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
        <div id="Div1" style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px;height:35px;vertical-align:middle" 
        runat="server" >
        <div style="margin-top:7px">
            <asp:Label ID="lblThongBao" runat="server" 
                Text="" ForeColor="White"></asp:Label></div>
        </div>
        </div>
    <asp:MultiView ID="mtvThanhCong" runat="server">
        <asp:View ID="ViewDangKy" runat="server">
        <div align="center">
        <div>&nbsp;</div>
        <div>
            <asp:Label ID="Label4" runat="server" 
                Text="Đăng ký thành công!" Font-Bold="True" 
                ForeColor="Black"></asp:Label>
        </div>
         <div>&nbsp;</div>
        <div> 
            <asp:HyperLink ID="HyperLink4" runat="server" Text="Bấm vào đây để đăng nhập" 
                NavigateUrl="~/Dang_Nhap.aspx" Font-Bold="True" ForeColor="#0033CC"></asp:HyperLink>
        </div>
        </div>
        </asp:View>
        <asp:View ID="ViewThanhToan" runat="server">
        <div align="center">
        <div>&nbsp;</div>
        <div>
            <asp:Label ID="Label3" runat="server" 
                Text="Thanh toán thành công!" Font-Bold="True" 
                ForeColor="#663300"></asp:Label>
        </div>
         <div>&nbsp;</div>
        <div> 
            <asp:HyperLink ID="HyperLink3" runat="server" Text="Về trang sản phẩm" 
                NavigateUrl="~/Default.aspx" Font-Bold="True" ForeColor="#0033CC"></asp:HyperLink>
        </div>
        </div>
        </asp:View>
        <asp:View ID="ViewCapNhatMK" runat="server">
         <div align="center">
        <div>&nbsp;</div>
        <div>
            <asp:Label ID="Label2" runat="server" 
                Text="Đổi mật khẩu thành công!" Font-Bold="True" 
                ForeColor="#663300"></asp:Label>
        </div>
         <div>&nbsp;</div>
        <div> 
            <asp:HyperLink ID="HyperLink2" runat="server" Text="Về trang quản lý thông tin" 
                NavigateUrl="~/Thong_Tin.aspx" Font-Bold="True" ForeColor="#0033CC"></asp:HyperLink>
        </div>
        </div>
        </asp:View>
        <asp:View ID="ViewCapNhatTT" runat="server">
        <div align="center">
        <div>&nbsp;</div>
        <div>
            <asp:Label ID="Label1" runat="server" 
                Text="Bổ sung/ đổi thông tin cá nhân thành công!" Font-Bold="True" 
                ForeColor="#663300"></asp:Label>
        </div>
         <div>&nbsp;</div>
        <div> 
            <asp:HyperLink ID="HyperLink1" runat="server" Text="Về trang quản lý thông tin" 
                NavigateUrl="~/Thong_Tin.aspx" Font-Bold="True" ForeColor="#0033CC"></asp:HyperLink>
        </div>
        </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
<uc3:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
</asp:Content>

