<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Tim_Kiem.aspx.cs" Inherits="Tim_Kiem" %>

<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc1" %>
<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc2" %>
<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc3" %>
<%@ Register src="DefaultSidebar2.ascx" tagname="DefaultSidebar2" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
    <style type="text/css">
        .style1
        {
            
            background-color:Silver;
            color:Maroon;
            font-weight:bold;
            font-family:Verdana
            
        }
        </style>

<link rel="stylesheet" media="all" type="text/css" href="http://code.jquery.com/ui/1.10.0/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" media="all" type="text/css" href="datetimepicker/jquery-ui-timepicker-addon.css" />


<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.0/jquery-ui.min.js"></script>
<script type="text/javascript" src="datetimepicker/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript" src="datetimepicker/jquery-ui-sliderAccess.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
    <uc2:DefaultHeader ID="DefaultHeader1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <uc3:DefaultMenu ID="DefaultMenu1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <uc1:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<div align="center" style="margin-top:30px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/register.png" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Tìm Kiếm
                " Font-Bold="True" 
                Font-Size="20px" ForeColor="#666666"></asp:Label>           
        </div>
        <div>&nbsp;</div>
<div style="width:100%;margin-top:10px">
<div style="margin-left:20px">
    <div align="center" 
        style="padding: 3px; width: 16%; background-image: url('images/bg-sp.jpg');">
        <asp:Label ID="Label1" runat="server" Text="Chi tiết tìm kiếm" Font-Bold="True" 
            ForeColor="White"></asp:Label></div><br />
    <div style="margin-left:10px;width:85%;font-weight:bold">
        <table class="style1" >
            <tr>
                <td>
                &nbsp;&nbsp;&nbsp;<span style="font-size:18px;font-weight:bold;color:White">Thông tin xe:</span><br /><br />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hãng xe: <asp:DropDownList ID="DDLHangXe" runat="server" 
                        DataSourceID="DDLHangXe_SqlDataSource1" DataTextField="Ten_Loai_Xe" 
                        DataValueField="Ma_Loai_Xe" AppendDataBoundItems="true" >
                        <asp:ListItem Value="">Tất cả</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="DDLHangXe_SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                        SelectCommand="SELECT * FROM [Loai_Xe]"></asp:SqlDataSource>

                   &nbsp;&nbsp;&nbsp;Tên xe: <asp:DropDownList ID="DDLTenXe" runat="server" 
                        DataSourceID="DDLTenXe_SqlDataSource1" DataTextField="Ten_xe" 
                        DataValueField="Ma_Xe" AppendDataBoundItems="true" >
                         <asp:ListItem Value="">Tất cả</asp:ListItem>
                    </asp:DropDownList>
                        <asp:SqlDataSource ID="DDLTenXe_SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                        SelectCommand="SELECT [Ma_Xe], [Ten_xe] FROM [Xe]"></asp:SqlDataSource>

                  &nbsp;&nbsp;&nbsp; Giá thuê ($/ngày): <asp:DropDownList ID="DDLGiaThue" runat="server">
                                    <asp:ListItem Value="">Tất cả</asp:ListItem>
                                    <asp:ListItem>0-50</asp:ListItem>
                                    <asp:ListItem>50-80</asp:ListItem>
                                    <asp:ListItem>80-120</asp:ListItem>
                                    <asp:ListItem>120-150</asp:ListItem>
                                    <asp:ListItem>150-300</asp:ListItem>
                                </asp:DropDownList><br /><br />
                  &nbsp;&nbsp;&nbsp;<span style="font-size:18px;font-weight:bold;color:white">Thời gian xe rảnh:</span><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Từ: <asp:TextBox ID="DateFrom" runat="server" ClientIDMode="Static"></asp:TextBox>   
                  &nbsp;&nbsp;&nbsp; Đến: <asp:TextBox ID="DateTo" runat="server" ClientIDMode="Static"></asp:TextBox>
                   
                </td>
            </tr>
            <tr>
                <td width="20%" align="center">
                <br />
                    <asp:ImageButton ID="imgbtnTimKiem" runat="server" 
                            ImageUrl="~/images/button_find.png" onclick="imgbtnTimKiem_Click"/>
                </td>
            </tr>
        </table>

 <script>
     var startDateTextBox = $('#DateFrom');
     var endDateTextBox = $('#DateTo');

     startDateTextBox.datetimepicker({
         onClose: function (dateText, inst) {
             if (endDateTextBox.val() != '') {
                 var testStartDate = startDateTextBox.datetimepicker('getDate');
                 var testEndDate = endDateTextBox.datetimepicker('getDate');
                 if (testStartDate > testEndDate)
                     endDateTextBox.datetimepicker('setDate', testStartDate);
             }
             else {
                 endDateTextBox.val(dateText);
             }
         },
         onSelect: function (selectedDateTime) {
             endDateTextBox.datetimepicker('option', 'minDate', startDateTextBox.datetimepicker('getDate'));
         }
     });
     endDateTextBox.datetimepicker({
         onClose: function (dateText, inst) {
             if (startDateTextBox.val() != '') {
                 var testStartDate = startDateTextBox.datetimepicker('getDate');
                 var testEndDate = endDateTextBox.datetimepicker('getDate');
                 if (testStartDate > testEndDate)
                     startDateTextBox.datetimepicker('setDate', testEndDate);
             }
             else {
                 startDateTextBox.val(dateText);
             }
         },
         onSelect: function (selectedDateTime) {
             startDateTextBox.datetimepicker('option', 'maxDate', endDateTextBox.datetimepicker('getDate'));
         }
     });
</script>    

    </div>
</div>
<br />
<div style="margin-left:20px">
<div align="center" style="padding: 3px; width: 16%; background-image: url('images/bg-sp.jpg');">
    <asp:Label ID="Label2" runat="server" Text="Kết quả tìm kiếm" Font-Bold="True" 
        ForeColor="White"></asp:Label>
</div>
<br />
<div style="margin-left:10px;width:100%">


    <div>
    <asp:Label ID="lblThongBao" runat="server" Text="" 
            style="font-size: x-large; color: #3399FF"></asp:Label>
    </div>
    <br />
    <div style="color: #6666FF; font-size: large">
    <asp:Label ID="lblKetQuaTimKiem" runat="server" Text=""></asp:Label>
    </div>
    
</div>
</div>
</div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
    <uc4:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
</asp:Content>

