<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="LienHe.aspx.cs" Inherits="LienHe" %>

<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc1" %>

<%@ Register src="DefaultSidebar2.ascx" tagname="DefaultSidebar2" tagprefix="uc2" %>

<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc3" %>

<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
Liên Hệ</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-size: medium;
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
<uc4:DefaultHeader ID="DefaultHeader1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">   
    <uc1:DefaultMenu ID="DefaultMenu1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
<uc3:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<div>
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" PathSeparator=" :" 
        style="font-weight: 700">
    </asp:SiteMapPath>
</div>
<div id="Div2" runat = "server" style="margin-top:15px;background-repeat: repeat; background-image: url('images/bg-sp.jpg');">
<div>&nbsp;</div>
        <div align="center">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/register.png" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Thông Tin Liên Hệ" Font-Bold="True" 
                Font-Size="20px" ForeColor="White"></asp:Label>           
        </div>    
        <div>&nbsp;</div>   
<div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px" >
<div>&nbsp;
        </div>
        <div id="Div3"  style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px" runat="server" >
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/login_icon.jpg" 
                Height="36px" Width="36px" /><asp:Label ID="Label3" runat="server" 
                Text="Thông Tin WebSite" ForeColor="#666666"></asp:Label>
        </div>
        <div>&nbsp;</div>
        <div id="Div4" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:100%;">
                <asp:Label ID="Label1" runat="server" Text="Đồ án môn học CSDL Nâng Cao - Lớp SP Tin 4 niên khóa 2009-2013 - Khoa CNTT - ĐH Sư Phạm Tp. HCM" ></asp:Label>
            </div>
        </div>
        <div id="Div6" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:100%">
                <asp:Label ID="Label2" runat="server" Text="Đề tài 5: Xây dựng hệ thống quản lý thuê xe" ></asp:Label>
            </div>
        </div>
        <div id="Div8" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:100%">
                <asp:Label ID="Label11" runat="server" Text="Giảng viên hướng dẫn: ThS. Nguyễn Đặng Kim Khánh"></asp:Label>
            </div>
        </div>
        <div>&nbsp;</div>
        </div>
        <div>&nbsp;</div>
        <div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px">
        <div>&nbsp;
        </div>
        <div style ="clear:left; font-size: 14px; font-weight: bold;margin-left:30px">
            <asp:Image ID="Image3" runat="server" Height="36px" 
                ImageUrl="~/images/user_icon.png" Width="36px" /><asp:Label ID="Label4" runat="server" Text="Thành Viên WebSite" Height="30px" ForeColor="#666666"></asp:Label>
        </div>
        <div  style="margin-left:80px">
          
            <div >
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:40px" class="style2"><strong>Nhóm thực hiện đồ án: NHÓM 11</strong></div>
        <div >
            </div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label6" runat="server" Text="1. Kiều Tân Khoa - K35.103.028"></asp:Label>
            </div>
            <div>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label7" runat="server" Text="2. Nguyễn Thị Tố Mi - K35.103.035" ></asp:Label>
            </div>
            <div>
            </div>
        </div>
       
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:35%;float:left;clear:none">
                <asp:Label ID="Label9" runat="server" Text="3. Nguyễn Thị Hồng Nhung - K35.103.051" ></asp:Label>
                </div>
            <div >
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label8" runat="server" Text="4. Nguyễn Quang Việt - K35.103.077" ></asp:Label>
                </div>
            <div >
            </div>
        </div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div align="center">
            <asp:Label ID="lbErr" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
        </div>
    </div>
    <div>&nbsp;</div>
    </div>
    <div>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
            <div id="Div1" runat = "server" style="margin-top:15px;background-repeat: repeat; background-image: url('images/bg-sp.jpg');">
<div>&nbsp;</div>
        <div align="center">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/register.png" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label13" runat="server" 
                Text="Đóng Góp Ý Kiến" Font-Bold="True" 
                Font-Size="20px" ForeColor="White"></asp:Label>           
        </div>
        <div>&nbsp;</div>
        
