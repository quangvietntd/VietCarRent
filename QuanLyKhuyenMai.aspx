<%@ Page Title="" Language="C#" MasterPageFile="~/design/AdminMasterPage.master" AutoEventWireup="true" CodeFile="QuanLyKhuyenMai.aspx.cs" Inherits="QuanLyKhuyenMai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">

    <asp:MultiView ID="mtvQLHX" runat="server">
    <asp:View ID="ViewQLHX" runat="server">
    <div id="Div1" runat ="server" width = "200px">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " style="font-size: small">
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#284E98" />
        <PathSeparatorStyle Font-Bold="True" ForeColor="#507CD1" />
        <RootNodeStyle Font-Bold="True" ForeColor="#507CD1" />
    </asp:SiteMapPath>
</div><table width="100%">
<tr>
<td>
    <div>
    <div style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px" align="center">
            <asp:Image ID="Image3" runat="server" Height="36px" 
                ImageUrl="~/images/khuyenmai_icon.jpg" Width="36px" />
            <asp:Label ID="Label4" runat="server" Text="Quản Lý Khuyến Mãi" Height="30px" 
                ForeColor="#FF6600" Font-Size="20px"></asp:Label>
        </div>
        <table class="style1">
            <tr>
                <td class="style2" align="center" width="50%">
                    &nbsp;Tên xe:</td>
                <td align="left" width="50%">
                    <asp:DropDownList ID="ddlxe" runat="server" DataSourceID="SqlDataSourceXe" 
                        DataTextField="Ten_xe" DataValueField="Ma_Xe">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceXe" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                        SelectCommand="SELECT [Ma_Xe], [Ten_xe] FROM [Xe]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style2" align="center" width="50%">
                    Khuyến mãi (%):</td>
                <td align="left" width="50%">
                    <asp:TextBox ID="txtKhuyenMai" runat="server" Width="145px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" align="center" width="50%">
                    Ngày bắt đầu:</td>
                <td align="left" width="50%">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                        Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="style2" align="center" width="50%">
                    Ngày kết thúc:</td>
                <td align="left" width="50%">
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                        Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="2" width="50%">
                    <asp:Label ID="lblErr" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2" align="center" width="50%">
                    <asp:ImageButton ID="imgbtThem" runat="server" 
                        ImageUrl="~/images/button_them.png" onclick="imgbtThem_Click"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="imgbtnHuy" runat="server" 
                        ImageUrl="~/images/button_huy.png" onclick="imgbtnHuy_Click" />
                </td>
            </tr>
        </table>
    </div>
<div>
    <asp:GridView ID="gdvKM" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="Ma_KM" ForeColor="Black" GridLines="Horizontal" 
        Width="100%" onrowcancelingedit="gdvKM_RowCancelingEdit" 
        onrowdeleting="gdvKM_RowDeleting" onrowediting="gdvKM_RowEditing" 
        onrowupdating="gdvKM_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="Thao Tác">
                <EditItemTemplate>
                    <table class="style1">
                        <tr>
                            <td align="center">
                                <asp:ImageButton ID="imgbtnCapNhat" runat="server" CommandName="Update" 
                                    ImageUrl="~/images/button_update.png" ValidationGroup="Update" />
                            </td>
                            <td align="center">
                                <asp:ImageButton ID="imgbtnHuy" runat="server" CommandName="Cancel" 
                                    ImageUrl="~/images/button_huy.png" />
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td align="center">
                                <asp:ImageButton ID="imgbtnSua" runat="server" CommandName="Edit" 
                                    ImageUrl="~/images/button_sua.png" />
                            </td>
                            <td align="center">
                                <asp:ImageButton ID="imgbtnXoa" runat="server" CommandName="Delete" 
                                    ImageUrl="~/images/button_del.png" 
                                    onclientclick="return confirm('Bạn có chắc chắn muốn xóa?')" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mã Khuyến Mãi">
                <EditItemTemplate>
                    <asp:Label ID="lblMaKM" runat="server" Text='<%# Eval("Ma_KM") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblMaKM" runat="server" Text='<%# Eval("Ma_KM") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Xe">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddlXe" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="Ten_xe" DataValueField="Ma_Xe" 
                        SelectedValue='<%# Eval("Ma_Xe") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                        SelectCommand="SELECT [Ma_Xe], [Ten_xe] FROM [Xe]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblXe" runat="server" Text='<%# Eval("Ten_xe") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Khuyến Mãi">
                <EditItemTemplate>
                    <asp:TextBox ID="txtKhuyenMai" runat="server" Text='<%# Eval("KhuyenMai") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("KhuyenMai") %>'></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text=" %"></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ngày Bắt Đầu">
                <EditItemTemplate>
                    <asp:Calendar ID="cldNgayBD" runat="server" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                        SelectedDate='<%# Eval("Ngay_Bat_Dau") %>' Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblNgayBD" runat="server" Text='<%# Eval("Ngay_Bat_Dau") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ngày Kết Thúc">
                <EditItemTemplate>
                    <asp:Calendar ID="cldNgayKT" runat="server" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                        SelectedDate='<%# Eval("Ngay_Ket_Thuc") %>' Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblNgayKetThuc" runat="server" 
                        Text='<%# Eval("Ngay_Ket_Thuc") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
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
    </div>
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

