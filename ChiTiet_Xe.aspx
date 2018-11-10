<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTiet_Xe.aspx.cs" Inherits="Car" %>

<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc1" %>
<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc2" %>
<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc3" %>
<%@ Register src="DefaultVerticalMenu.ascx" tagname="DefaultVerticalMenu" tagprefix="uc4" %>

<%@ Register src="DefaultSidebar2.ascx" tagname="DefaultSidebar2" tagprefix="uc5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 700px;
        }
        .style2
        {
            font-size: medium;
            color: #000066;
        }
        .style3
        {
            width: 244px;
        }
        .style4
        {
            width: 207px;
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
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server"><div runat ="server" width = "200px">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " style="font-size: small">
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#284E98" />
        <PathSeparatorStyle Font-Bold="True" ForeColor="#507CD1" />
        <RootNodeStyle Font-Bold="True" ForeColor="#507CD1" />
    </asp:SiteMapPath>
</div>
<div style="width:100%;margin-top:20px">
    <div align="center" style ="margin-top:30px"><asp:Label ID="lblErr" runat="server" Text=""></asp:Label></div>
    <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black" GridLines="Both" Width="100%" 
            onitemdatabound="DataList1_ItemDataBound" >
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            <table  width="100%">
                <tr>
                    <td class="style4">
                        <asp:Label ID="Label1" runat="server" 
                            style="font-weight: 700; color: #000066; font-size: medium" 
                            Text='<%# Eval("Ten_xe") %>'></asp:Label>
                        <div>&nbsp;</div>
                        <asp:Image ID="Image1" runat="server" 
                            ImageUrl='<%# Eval("Hinh_Anh","~/San_Pham/{0}") %>' Width="150px" />
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Thong_Tin") %>'></asp:Label>
                    </td>
                </tr><tr>
                    <td class="style2" colspan="2">
                        <strong>&nbsp;</strong></td>
                </tr>
                <tr>
                    <td bgcolor="#CCCCCC" colspan="2" 
                        style="padding: 10px; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                        <strong style="font-size: 15px; font-weight: bold; color: #FFFFFF">ĐỘNG CƠ</strong></td>
                </tr>
                <tr>
                    <td class="style4" style="font-weight: bold; color: #663300;">
                        Loại động cơ:</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Loai_Dong_Co") %>' 
                            ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4" style="color: #663300; font-weight: bold">
                        <strong>Dung tích xilanh (Cm3):</strong></td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Dung_Tich") %>' 
                            ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4" style="color: #663300; font-weight: bold">
                        <b>Công suất (hp/rpm):</b></td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Cong_Suat") %>' 
                            ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4" style="color: #663300; font-weight: bold">
                        <b>Moment (Nm/rpm):</b></td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Mo_men") %>' 
                            ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4" style="color: #663300; font-weight: bold">
                        <b>Tốc độ tối đa (Km/h):</b></td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Van_Toc_Toi_Da") %>' 
                            ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="2">
                        <strong>&nbsp;</strong></td>
                </tr>
                <tr>
                    <td bgcolor="#CCCCCC" colspan="2" 
                        
                        style="padding: 10px; font-weight: bold; color: #FFFFFF; font-size: 15px; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                        HỘP SỐ - NHIÊN LIỆU</td>
                </tr>
                <tr>
                    <td style="color: #663300; font-weight: bold">
                        <b>Hộp số:</b></td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("Hop_So") %>' 
                            ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="color: #663300; font-weight: bold">
                        <b>Dung tích nhiên liệu (L):</b></td>
                    <td>
                        <asp:Label ID="Label9" runat="server" 
                            Text='<%# Eval("Dung_Tich_Nhien_Lieu") %>' ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="2">
                        <strong>&nbsp;</strong></td>
                </tr>
                <tr>
                    <td bgcolor="#CCCCCC" colspan="2" 
                        
                        style="padding: 10px; font-weight: bold; font-size: 15px; color: #FFFFFF; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                        KÍCH THƯỚC - TRỌNG LƯỢNG</td>
                </tr>
                <tr>
                    <td class="style4" style="color: #663300; font-weight: bold">
                        <b style="text-align: left">Kích thước tổng thể :</b></td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("KT_Tong_The") %>' 
                            ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4" style="color: #663300; font-weight: bold">
                        <b>Trọng lượng (Kg):</b></td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("Trong_Luong") %>' 
                            ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4" style="color: #663300; font-weight: bold">
                        <b>Chiều dài (mm):</b></td>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("Chieu_Dai") %>' 
                            ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4" style="color: #663300; font-weight: bold">
                        <b style="text-align: left">Chiều rộng (mm):</b></td>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("Chieu_Rong") %>' 
                            ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="2">
                        <strong>&nbsp;</strong></td>
                </tr>
                <tr>
                    <td colspan="2" 
                        
                        style="padding: 10px; font-weight:bold; font-size: 15px; color: #ffffff; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                        THÔNG SỐ KHÁC</td>
                </tr>
                <tr>
                    <td style="color: #663300; font-weight: bold">
                        <b>Màu sắc:</b></td>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("Mau_Sac") %>' 
                            ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4" style="color: #663300; font-weight: bold">
                        <b>Giá thuê (USD):</b></td>
                    <td>
                        <asp:Label ID="Label15" runat="server" Text='<%# "$"+Eval("Gia")+"/ngày" %>' 
                            ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="2">
                        <strong>&nbsp;</strong></td>
                </tr>
                <tr>
                    <td class="style2" colspan="2" align="center">
                        <asp:HyperLink ID="hypMua" runat="server" NavigateUrl='<%#"~/Dang_Ky_Thue_Xe.aspx?Ma_Xe="+Eval("Ma_Xe")%>' Visible = '<%# XLDL.checksoluong(Eval("So_Luong")) %>'>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/button_addcart.png" Visible = '<%# XLDL.checksoluong(Eval("So_Luong")) %>'/></asp:HyperLink>
                            </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>

    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
        SelectCommand="SELECT * FROM [Chi_Tiet_DDH]"></asp:SqlDataSource>

 </div>

</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
    
    <uc5:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
    
</asp:Content>