<div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px" >
<div>&nbsp;
        </div>
        <div id="Div5"  style ="clear:left; font-size: 13px;margin-left:30px" runat="server" >
            <asp:Image ID="Image5" runat="server" ImageUrl="~/images/login_icon.jpg" 
                Height="36px" Width="36px" /><asp:Label ID="Label14" runat="server" 
                Text="Mọi ý kiến đóng góp để website hoàn thiện hơn xin điền vào form bên dưới hay gửi về email <a href='mailto:quangvietntd@gmail.com'>quanlythuexe@gmail.com</a> " ForeColor="#666666"></asp:Label>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div7" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%;">
                <asp:Label ID="Label15" runat="server" Text="Họ Và Tên" Font-Bold="True"></asp:Label>
            </div>
            <div id="Div9"  runat=server>
                <asp:TextBox ID="txtHoTen" runat="server" Width="200px" 
                    ontextchanged="txtTenDangNhap_TextChanged"></asp:TextBox>
                
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div10" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label16" runat="server" Text="Địa Chỉ Email" Font-Bold="True"></asp:Label>
            </div>
            <div id="Div11" runat=server>
                <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div12" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label17" runat="server" Text="Chủ Đề" 
                    Font-Bold="True"></asp:Label>
            </div>
            <div id="Div13" runat=server>
                <asp:TextBox ID="txtChuDe" runat="server" Width="200px"></asp:TextBox>
            </div>
             <div>&nbsp;</div>
        </div>
        <div id="Div15" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label26" runat="server" Text="Nội Dung" 
                    Font-Bold="True"></asp:Label>
            </div>
            <div id="Div16" runat=server>
                <asp:TextBox ID="txtNoiDung" runat="server" Width="500px" Height="200px" 
                    TextMode="MultiLine"></asp:TextBox>
            </div>
             <div>&nbsp;</div>
        </div>
        <div><asp:Label ID="lblthongbao" runat="server" Text="Label" Visible="False"></asp:Label></div>   
        <div id="Div17" align="center" runat="server">
            <asp:Button ID="btnGui" runat="server"  
                Text="Gửi thư" onclick="btnGui_Click" />
            <asp:Button ID="btnHuy" runat="server" onclick="btnHuy_Click" Text="Hủy" />
        </div>
        </div>
        <div>&nbsp;</div>
    </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
            <div id="Div14" runat = "server" style="margin-top:15px;background-repeat: repeat; background-image: url('images/bg-sp.jpg');">
<div>&nbsp;</div>
        <div align="center">
            <asp:Image ID="Image6" runat="server" ImageUrl="~/images/register.png" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label18" runat="server" 
                Text="Đóng Góp Ý Kiến" Font-Bold="True" 
                Font-Size="20px" ForeColor="White"></asp:Label>           
        </div>
        <div>&nbsp;</div>
        
<div style="background-color: #F2F2F2;margin-left:10px;margin-right:10px" >
<div>&nbsp;
        </div>
        <div id="Div18"  style ="clear:left; font-size: 14px;margin-left:30px; font-weight:bold; color: Red" runat="server" >
            <asp:Image ID="Image7" runat="server" ImageUrl="~/images/login_icon.jpg" 
                Height="36px" Width="36px" /><asp:Label ID="Label19" runat="server" 
                Text="Thư bạn đã được gửi! Xin chân thành cảm ơn bạn!" ForeColor="#666666" 
                style="color: #CC0000"></asp:Label>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div19" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%;">
                <asp:Label ID="Label20" runat="server" Text="Họ Và Tên" Font-Bold="True"></asp:Label>
            </div>
            <div id="Div20"  runat=server>
                <asp:Label ID="lblHoTen" runat="server" Text="Label"></asp:Label>
                
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div21" runat=server  style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label21" runat="server" Text="Địa Chỉ Email" Font-Bold="True"></asp:Label>
            </div>
            <div id="Div22" runat=server>
                <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                
            </div>
        </div>
        <div>&nbsp;
        </div>
        <div id="Div23" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label22" runat="server" Text="Chủ Đề" 
                    Font-Bold="True"></asp:Label>
            </div>
            <div id="Div24" runat=server>
                <asp:Label ID="lblChuDe" runat="server" Text="Label"></asp:Label>
            </div>
             <div>&nbsp;</div>
        </div>
        <div id="Div25" runat=server style="margin-left:80px">
            <div style="float:left;clear:none;width:30%">
                <asp:Label ID="Label23" runat="server" Text="Nội Dung" 
                    Font-Bold="True"></asp:Label>
            </div>
            <div id="Div26" runat=server>
                <asp:Label ID="lblNoiDung" runat="server" Text="Label"></asp:Label>
            </div>
             <div>&nbsp;</div>
        </div>
        <div id="Div27" align="center" runat="server">
            <asp:Button ID="btnQuayLai" runat="server"  
                Text="Quay lại" onclick="btnQuayLai_Click" />
        </div>
        </div>
        <div>&nbsp;</div>
    </div>
            </asp:View>
        </asp:MultiView>
    </div>

</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
<uc2:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
</asp:Content>

