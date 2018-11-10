<%@ Page Language="C#" MasterPageFile="~/design/MasterPage.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
<%@ Register TagPrefix="art" TagName="DefaultSidebar2" Src="DefaultSidebar2.ascx" %>
          

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Trang Chủ
</asp:Content>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
    <art:DefaultHeader ID="DefaultHeader" runat="server" />
</asp:Content>
<asp:Content ID="MenuContent" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <art:DefaultMenu ID="DefaultMenuContent" runat="server" />
</asp:Content>
<asp:Content ID="SideBar1" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <art:DefaultSidebar1 ID="DefaultSidebar1Content" runat="server" />
</asp:Content>
<asp:Content ID="SideBar2" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
    <art:DefaultSidebar2 ID="DefaultSidebar2Content" runat="server" />
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server"><div id="Div1" runat ="server" style = "width:200px">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " 
        style="font-size: small; font-weight: 700">
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#284E98" />
        <PathSeparatorStyle Font-Bold="True" ForeColor="#507CD1" />
        <RootNodeStyle Font-Bold="True" ForeColor="#507CD1" />
    </asp:SiteMapPath>
</div>
<artisteer:Article ID="Article1" Caption="Giới Thiệu" runat="server"><ContentTemplate>
    
    <!-- Copy to where you want to display the Slideshow -->
<div id="mhgallery">
<style type="text/css"> #mhgallery img { display:none; } </style>
<img src="images_slideshow/5.jpg" title="5" />
<img src="images_slideshow/2011-Ford-Focus-450.jpg" title="2011-Ford-Focus-450" />
<img src="images_slideshow/A8L4.jpg" title="A8L4" />
<img src="images_slideshow/Audi-A8-12.jpg" title="Audi-A8-12" />
<img src="images_slideshow/BMW X- Series.jpg" title="BMW X- Series" />
<img src="images_slideshow/bmw_3Series_model_1_large.jpg" title="bmw_3Series_model_1_large" />
<img src="images_slideshow/BMW-1-Series_Cabrio_2008_01.jpg" title="BMW-1-Series_Cabrio_2008_01" />
<img src="images_slideshow/BMW-1-Series_Coupe_01.jpg" title="BMW-1-Series_Coupe_01" />
<img src="images_slideshow/BMW-Series 3 door.jpg" title="BMW-Series 3 door" />
<img src="images_slideshow/BMW-Series 5 door.jpg" title="BMW-Series 5 door" />
<img src="images_slideshow/BMW-Series Convertible.jpg" title="BMW-Series Convertible" />
<img src="images_slideshow/BMW-Series Coupe.jpg" title="BMW-Series Coupe" />
<img src="images_slideshow/BMW-Series Sedan.jpg" title="BMW-Series Sedan" />
<img src="images_slideshow/BMW-Series Touring.jpg" title="BMW-Series Touring" />
<img src="images_slideshow/car_scoop_bmw_x1_2_560px.jpg" title="car_scoop_bmw_x1_2_560px" />
<img src="images_slideshow/FORD C-Max.jpg" title="FORD C-Max" />
<img src="images_slideshow/FORD Crown Victoria.jpg" title="FORD Crown Victoria" />
<img src="images_slideshow/FORD Edge.jpg" title="FORD Edge" />
<img src="images_slideshow/FORD Escape.jpg" title="FORD Escape" />
<img src="images_slideshow/Ford-Everest-2.jpg" title="Ford-Everest-2" />
<img src="images_slideshow/FordMustang.jpg" title="FordMustang" />
<img src="images_slideshow/Ford-Ranger.jpg" title="Ford-Ranger" />
<img src="images_slideshow/HONDA Accord Crosstour.jpg" title="HONDA Accord Crosstour" />
<img src="images_slideshow/HONDA CR-V.jpg" title="HONDA CR-V" />
<img src="images_slideshow/HONDA Jazz.jpg" title="HONDA Jazz" />
<img src="images_slideshow/HONDA Odysse.jpg" title="HONDA Odysse" />
<img src="images_slideshow/HONDA S2000.jpg" title="HONDA S2000" />
<img src="images_slideshow/honda-accord-1995.jpg" title="honda-accord-1995" />
<img src="images_slideshow/toyota_celica_3.jpg" title="toyota_celica_3" />
<img src="images_slideshow/Toyota_Corolla_wagon_3.jpg" title="Toyota_Corolla_wagon_3" />
<img src="images_slideshow/Toyota-Auris_2007_1.jpg" title="Toyota-Auris_2007_1" />
<img src="images_slideshow/Toyota-Avensis_2007.jpg" title="Toyota-Avensis_2007" />
<img src="images_slideshow/Toyota-Avensis_Wagon_2007_3.jpg" title="Toyota-Avensis_Wagon_2007_3" />
<img src="images_slideshow/Toyota-Camry_2010.jpg" title="Toyota-Camry_2010" />
<img src="images_slideshow/Toyota-Camry_SE_2007_3.jpg" title="Toyota-Camry_SE_2007_3" />
<img src="images_slideshow/Toyota-Corolla_2007_2.jpg" title="Toyota-Corolla_2007_2" />
<img src="images_slideshow/toyota-iq1.jpg" title="toyota-iq1" />
<img src="images_slideshow/Z-Series.jpg" title="Z-Series" />

