<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="TinTuc2.aspx.cs" Inherits="Car" %>

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
            font-size: large;
        }
        .style2
        {
            font-size: medium;
            color: #000066;
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
</div><table width="100%">
<tr>
<td bgcolor="#CCCCCC" class="art-postheadericons" style="color: #000000">
    <strong><span class="style1">Top 5 chiêc xe đáng mua nhất.</span></strong><br />
    Ngày 21/12, nhà phân phối xe hơi Việt Nam giới thiệu 5 chiếc xe được xem là đáng mua nhất. Dưới đây 
    là bài viết tổng hợp của nhóm tác giả Wesit:<br />
    <span class="style2"><strong>1. BMW 5-Series 523i</strong></span><br />
    <asp:Image ID="Image1" runat="server" 
        ImageUrl="~/San_Pham/BMW-Series 5 door.jpg" />
    <br />
    BMW 5-Series là mẫu xe cao cấp cỡ trung của BMW, được sản xuất từ năm 1972, đến nay 5-Series đã trải qua 5 phiên bản cải tiến.<br />
    <strong><span class="style2">2. FORD Escape 2.3 Hybrid</span></strong><br />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/San_Pham/FORD Escape.jpg" />
    <br />
    Ford Escape thuộc dòng Compact SUV 4 cửa ra mắt vào tháng 1 năm 2000. Hợp tác sản xuất với Mazda nên còn có tên gọi Mazda Tribute .<br />
    <span class="style2"><strong>3. HONDA S2000 2.2</strong></span><br />
    <asp:Image ID="Image3" runat="server" ImageUrl="~/San_Pham/HONDA S2000.jpg" 
        style="text-align: center" />
    <br />
    Honda S2000 thuộc dòng xe thể thao 2 cửa, mui gập (Cabriolet Coupe), ra mắt lần đầu vào năm 1999, được nâng cấp lại vào năm 2004. Từ năm 2005 Honda S2000 có thêm động cơ mới 2.2i.<br />
    <strong><span class="style2">4. TOYOTA Corolla 1.4</span></strong><br />
    <asp:Image ID="Image4" runat="server" 
        ImageUrl="~/San_Pham/Toyota-Corolla_2007_2.jpg" />
    <br />
    Toyota Corolla là dòng Compact nổi tiếng và có lịch sử lâu đời của hãng Toyota. 
    Ra đời từ năm 1966 với hơn 30 triệu bản được bán ra trên toàn thế giới. Hiện nay 
    thế hệ mới nhất của Corolla là thế hệ thứ 9 được sản xuất vào năm 2006.<br />
    <strong><span class="style2">5. TOYOTA Auris 1.4 VVT- i</span></strong><br />
    <asp:Image ID="Image5" runat="server" 
        ImageUrl="~/San_Pham/Toyota-Auris_2007_1.jpg" />
    <br />
    Toyota Auris là model mới thuộc phân khúc dòng xe nhỏ chạy trong thành phố 
    (Small city car). Ra mắt lần đầu tiên vào năm 2006, Auris có hình dáng gần giống 
    với những chiếc Toyota Yaris.<br />
    <b>Tổng hợp</b></td>
</tr>
</table>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
    
    <uc5:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
    
</asp:Content>

