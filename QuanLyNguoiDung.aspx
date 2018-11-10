<%@ Page Title="" Language="C#" MasterPageFile="~/design/AdminMasterPage.master" AutoEventWireup="true" CodeFile="QuanLyNguoiDung.aspx.cs" Inherits="QuanLyHangXe" %>

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
</div>
<div id="Div2" runat = "server" style="margin-top:15px">
<div>&nbsp;</div>
        <div align="center">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/register.png" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Quản Lý Người Dùng" Font-Bold="True" 
                Font-Size="20px" ForeColor="#FF6600"></asp:Label>           
        </div>
        <div>&nbsp;</div>
        
<div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px" >
<div>&nbsp;
        </div>
        <div id="Div3"  style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px" runat="server" >
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/login_icon.jpg" 
                Height="36px" Width="36px" /><asp:Label ID="Label3" runat="server" 
                Text="Thông Tin Đăng Nhập" ForeColor="#666666"></asp:Label>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div4" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%;">
                <asp:Label ID="Label1" runat="server" Text="Tên Đăng Nhập" Font-Bold="True"></asp:Label>
            </div>
            <div id="Div5"  runat=server>
                <asp:TextBox ID="txtTenDangNhap" runat="server" Width="200px"></asp:TextBox>
                <asp:Label ID="lblErrTenDangNhap" runat="server" ForeColor="Red" 
                    Text="Tên đăng nhập không được để trống"></asp:Label>
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div6" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label2" runat="server" Text="Mật Khẩu" Font-Bold="True"></asp:Label>
            </div>
            <div id="Div7" runat=server>
                <asp:TextBox ID="txtMatKhau" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:Label ID="lblErrMatKhau" runat="server" ForeColor="Red" 
                    Text="Mật khẩu không được để trống"></asp:Label>
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div8" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label11" runat="server" Text="Quyền Admin" 
                    Font-Bold="True"></asp:Label>
            </div>
            <div id="Div9" runat=server>
                <asp:DropDownList ID="ddlAdmin" runat="server">
                    <asp:ListItem Value="0">Không</asp:ListItem>
                    <asp:ListItem Value="1">Admin</asp:ListItem>
                </asp:DropDownList>
            </div>
             <div>&nbsp;</div>
        </div>
        </div>
        <div>&nbsp;</div>
        <div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px">
        <div>&nbsp;
        </div>
        <div style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px">
            <asp:Image ID="Image3" runat="server" Height="36px" 
                ImageUrl="~/images/user_icon.png" Width="36px" /><asp:Label ID="Label4" runat="server" Text="Thông Tin Người Dùng" Height="30px" ForeColor="#666666"></asp:Label>
        </div>
        <div>&nbsp;</div>
        <div  style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label5" runat="server" Text="Họ Tên Khách Hàng" Font-Bold="True"></asp:Label>
            </div>
            <div >
                <asp:TextBox ID="txtHoTen" runat="server" Width="200px"></asp:TextBox>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label6" runat="server" Text="Giới tính" Font-Bold="True"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="ddlGioiTinh" runat="server" Width="100px">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label7" runat="server" Text="Địa Chỉ" Font-Bold="True"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtDiaChi" runat="server" Width="400px"></asp:TextBox>
            </div>
        </div>
        <div>&nbsp;</div>
        <div  style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label8" runat="server" Text="Số CMND" Font-Bold="True"></asp:Label></div>
            <div>
                <asp:TextBox ID="txtCMND" runat="server" Width="200px"></asp:TextBox></div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label9" runat="server" Text="SĐT" Font-Bold="True"></asp:Label>
                </div>
            <div >
                <asp:TextBox ID="txtSDT" runat="server" Width="200px"></asp:TextBox>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label10" runat="server" Text="Email" Font-Bold="True"></asp:Label></div>
            <div >
                <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox></div>
        </div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div align="center">
            <asp:Label ID="lbErr" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
        </div>
        <div>&nbsp;</div>
        <div id="Div10" align="center" runat="server">
        <!--<p onclick="DangKy_Click">
        <span class="art-button-wrapper">
    		<span class="art-button-l"> </span>
    		<span class="art-button-r"> </span>
    		<a runat="server" class="art-button" onclick="DangKy_Click">Đăng Ký</a>
    	</span>
        </p>-->
            <asp:ImageButton ID="imgbtnThem" runat="server" 
                ImageUrl="~/images/button_them.png" onclick="imgbtnThem_Click" />
        </div>
        <div>&nbsp;</div>
    </div>
    <div>&nbsp;</div>
    </div>