</div>
<!-- End of Slideshow codes -->

    <div class="cleared"></div>
    <div class="art-content-layout overview-table">
    	<div class="art-content-layout-row">
    		<div class="art-layout-cell">
    		</div><!-- end cell -->
    		<!-- end cell -->
    		<!-- end cell -->
    	</div><!-- end row -->
    </div><!-- end table -->
           </ContentTemplate></artisteer:Article>
        <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" ForeColor="Black" GridLines="Both" RepeatColumns="3" 
            RepeatDirection="Horizontal">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                <img alt="" class="style3" src="images/chothuexe.png" />
            </HeaderTemplate>
            <ItemStyle BackColor="White" />
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td rowspan="3">
                            <asp:Image ID="Image1" runat="server" 
                                ImageUrl='<%# Eval("Hinh_Anh","~/San_Pham/{0}") %>' Width="150px" />
                        </td>
                        <td>
                            <asp:Label ID="LoaiXe" runat="server" 
                                style="font-weight: 700; font-size: medium; color: #800000" 
                                Text='<%# Eval("Ten_Loai_Xe") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="TenXe" runat="server" Text='<%# Eval("Ten_xe") %>' 
                                style="font-weight: 700; color: #000066"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="style2"><strong>Giá thuê:</strong></span>
                            $<asp:Label ID="Gia" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                            /ngày</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl='<%# Eval("Ma_Xe","ChiTiet_Xe.aspx?ID={0}") %>' 
                                Text="Xem chi tiết" ForeColor="#0033CC"></asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server"
                            NavigateUrl='<%# Eval("Ma_Xe","Dang_Ky_Thue_Xe.aspx?Ma_Xe={0}") %>' 
                                ImageUrl="~/images/thuexe.png"></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SeparatorTemplate>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/news.gif" />
            </SeparatorTemplate>
        </asp:DataList>

    </asp:Content>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ScriptIncludePlaceHolder">
    <script type="text/javascript" src="<%= ResolveUrl("~/jquery.js") %>"></script>
  <script type="text/javascript" src="<%= ResolveUrl("~/script.js") %>"></script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            color: #800000;
        }
        </style>
 <script type="text/javascript" src="js_slideshow/jquery.js"></script>
<script type="text/javascript" src="js_slideshow/mhgallery.js"></script>
<script type="text/javascript" src="js_slideshow/initgallery.js"></script>
<link rel="stylesheet" href="js_slideshow/mhgallery.css" type="text/css" />
</asp:Content>

