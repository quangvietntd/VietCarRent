﻿<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Khuyen_Mai.aspx.cs" Inherits="Khuyen_Mai" %>

<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc1" %>

<%@ Register src="DefaultSidebar2.ascx" tagname="DefaultSidebar2" tagprefix="uc2" %>
<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc3" %>

<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
Danh Mục Khuyến Mãi
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
    <uc3:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<div style="margin-top:30px">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server">
    </asp:SiteMapPath>
</div>
<div style = "width:100%" align="center">
<div align="center" style="margin-top:30px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/khuyenmai_icon.jpg" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Danh Mục Khuyến Mãi" Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label>           
        </div>
        <div>&nbsp;
        </div>
    <asp:DataList ID="dtlDanhMucKM" runat="server" RepeatColumns="4" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" ForeColor="Black">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>                    
                    <table class="style1" width="100%">
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Ten_xe") %>' 
                                Font-Bold="True" ForeColor="#663300"></asp:Label>
                        </td>
                    </tr>
                        <tr>
                            <td align="center">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Ma_Xe","ChiTiet_Xe.aspx?ID={0}") %>'>
                                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Hinh_Anh","~/San_Pham/{0}") %>' Width="200px"/> </asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="vertical-align: middle">
                                <div align="center" 
                                    style="background-position: center center; height:36px; background-image: url('images/bg-price.png'); background-repeat: no-repeat;">
                                   <div style="height: 10px"> &nbsp;</div><span style="margin-left:20px"><asp:Label ID="Label1" runat="server" Text='<%# Eval("Gia_Khuyen_Mai","{0:#,##0} VNĐ") %>' 
                                        ForeColor="White" Font-Bold="True" ></asp:Label></span>
                                    </div>
                            </td>
                        </tr>
                        <tr align="center">
                            <td class="style2" align="center">
                                <asp:Label ID="Label4" runat="server" Text="Giá gốc: " ForeColor="#663300"></asp:Label>
                                <asp:Label ID="Label2" runat="server" 
                                    Text='<%# Eval("Gia","{0:#,##0} VNĐ") %>' Font-Strikeout="True"
                                    ForeColor="#3333FF" ></asp:Label>
                                <asp:Label ID="Label6" runat="server" Text="- "></asp:Label><asp:Label ID="Label5" runat="server" Text= '<%# Eval("KhuyenMai") %>' Font-Bold="True" ForeColor="#663300"></asp:Label>
                            <asp:Label ID="Label7" runat="server" Text=" %"></asp:Label></td>
                        </tr>
                        <tr>
                        <td align ="center">
                            
                                
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/hethang.png"  Visible = '<%# !XLDL.checksoluong(Eval("So_Luong")) %>'/>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/Gio_Hang.aspx?Ma_Xe="+Eval("Ma_Xe")%>'  Visible = '<%# XLDL.checksoluong(Eval("So_Luong")) %>'><asp:Image ID="Image2" runat="server" ImageUrl="~/images/button_addcart.png"  Visible = '<%# XLDL.checksoluong(Eval("So_Luong")) %>'/></asp:HyperLink>
                        </td>
                        </tr>
                        <tr>
                        <td>&nbsp;
                        </td>
                        </tr>
                        <tr>
                        <td>&nbsp;
                        </td>
                        </tr>
                    </table>
                    
                </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <div>&nbsp;
    </div> 
    <div><table cellpadding ="0" cellspacing="1">
                <tr>
                    <td>&nbsp;
                        <asp:ImageButton ID="ibtnTrangDau" runat="server" Height="19px" 
                                    ImageUrl="~/images/icon/icon-first.gif" onclick="ibtnTrangDau_Click"/>
                    </td>
                     <td class="style11">
                                <asp:ImageButton ID="ibtnTruoc" runat="server" Height="19px" 
                                    ImageUrl="~/Images/icon/icon-prev.gif" onclick="ibtnTruoc_Click" 
                                    Width="18px" />
                            </td>
                            <td class="style9">
                                <asp:TextBox ID="txtPage" runat="server" Enabled="False" Height="15px" 
                                    Width="47px"></asp:TextBox>
                            </td>
                            <td class="style7">
                                <asp:ImageButton ID="ibtnSau" runat="server" Height="19px" 
                                    ImageUrl="~/Images/icon/icon-next.gif" onclick="ibtnSau_Click" />
                            </td>
                            <td>
                    <asp:ImageButton ID="ibtnTrangCuoi" runat="server" Height="19px" 
                        ImageUrl="~/Images/icon/icon-last.gif" onclick="ibtnTrangCuoi_Click" />
                                
                    </td>
                </tr>
            </table>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
    <uc2:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
</asp:Content>

