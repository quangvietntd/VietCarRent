<%@ Page Title="" Language="C#" MasterPageFile="~/design/AdminMasterPage.master" AutoEventWireup="true" CodeFile="QuanLyTrangThai.aspx.cs" Inherits="QuanLyTrangThai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " style="font-size: small">
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#284E98" />
        <PathSeparatorStyle Font-Bold="True" ForeColor="#507CD1" />
        <RootNodeStyle Font-Bold="True" ForeColor="#507CD1" />
    </asp:SiteMapPath>
    <div>&nbsp;</div>
    <div style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px" align="center">
            <asp:Image ID="Image3" runat="server" Height="36px" 
                ImageUrl="~/images/quanly_hangxe.png" Width="36px" />
            <asp:Label ID="Label4" runat="server" Text="Quản Lý Trạng Thái" Height="30px" 
                ForeColor="#FF6600" Font-Size="20px"></asp:Label>
        </div><div>&nbsp;</div>   
    <asp:MultiView ID="mtvQLTT" runat="server">
    <asp:View ID="ViewQLTT" runat="server">
    <div id="Div1" runat ="server" width = "200px">
  
</div><table width="100%">
<tr>
<td>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        onpageindexchanging="GridView1_PageIndexChanging" PageSize="5" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        onrowupdating="GridView1_RowUpdating" ForeColor="Black" Width="100%">
        <Columns>
            <asp:CommandField ShowEditButton="True" ButtonType="Image" HeaderText="Sửa" 
                CancelImageUrl="~/images/button_huy.png" EditImageUrl="~/images/button_sua.png" 
                UpdateImageUrl="~/images/button_update.png" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:CommandField>
            <asp:CommandField ShowDeleteButton="True" ButtonType="Image" HeaderText="Xoá" 
                CancelImageUrl="~/images/button_huy.png" 
                DeleteImageUrl="~/images/button_del.png" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:CommandField>
            <asp:BoundField DataField="id" HeaderText="Mã Trạng Thái">
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="tinh_trang" HeaderText="Trạng thái">
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
    </asp:GridView>

    <asp:Label ID="lblTen" runat="server" Height="27px" Text=" Trạng Thái"></asp:Label>
&nbsp;<asp:TextBox ID="txtTenTrangThai" runat="server"></asp:TextBox>
&nbsp;
   <asp:ImageButton
        ID="btnThem" runat="server" onclick="btnThem_Click1" 
        ImageUrl="~/images/button_them.png"  />

    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
        SelectCommand="SELECT * FROM [Trang_Thai]"></asp:SqlDataSource>

    </td>
</tr>
</table>
    </asp:View>
    <asp:View ID="ViewErr" runat="server">
    <div align=center style="margin-top:30px">
        <asp:Label ID="lblErr_admin" runat="server" Text=""></asp:Label>
    </div>
    </asp:View>
    </asp:MultiView>
    
</asp:Content>

