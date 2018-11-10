<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Thanh_Toan.aspx.cs" Inherits="Thanh_Toan" %>

<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc1" %>
<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc2" %>
<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc3" %>

<%@ Register src="DefaultSidebar2.ascx" tagname="DefaultSidebar2" tagprefix="uc4" %>

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
    <uc1:DefaultHeader ID="DefaultHeader1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    
    <uc2:DefaultMenu ID="DefaultMenu1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
<uc3:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<div style="width:100%; ">
<div align="center" style="padding: 10px;background-image: none; ">
    <div align="center">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/payment.png" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Thanh Toán" Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label>           
        </div>
</div>
<div>
    <asp:MultiView ID="mtvThanhToan" runat="server">
        <asp:View ID="ViewThanhToan" runat="server">
        <div style="width:100%;margin-top:30px;"">

            <table class="style1" style="vertical-align: middle" bgcolor="#F2F2F2">
                <tr>
                    <td colspan="2" 
                        style="background-image: url('images/bg-sp.jpg'); background-repeat: repeat">
                        <asp:Image ID="Image3" runat="server" Height="30px" 
                            ImageUrl="~/images/user_icon.png" Width="30px" BorderColor="White" />
                        <asp:Label ID="Label13" runat="server" Height="25px" 
                            Text="Thông Tin Khách Hàng" Font-Bold="True" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                <td></td>
                </tr>
                <tr>
                    <td style="width: 30%">
                        <asp:Label ID="Label14" runat="server" Text="Tên Khách Hàng" Font-Bold="True" 
                            ForeColor="#663300"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:TextBox ID="txtTenKhachHang" runat="server" Width="150px"></asp:TextBox>
                        <asp:Label ID="lblErrTenKH" runat="server" ForeColor="Red" 
                            Text="Tên đăng nhập không được để trống" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 30%">
                        <asp:Label ID="Label15" runat="server" Text="Địa Chỉ" Font-Bold="True" 
                            ForeColor="#663300"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDiaChiKH" runat="server" Width="300px"></asp:TextBox>
                        <asp:Label ID="lblErrDiaChiKKH" runat="server" ForeColor="Red" 
                            Text="Địa chỉ không được để trống" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 30%">
                        <asp:Label ID="Label25" runat="server" Text="Số CMND" Font-Bold="True" 
                            ForeColor="#663300"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSoCMNDKH" runat="server" Width="150px"></asp:TextBox>
                        <asp:Label ID="lblErrCMND" runat="server" ForeColor="Red" 
                            Text="Số CMND không được để trống" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 30%">
                        <asp:Label ID="Label1" runat="server" Text="Điện Thoại" Font-Bold="True" 
                            ForeColor="#663300"></asp:Label>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtDienThoaiKH" runat="server" Width="150px"></asp:TextBox>
                        <asp:Label ID="lblErrSDTKH" runat="server" ForeColor="Red" 
                            Text="Số điện thoại không được để trống" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 30%">
                        <asp:Label ID="Label16" runat="server" Text="Email" Font-Bold="True" 
                            ForeColor="#663300"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmailKH" runat="server" Width="150px"></asp:TextBox>
                        <asp:Label ID="lblErrEmailKH" runat="server" ForeColor="Red" 
                            Text="Email không được để trống" Visible="False"></asp:Label>
                        <asp:Label ID="lblErrEmailHopLe" runat="server" ForeColor="Red" 
                            Text="Email không hợp lệ" Visible="False"></asp:Label>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" 
                        style="background-image: url('images/bg-sp.jpg'); background-repeat: repeat">
                        <asp:Image ID="Image4" runat="server" Height="30px" 
                            ImageUrl="~/images/shopping_cart.jpg" Width="30px" />
                        <asp:Label ID="Label17" runat="server" Text="Thông Tin Giỏ Hàng" Height="25px" 
                            Font-Bold="True" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="4" DataKeyNames="maxe" ForeColor="Black" 
                            Width="90%">
                            <AlternatingRowStyle BackColor="White" />
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
                                <asp:BoundField DataField="soluong" HeaderText="Số Lượng" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="thanhtien" HeaderText="Thành Tiền" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 30%">
                        <asp:Label ID="Label18" runat="server" Text="Tổng Thành Tiền" Font-Bold="True" 
                            ForeColor="#663300"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:Label ID="lblTongTien" runat="server" Text="lblTongTien" Font-Bold="True" 
                            ForeColor="#663300"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" 
                        style="background-image: url('images/bg-sp.jpg'); background-repeat: repeat">
                        <asp:Image ID="Image5" runat="server" Height="30px" 
                            ImageUrl="~/images/giao-hang.jpg" Width="30px" />
                        <asp:Label ID="Label20" runat="server" Height="25px" Text="Thông Tin Giao Hàng" 
                            Font-Bold="True" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td </td>
                    <td></td>
                </tr>
                <tr>
                    <td style="width: 30%">
                        <asp:Label ID="Label21" runat="server" Text="Họ Tên Người Nhận" 
                            Font-Bold="True" ForeColor="#663300"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTenNguoiNhan" runat="server" Width="150px"></asp:TextBox>
                        <asp:Label ID="lblErrTenNguoiNhan" runat="server" ForeColor="Red" 
                            Text="Tên người nhận không được để trống" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 30%">
                        <asp:Label ID="Label22" runat="server" Text="Địa Chỉ" Font-Bold="True" 
                            ForeColor="#663300"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDiaChiNguoiNhan" runat="server" Width="300px"></asp:TextBox>
                        <asp:Label ID="lblErrDiaChiNguoiNhan" runat="server" ForeColor="Red" 
                            Text="Địa chỉ người nhận không được để trống" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 30%">
                        <asp:Label ID="Label2" runat="server" Text="Ngày Nhận Hàng" Font-Bold="True" 
                            ForeColor="#663300"></asp:Label>
                        &nbsp;</td>
                    <td>
                        <asp:Calendar ID="calNgayNhan" runat="server" BackColor="White" 
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
                    <td style="width: 30%">
                        <asp:Label ID="Label3" runat="server" Text="Số Điện Thoại" Font-Bold="True" 
                            ForeColor="#663300"></asp:Label>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtSDTNguoiNhan" runat="server" Width="150px"></asp:TextBox>
                        <asp:Label ID="lblErrSDTNguoiNhan" runat="server" ForeColor="Red" 
                            Text="Số điện thoại người nhận không được để trống" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 30%">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:ImageButton ID="imgbtnThanhToan" runat="server" 
                            ImageUrl="~/images/button_pay.png" onclick="Imgbtn_ThanhToan_Click" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Label ID="lblErr" runat="server" Font-Bold="True" ForeColor="Red" 
                            Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>        
        </asp:View>
         <asp:View ID="ViewErr" runat="server">
            <div style="width:100%;margin-top:30px;" align="center">
            <div style="border-style: outset; border-color: #663300; width:70%; background-color: #FFFFFF;" 
                    align=left>
            <ul style="margin:5px">
                <li style="margin:5px; color: #FF0000;"><span style="font-weight: bold">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/blockcontentbullets.png" />Lỗi:</span><span 
                        style="color: #663300; font-weight: bold"> Giỏ hàng của bạn đang trống</span></li>
                <li style="margin:5px; color: #663300; font-weight: bold;">Nhấn vào <a href="Default.aspx">đây</a> để đến trang sản phẩm</li>
            </ul>
            </div>
            </div>
            </asp:View>
    </asp:MultiView>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
    <uc4:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
</asp:Content>