<table width="100%">
<tr>
<td>
    <div ID="Div11" runat="server" 
        style="clear:left; font-size: 14px; font-weight: bold;margin-left:30px">
        <asp:Image ID="Image4" runat="server" Height="36px" 
            ImageUrl="~/images/login_icon.jpg" Width="36px" />
        <asp:Label ID="Label13" runat="server" ForeColor="#666666" 
            Text="Thông Tin Đăng Nhập"></asp:Label>
    </div>
    <br />
    <table class="style1" dir="ltr" frame="border" width="900px">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    onpageindexchanging="GridView1_PageIndexChanging" PageSize="5" 
                    onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                    onrowupdating="GridView1_RowUpdating" ForeColor="Black" 
                    DataKeyNames="Ma_Nguoi_Dung" Width="100%">
                    <Columns>
                        <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/button_huy.png" 
                            EditImageUrl="~/images/button_sua.png" EditText="Sửa" HeaderText="Sửa" 
                            ShowEditButton="True" UpdateImageUrl="~/images/button_update.png" />
                        <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/button_del.png" 
                            DeleteText="Xoá" HeaderText="Xoá" ShowDeleteButton="True">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:CommandField>
                        <asp:TemplateField HeaderText="Mã Người Dùng">
                            <ItemTemplate>
                                <asp:Label ID="lblMaNguoiDung" runat="server" 
                                    Text='<%# Eval("Ma_Nguoi_Dung") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tên Người Dùng">
                            <ItemTemplate>
                                <asp:Label ID="lblTenNguoiDung" runat="server" 
                                    Text='<%# Eval("Ten_Nguoi_Dung") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="Mat_Khau" HeaderText="Mật Khẩu" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Phân Quyền">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlAdmin" runat="server" 
                                    SelectedIndex='<%# Eval("Admin") %>'>
                                    <asp:ListItem Selected="True" Value="0">Không</asp:ListItem>
                                    <asp:ListItem Value="1">Admin</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label15" runat="server" Text='<%# Eval("Phan_Quyen") %>'></asp:Label>
                            </ItemTemplate>
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
            </td>
        </tr>
    </table>

    <div style="clear:left; font-size: 14px; font-weight: bold;margin-left:30px">
        <asp:Image ID="Image5" runat="server" Height="36px" 
            ImageUrl="~/images/user_icon.png" Width="36px" />
        <asp:Label ID="Label14" runat="server" ForeColor="#666666" Height="30px" 
            Text="Thông Tin Người Dùng"></asp:Label>
    </div>

    <br />
    <table class="style1" dir="ltr" frame="border" width="900px">
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    onpageindexchanging="GridView2_PageIndexChanging" PageSize="5" 
                    onrowcancelingedit="GridView2_RowCancelingEdit" 
                    onrowdeleting="GridView2_RowDeleting" onrowediting="GridView2_RowEditing" 
                    onrowupdating="GridView2_RowUpdating" ForeColor="Black" 
                    DataKeyNames="Ma_Nguoi_Dung" Width="100%">
                    <Columns>
                        <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/button_huy.png" 
                            EditImageUrl="~/images/button_sua.png" EditText="Sửa" HeaderText="Sửa" 
                            ShowEditButton="True" UpdateImageUrl="~/images/button_update.png" />
                        <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/button_del.png" 
                            DeleteText="Xoá" HeaderText="Xoá" ShowDeleteButton="True" />
                        <asp:TemplateField HeaderText="Mã Người Dùng">
                            <ItemTemplate>
                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("Ma_Nguoi_Dung") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="Ho_Ten" HeaderText="Họ Tên" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Giới Tính">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlGioiTinh" runat="server" 
                                    SelectedValue='<%# Eval("Gioi_Tinh") %>'>
                                    <asp:ListItem>Nam</asp:ListItem>
                                    <asp:ListItem>Nữ</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblGioiTinh" runat="server" Text='<%# Eval("Gioi_Tinh") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Dia_Chi" HeaderText="Địa Chỉ" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CMND" HeaderText="CMND" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="Email" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SDT" HeaderText="Số ĐT" >
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
            </td>
        </tr>
    </table>

    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
        SelectCommand="SELECT * FROM [Chi_Tiet_DDH]"></asp:SqlDataSource>

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

