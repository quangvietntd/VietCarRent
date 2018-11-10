<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Gio_Hang.aspx.cs" Inherits="Gio_Hang" %>

<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc1" %>

<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc2" %>

<%@ Register src="DefaultSidebar2.ascx" tagname="DefaultSidebar2" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">    
    <uc2:DefaultMenu ID="DefaultMenu1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
<uc1:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<div align="center" style="padding:10px">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/shopping_cart.jpg" 
        Height="36px" Width="36px" />
    <asp:Label
        ID="Label2" runat="server" Text="Giỏ Hàng" Height="25px" Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label>
</div>
    <asp:MultiView ID="mtvGioHang" runat="server">
        <asp:View ID="View1" runat="server">
        <div style ="width:100%">
    <table class="style1">
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="lblErr" runat="server" Font-Bold="True" ForeColor="Red" 
                    Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Width="100%" onrowcommand="GridView1_RowCommand1" DataKeyNames="maxe" BackColor="White" 
                     BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                     ForeColor="Black" GridLines="Both">
        <Columns>
            <asp:BoundField DataField="maxe" HeaderText="Mã Xe" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="tenxe" HeaderText="Tên Xe" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="tenloaixe" HeaderText="Hãng Xe" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="gia" HeaderText="Giá" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Số Lượng">
                <ItemTemplate>
                    <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Eval("soluong") %>' Width="30%"></asp:TextBox>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:BoundField DataField="thanhtien" HeaderText="Thành Tiền" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:ButtonField CommandName="xoa" ImageUrl="~/images/button_del.png" 
                ButtonType="Image" HeaderText="Xoá" >
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
    </asp:GridView></td>
        </tr>
        <tr>
        <td colspan="4"></td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="Label1" runat="server" Text="Tổng Tiền: " Font-Bold="True"></asp:Label><span style="margin-left:20%">
                <asp:Label ID="lblTongTien"
                    runat="server" Text="Label" Font-Bold="True"></asp:Label></span>
            </td>
        </tr>
        <tr>
            <td align="center" style="width:25%">
                <asp:ImageButton ID="imgbtnTiepTuc" runat="server" 
                    ImageUrl="~/images/button_continue.png" onclick="imgbtnTiepTuc_Click" />
            </td>
            <td align="center" style="width:25%">
                <asp:ImageButton ID="imgbtnCapNhat" runat="server" 
                    ImageUrl="~/images/button_update.png" onclick="imgbtnCapNhat_Click" />
            </td>
            <td align="center" style="width:25%">
                <asp:ImageButton ID="imgbtnThanhToan" runat="server" 
                    ImageUrl="~/images/button_pay.png" onclick="imgbtnThanhToan_Click" />
            </td>
            <td align="center" style="width:25%">
                <asp:ImageButton ID="imgbtnXoaGH" runat="server" 
                    ImageUrl="~/images/button_delcart.png" onclick="imgbtnXoaGH_Click" />
            </td>
        </tr>
    </table>
   
    </div>
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

