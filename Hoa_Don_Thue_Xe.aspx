<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Hoa_Don_Thue_Xe.aspx.cs" Inherits="Hoa_Don_Thue_Xe" %>
<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>

<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc1" %>
<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc2" %>
<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc3" %>

<%@ Register src="DefaultSidebar2.ascx" tagname="DefaultSidebar2" tagprefix="uc4" %>

<%@ Register src="Dang_Ky_Thue_Xe.ascx" tagname="Dang_Ky_Thue_Xe" tagprefix="uc8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
<uc1:defaultheader ID="DefaultHeader1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
<uc2:defaultmenu ID="DefaultMenu1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
<uc3:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<div align="center" style="margin-top:30px">
Quý khách đã đăng ký thuê xe thành công! Cảm ơn đã sử dụng dịch vụ của chúng tôi. Nhấn vào <a href="default.aspx" style="color:Red">đây</a> để tiếp tục
</div>
<div align="center" style="margin-top:30px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/register.png" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Thông Tin Phiếu Thuê Xe" Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label>           
        </div>
    <asp:MultiView ID="mtvThongTin" runat="server">
        <asp:View ID="ViewThongTin" runat="server">
        <div id="Div1" runat = "server">      
<div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px" >
<div>&nbsp;
        </div>
        <div style="width:100%; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
        <div id="Div2" style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px" 
        runat="server" >
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/login_icon.jpg" 
                Height="30px" Width="30px" />
            <asp:Label ID="Label3" runat="server" 
                Text="Chi tiết đặt thuê" ForeColor="White"></asp:Label>
        </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div3" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%;">
                <asp:Label ID="Label1" runat="server" Text="Mã phiếu thuê" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div id="Div4" runat=server>
                <asp:Label ID="lblMaPhieuThue" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div11" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%;">
                <asp:Label ID="Label15" runat="server" Text="Mã xe" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div id="Div12" runat=server>
                <asp:Label ID="lblMaXe" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div7" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%;">
                <asp:Label ID="Label14" runat="server" Text="Tên Xe" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div id="Div8" runat=server>
                <asp:Label ID="lblTenXe" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div5" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label2" runat="server" Text="Địa điểm nhận xe" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div runat=server>
                <asp:Label ID="lblDiaDiemNhanXe" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
            <div style="float:right">
            </div>
        </div>
        <div>&nbsp;</div>
         <div id="Div6" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label11" runat="server" Text="Địa điểm trả xe" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div >
                <asp:Label ID="lblDiaDiemTraXe" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
            <div style="float:right">
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div9" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label13" runat="server" Text="Thời gian nhận xe" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblStartDate" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
            <div style="float:right">
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div10" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label16" runat="server" Text="Thời gian trả xe" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div>
                 <asp:Label ID="lblEndDate" runat="server" Text="Label" ForeColor="#663300"></asp:Label> 
        </div>
            <div style="float:right">
            </div>
        </div>
        <div>&nbsp;
        </div>
         <div id="Div13" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label17" runat="server" Text="Tổng thời gian thuê" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div>
                 <asp:Label ID="lblGioThue" runat="server" Text="Label" ForeColor="#663300"></asp:Label> 
        </div>
            <div style="float:right">
            </div>
        </div>
        <div>&nbsp;
        </div>
         <div id="Div15" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label18" runat="server" Text="Đơn giá" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div>
                 <asp:Label ID="lblDonGia" runat="server" Text="Label" ForeColor="#663300"></asp:Label> 
        </div>
            <div style="float:right">
            </div>
        </div>
        <div>&nbsp;
        </div>
         <div id="Div14" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label19" runat="server" Text="Thành tiền" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div>
                 <asp:Label ID="lblThanhTien" runat="server" Text="Label" ForeColor="#663300"></asp:Label> 
        </div>
            <div style="float:right">
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div>
            <asp:Label ID="lblerr" runat="server" 
                style="font-size: x-large; text-align: center; color: #FF0000; font-weight: 700" 
                Text="Label" Visible="false"></asp:Label>
    </div>
        </div>
        <div>&nbsp;</div>
        <div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px">
        <div>&nbsp;
        </div>
        <div style="width:100%; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
        <div style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px;width:70%">
            <asp:Image ID="Image3" runat="server" Height="30px" 
                ImageUrl="~/images/user_icon.png" Width="30px"/>
            <asp:Label ID="Label4" runat="server" Text="Thông Tin Khách Hàng"
                ForeColor="White"></asp:Label>
        </div>
        
        </div>
        <div>&nbsp;</div>
        <div style="float:right;clear:right">
        </div>
        <div>&nbsp;</div>
        <div  style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label5" runat="server" Text="Họ Tên Khách Hàng" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div >
                <asp:Label ID="lblHoTen" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label6" runat="server" Text="Giới tính" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblGioiTinh" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px;">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label7" runat="server" Text="Địa Chỉ" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblDiaChi" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        <div  style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label8" runat="server" Text="Số CMND" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label></div>
            <div>
                <asp:Label ID="lblCMND" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label9" runat="server" Text="SĐT" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
                </div>
            <div>
                <asp:Label ID="lblSDT" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label10" runat="server" Text="Email" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label></div>
            <div>
                <asp:Label ID="lblEmail" runat="server" Text="Label" ForeColor="#663300"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        
        <div>&nbsp;</div>
       
        <div>&nbsp;</div>
    </div>
    <div>&nbsp;</div>
    </div>
        </asp:View>
        <asp:View ID="ViewError" runat="server">
        <div align="center" style="margin-top:20px">
             <div style="width:100%;margin-top:30px;" align="center">
            <div style="border-style: outset; border-color: #663300; width:70%; background-color: #FFFFFF;" 
                    align=left>
            <ul style="margin:5px">
                <li style="margin:5px; color: #FF0000;"><span style="font-weight: bold">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/blockcontentbullets.png" />Lỗi:</span><span 
                        style="color: #663300; font-weight: bold"> Không tìm thấy thông tin người 
                    dùng hoặc bạn chưa đăng nhập</span></li>
                <li style="margin:5px; color: #663300; font-weight: bold;">Nhấn vào <a href="Default.aspx">đây</a> để đăng nhập</li>
            </ul>
            </div>
            </div>
            </div>
        </asp:View>
    </asp:MultiView>
    </asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
<uc4:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
</asp:Content>

