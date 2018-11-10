<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Chi_Tiet_DDH.aspx.cs" Inherits="Chi_Tiet_DDH" %>

<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc1" %>
<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc2" %>
<%@ Register src="DefaultSidebar2.ascx" tagname="DefaultSidebar2" tagprefix="uc3" %>
<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
    <uc1:DefaultHeader ID="DefaultHeader1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <uc4:DefaultMenu ID="DefaultMenu1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <uc2:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<div align="center" style="margin-top:30px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/register.png" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Chi Tiết Đơn Hàng" Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label>           
        </div>
        <div>&nbsp;</div>
    <asp:MultiView ID="mtvChiTietDDH" runat="server">
        <asp:View ID="ViewCTDDH" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Mã Đơn Hàng: "></asp:Label><asp:Label
                ID="lblMaDDH" runat="server" Text=""></asp:Label>
            <asp:GridView ID="gdvChiTietDDH" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" ForeColor="Black" Width="100%">
                <Columns>
                    <asp:BoundField DataField="Ma_Xe" HeaderText="Mã Sản Phẩm">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Ten_xe" HeaderText="Tên Sản Phẩm">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Gia" HeaderText="Đơn Giá">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="So_Luong" HeaderText="Số Lượng">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Thanh_Tien" HeaderText="Thành Tiền">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView><div>&nbsp;</div><div align="center">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LS_Mua_Hang.aspx">Nhấn vào đây để trở về trang Lịch Sử Mua Hàng</asp:HyperLink>
        </div>
        </asp:View>
        <asp:View ID="ViewErr" runat="server">
        <div>&nbsp;
        </div>
        <div align="center">
        <div align="center" style="width:70%">
        <ul style="border-style: inset; border-color: #663300; color: #663300; font-weight: bolder;">
        <li style="margin:5px">
        Bạn chưa đăng nhập </li>
        <li style="margin:5px">
            <asp:Label ID="Label13" runat="server" Text="Nhấn vào" Height="30px"></asp:Label>
            <asp:ImageButton ID="imbbtnDangXuat_DangNhap" runat="server" 
                ImageUrl="~/images/button_dangnhap.png" onclick="imbbtnDangXuat_DangNhap_Click" 
                /><asp:Label ID="Label14" runat="server" Text="để đăng nhập" Height="30px"></asp:Label>
        </li>
        </ul>
        </div>
        </div>
        </asp:View>
        <asp:View ID="ViewErrDH" runat="server">
        <div>&nbsp;
        </div>
        <div align="center">
        <div align="center" style="width:70%">
        <ul style="border-style: inset; border-color: #663300; color: #663300; font-weight: bolder;">
        <li style="margin:5px">
       Không tìm thấy thông tin đơn hàng </li>
        <li style="margin:5px"><div align="center">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/LS_Mua_Hang.aspx">Nhấn vào đây để trở về trang Lịch Sử Mua Hàng</asp:HyperLink>
        </div>
        </li>
        </ul>
        </div>
        </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
    <uc3:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
</asp:Content>

