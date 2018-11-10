<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Cap_Nhat_TT.aspx.cs" Inherits="Cap_Nhat_TT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<div align="center" style="margin-top:30px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/register.png" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Cập Nhật Thông Tin" Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label>           
        </div>
    <asp:MultiView ID="mtvCapNhatTT" runat="server">
        <asp:View ID="ViewCapNhatTT" runat="server">
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
        <div  style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label5" runat="server" Text="Họ Tên Khách Hàng" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div >
                <asp:TextBox ID="txtHoTen" runat="server" Width="150px"></asp:TextBox>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label6" runat="server" Text="Giới tính" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="ddlGioiTinh" runat="server">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px;">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label7" runat="server" Text="Địa Chỉ" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtDiaChi" runat="server" Width="300px"></asp:TextBox>
            </div>
        </div>
        <div>&nbsp;</div>
        <div  style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label8" runat="server" Text="Số CMND" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label></div>
            <div>
                <asp:TextBox ID="txtSoCMND" runat="server" Width="150px"></asp:TextBox>
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label9" runat="server" Text="SĐT" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label>
                </div>
            <div>
            
                <asp:TextBox ID="txtSoDT" runat="server" Width="150px"></asp:TextBox>
            
            </div>
        </div>
        <div>&nbsp;</div>
        <div style="margin-left:80px">
            <div style="width:30%;float:left;clear:none">
                <asp:Label ID="Label10" runat="server" Text="Email" Font-Bold="True" 
                    ForeColor="#663300"></asp:Label></div>
            <div>
                <asp:TextBox ID="txtEmail" runat="server" Width="300px"></asp:TextBox>
            </div>
        </div>
        <div>&nbsp;</div>
        <div align="center">
            <asp:Label ID="lblErrCapNhat" runat="server" ForeColor="Red" Visible="False"></asp:Label></div>
        <div>&nbsp;</div>
        <div align="center">
            <asp:ImageButton ID="imgbtnCapNhat" runat="server" 
                ImageUrl="~/images/button_update.png" onclick="imgbtnCapNhat_Click" />
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
</asp:Content>

