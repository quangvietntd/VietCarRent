<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Xe_Theo_Hang.aspx.cs" Inherits="Car" %>

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
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server"><div runat ="server" width = "200px">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " 
        style="font-weight: 700; font-size: small">
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#284E98" />
        <PathSeparatorStyle Font-Bold="True" ForeColor="#507CD1" />
        <RootNodeStyle Font-Bold="True" ForeColor="#507CD1" />
    </asp:SiteMapPath>
    <div align="center" style="margin-top:30px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/khuyenmai_icon.jpg" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Hãng Xe " Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label><asp:Label ID="lblTenHang" runat="server"
                    Text="Label" Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label>           
        </div>
        <div>&nbsp;
        </div>
</div><table width="100%">
<tr>
<td>
    <asp:DataList ID="DTLXe_Theo_Hang" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black" GridLines="Both">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" 
                            ImageUrl='<%# Eval("Hinh_Anh","~/San_Pham/{0}") %>' Width="200px" />
                    </td>
                    <td valign="top">
                        <asp:Label ID="Label1" runat="server" 
                            style="font-weight: 700; font-size: large;" 
                            Text='<%# Eval("Ten_xe") %>' ForeColor="#663300"></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Thong_Tin") %>' 
                            ForeColor="#0066CC"></asp:Label>
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl='<%# Eval("Ma_Xe","ChiTiet_Xe.aspx?ID={0}") %>' 
                            ForeColor="Red">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/icon-more.jpg" Width="50" Height="50" /></asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    </td>
</tr>
</table>
<div>
<table cellpadding ="0" cellspacing="1">
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
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
    
    <uc5:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
    
</asp:Content>

