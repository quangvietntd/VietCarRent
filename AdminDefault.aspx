<%@ Page Title="Trang Chủ Quản Trị" Language="C#" MasterPageFile="~/design/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminDefault.aspx.cs" Inherits="AdminDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<div align="center" style="margin-top:30px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/administrator.jpg" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Trang Chủ Người Quản Trị" Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label>           
        </div>
        <div>&nbsp;</div>
    <asp:MultiView ID="mtvAdmin" runat="server">
        <asp:View ID="ViewAdminDefault" runat="server">
        <div style="width:100%; margin:10px">
        <div align="center" style="font-size: large; font-weight: bold; color: #663300;"> Chào Mừng Đến Với Trang Người Quản Trị</div>
        <div>&nbsp;</div>
        <div align="center" style="font-weight: bold; color: #333333; font-size: 14px">Danh Mục Quản Lý</div>
        <div>&nbsp;</div>
        <div><div style="float:left; width:20%" align="center"><a href="QuanLyNguoiDung.aspx" title="Quản Trị Người Dùng">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/usermanage.png" 
                Width="100px" /></a></div>
               <div style="float:left; width:20%" align="center">
                <a title="Quản Trị Xe" href="QuanLyXe.aspx"><asp:Image
                    ID="Image3" runat="server" ImageUrl="~/images/car_manage.png"  Width="100px" /></a></div>
                   <div style="float:left; width:20%" align="center"><a href="QuanLyHangXe.aspx" title="Quản Trị Hãng Xe"><asp:Image
                    ID="Image5" runat="server" ImageUrl="~/images/quanly_hangxe.png"  Width="100px" /></a></div>
                    <div style="float:left; width:20%" align="center"><a title="Quản Trị Thuê Xe" href="QuanLyDDH.aspx" ><asp:Image
                    ID="Image6" runat="server" ImageUrl="~/images/order_icon.jpg"  Width="100px" /></a></div>
                    <div style="float:left; width:20%;clear:right" align="center"><a title="Quản Trị Thuê Xe (giao diện mới)" href="GiaoDienThueXeAdmin.aspx" ><asp:Image
                    ID="Image7" runat="server" ImageUrl="~/images/saleoff.jpg"  Width="100px" Height="100px"/></a></div>
                    </div>
          <div>
            <div style="float:left; width:20%; font-weight: bold; color: #FF0000;" 
                  align="center">Quản Lý Người Dùng</div>
            <div  style="float:left; width:20%; font-weight: bold; color: #FF0000;" 
                  align="center">Quản Lý Xe</div>
            <div  style="float:left; width:20%; font-weight: bold; color: #FF0000;" 
                  align="center">Quản Lý Hãng Xe</div>
            <div  style="float:left; width:20%; font-weight: bold; color: #FF0000;" 
                  align="center">Quản Lý Thuê Xe</div>
            <div  style="float:left; width:20%; font-weight: bold; color: #FF0000;" 
                  align="center">Quản Lý Thuê Xe (giao diện mới</div>

          </div>          
        </div>
        </asp:View> 
        <asp:View ID="ViewErr" runat="server">
         <div align="center" style="margin-top:20px">
             <div style="width:100%;margin-top:30px;" align="center">
            <div style="border-style: outset; border-color: #663300; width:70%; background-color: #FFFFFF;" 
                    align=left>
            <ul style="margin:5px">
                <li style="margin:5px; color: #FF0000;"><span style="font-weight: bold">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/blockcontentbullets.png" />Lỗi:</span><span 
                        style="color: #663300; font-weight: bold"> Bạn không được phép truy cập trang này</span></li>
                <li style="margin:5px; color: #663300; font-weight: bold;">Nhấn vào <a href="Default.aspx">đây</a> để trở về trang chủ</li>
            </ul>
            </div>
            </div>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>

