<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="LS_Mua_Hang.aspx.cs" Inherits="LS_Mua_Hang" %>

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
<div align="center" style="margin-top:30px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/register.png" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Lịch Sử Mua Hàng" Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label>           
        </div>
        <div>&nbsp;</div>
    <asp:MultiView ID="mtvLSMuaHang" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Đơn đặt hàng đã giao" 
                Font-Bold="True" Font-Size="14px" ForeColor="#663300"></asp:Label>
            <div></div>
        <asp:GridView ID="gdvDDH" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" ForeColor="Black" AllowPaging="True" DataKeyNames="Ma_DDH" 
                Width="100%" onrowcommand="gdvDDH_RowCommand">
            <Columns>
                <asp:BoundField DataField="Ma_DDH" HeaderText="Mã Đơn Đặt Hàng">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Ngay_DH" HeaderText="Ngày Đặt Hàng">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Ngay_Giao" HeaderText="Ngày Giao Hàng">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Tong_Tien" HeaderText="Tổng Giá Trị">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:ButtonField ButtonType="Button" CommandName="xemchitiet"
                    HeaderText="Xem Chi Tiết" Text="Chi Tiết">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ButtonField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
       <asp:Label ID="Label2" runat="server" Text="Đơn đặt hàng chưa giao" 
                Font-Bold="True" Font-Size="14px" ForeColor="#663300"></asp:Label>
                <div>&nbsp;</div>
            <asp:GridView ID="gdvChuaGiao" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" ForeColor="Black" AllowPaging="True" PageSize="5" 
                Width="100%" onrowcommand="gdvChuaGiao_RowCommand">
                <Columns>
                    <asp:BoundField DataField="Ma_DDH" HeaderText="Mã Đơn Đặt Hàng">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Ngay_DH" HeaderText="Ngày Đặt Hàng" />
                    <asp:BoundField DataField="Ngay_Giao" HeaderText="Ngày Giao Hàng" />
                    <asp:BoundField DataField="Tong_Tien" HeaderText="Tổng Thành Tiền">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ButtonField ButtonType="Image" CommandName="huy" 
                        ImageUrl="~/images/delete2.png" HeaderText="Huỷ" />
                    <asp:ButtonField ButtonType="Button" CommandName="xemchitiet" 
                        Text="Xem Chi Tiết" HeaderText="Xem Chi Tiết" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </asp:View>
        <asp:View ID="View2" runat="server">
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
    </asp:MultiView>
    
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
    <uc3:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
</asp:Content>

