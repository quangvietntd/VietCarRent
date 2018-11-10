<%@ Page Title="" Language="C#" MasterPageFile="~/design/AdminMasterPage.master" AutoEventWireup="true" CodeFile="QuanLyDDH.aspx.cs" Inherits="QuanLyHangXe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
    <style type="text/css">
        #Div1
        {
            font-size: large;
        }
    </style>
<link rel="stylesheet" media="all" type="text/css" href="http://code.jquery.com/ui/1.10.0/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" media="all" type="text/css" href="datetimepicker/jquery-ui-timepicker-addon.css" />
 <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.0/jquery-ui.min.js"></script>
<script type="text/javascript" src="datetimepicker/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript" src="datetimepicker/jquery-ui-sliderAccess.js"></script>
 <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.8.12.custom.min.js" type="text/javascript"></script>
   <script type="text/javascript">
       $(function () {
           $(".datepickerStart").datepicker();
           $(".datepickerEnd").datepicker();
       });
    </script>

    <script type="text/javascript">


        var startDateTextBox = $('.datepickerStart');
        var endDateTextBox = $('.datepickerStart');
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

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " style="font-size: small">
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#284E98" />
        <PathSeparatorStyle Font-Bold="True" ForeColor="#507CD1" />
        <RootNodeStyle Font-Bold="True" ForeColor="#507CD1" />
    </asp:SiteMapPath>
<div>&nbsp;</div>
        <div align="center">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/order_icon.jpg" 
                Width="36px" Height="36px" /> 
                <asp:Label ID="Label12" runat="server" 
                Text="Quản Lý Thuê Xe - Trả Xe" Font-Bold="True" 
                Font-Size="20px" ForeColor="#FF6600"></asp:Label>           
        </div>
        <div>&nbsp;</div>
    <asp:MultiView ID="mtvQLHX" runat="server">
    <asp:View ID="ViewQLHX" runat="server">

 <div id="Div1" runat ="server" width = "1000px" align="center">

     <asp:GridView ID="GridView1" runat="server" 
         AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
         BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
         DataKeyNames="id" 
         DataSourceID="SqlDataSource13" GridLines="Vertical" Width="979px" AllowPaging="True" 
         >
         <AlternatingRowStyle BackColor="Gainsboro" />
         <Columns>
         <asp:TemplateField HeaderText="Mã phiếu">

            <ItemTemplate>

                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select"

                        Text="<%# Bind('id') %>" CommandArgument="<%# Bind('id') %>"> </asp:LinkButton>

             </ItemTemplate>

         </asp:TemplateField>
           
             <asp:BoundField DataField="Ma_Xe" HeaderText="Mã xe" InsertVisible="False" 
                 ReadOnly="True" SortExpression="Ma_Xe" />
             <asp:BoundField DataField="Ten_xe" HeaderText="Tên xe" 
                 SortExpression="Ten_xe" >
             <FooterStyle Width="300px" />
             </asp:BoundField>
             <asp:BoundField DataField="start_date" HeaderText="Ngày bắt đầu" 
                 SortExpression="start_date" />
             <asp:BoundField DataField="end_date" HeaderText="Ngày kết thúc" 
                 SortExpression="end_date" />
             <asp:BoundField DataField="Ho_Ten" HeaderText="Khách hàng" 
                 SortExpression="Ho_Ten" />
             <asp:BoundField DataField="Dia_Chi" HeaderText="Địa chỉ" 
                 SortExpression="Dia_Chi" />
             <asp:BoundField DataField="Expr2" HeaderText="Trạng thái thuê" />
         </Columns>
         <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
         <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
         <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
         <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#0000A9" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#000065" />
     </asp:GridView>

     <asp:SqlDataSource ID="SqlDataSource13" runat="server" 
         ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
         SelectCommand="SELECT Xe.Ma_Xe, Xe.Loai_Xe, Xe.Ten_xe, Xe.Thong_Tin, Xe.Hinh_Anh, Xe.Gia, Xe.Mau_Sac, Xe.KT_Tong_The, Xe.Chieu_Dai, Xe.Chieu_Rong, Xe.Trong_Luong, Xe.Loai_Dong_Co, Xe.Dung_Tich, Xe.Cong_Suat, Xe.Mo_men, Xe.Van_Toc_Toi_Da, Xe.Dung_Tich_Nhien_Lieu, Xe.Hop_So, Xe.So_Luong, Thue_Xe.id, Thue_Xe.start_date, Thue_Xe.end_date, Thue_Xe.pick_location, Thue_Xe.drop_location, Thue_Xe.carid, Thue_Xe.userid, Thue_Xe.text, Thue_Xe.tinh_trang, Nguoi_Dung.Ma_Nguoi_Dung, Nguoi_Dung.Ten_Nguoi_Dung, Nguoi_Dung.Mat_Khau, Nguoi_Dung.Admin, Nguoi_Dung.Ho_Ten, Nguoi_Dung.Gioi_Tinh, Nguoi_Dung.Dia_Chi, Nguoi_Dung.CMND, Nguoi_Dung.Email, Nguoi_Dung.SDT, Trang_Thai.id AS Expr1, Trang_Thai.tinh_trang AS Expr2, Van_Phong.id AS Expr3, Van_Phong.Ten_VP FROM Xe INNER JOIN Thue_Xe ON Xe.Ma_Xe = Thue_Xe.carid INNER JOIN Nguoi_Dung ON Thue_Xe.userid = Nguoi_Dung.Ma_Nguoi_Dung INNER JOIN Trang_Thai ON Thue_Xe.tinh_trang = Trang_Thai.id INNER JOIN Van_Phong ON Thue_Xe.pick_location = Van_Phong.id AND Thue_Xe.drop_location = Van_Phong.id">
     </asp:SqlDataSource>

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConflictDetection="CompareAllValues" 
         ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
         DeleteCommand="DELETE FROM [Thue_Xe] WHERE [id] = @original_id AND [start_date] = @original_start_date AND [end_date] = @original_end_date AND [pick_location] = @original_pick_location AND [drop_location] = @original_drop_location AND [carid] = @original_carid AND [userid] = @original_userid AND (([text] = @original_text) OR ([text] IS NULL AND @original_text IS NULL)) AND (([tinh_trang] = @original_tinh_trang) OR ([tinh_trang] IS NULL AND @original_tinh_trang IS NULL))" 
         InsertCommand="INSERT INTO [Thue_Xe] ([start_date], [end_date], [pick_location], [drop_location], [carid], [userid], [text], [tinh_trang]) VALUES (@start_date, @end_date, @pick_location, @drop_location, @carid, @userid, @text, @tinh_trang)" 
         OldValuesParameterFormatString="original_{0}" 
         SelectCommand="SELECT [id], [start_date], [end_date], [pick_location], [drop_location], [carid], [userid], [text], [tinh_trang] FROM [Thue_Xe]" 
         UpdateCommand="UPDATE [Thue_Xe] SET [start_date] = @start_date, [end_date] = @end_date, [pick_location] = @pick_location, [drop_location] = @drop_location, [carid] = @carid, [userid] = @userid, [text] = @text, [tinh_trang] = @tinh_trang WHERE [id] = @original_id AND [start_date] = @original_start_date AND [end_date] = @original_end_date AND [pick_location] = @original_pick_location AND [drop_location] = @original_drop_location AND [carid] = @original_carid AND [userid] = @original_userid AND (([text] = @original_text) OR ([text] IS NULL AND @original_text IS NULL)) AND (([tinh_trang] = @original_tinh_trang) OR ([tinh_trang] IS NULL AND @original_tinh_trang IS NULL))">
         <DeleteParameters>
             <asp:Parameter Name="original_id" Type="Int32" />
             <asp:Parameter Name="original_start_date" Type="DateTime" />
             <asp:Parameter Name="original_end_date" Type="DateTime" />
             <asp:Parameter Name="original_pick_location" Type="Int32" />
             <asp:Parameter Name="original_drop_location" Type="Int32" />
             <asp:Parameter Name="original_carid" Type="Int32" />
             <asp:Parameter Name="original_userid" Type="Int32" />
             <asp:Parameter Name="original_text" Type="String" />
             <asp:Parameter Name="original_tinh_trang" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="start_date" Type="DateTime" />
             <asp:Parameter Name="end_date" Type="DateTime" />
             <asp:Parameter Name="pick_location" Type="Int32" />
             <asp:Parameter Name="drop_location" Type="Int32" />
             <asp:Parameter Name="carid" Type="Int32" />
             <asp:Parameter Name="userid" Type="Int32" />
             <asp:Parameter Name="text" Type="String" />
             <asp:Parameter Name="tinh_trang" Type="Int32" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="start_date" Type="DateTime" />
             <asp:Parameter Name="end_date" Type="DateTime" />
             <asp:Parameter Name="pick_location" Type="Int32" />
             <asp:Parameter Name="drop_location" Type="Int32" />
             <asp:Parameter Name="carid" Type="Int32" />
             <asp:Parameter Name="userid" Type="Int32" />
             <asp:Parameter Name="text" Type="String" />
             <asp:Parameter Name="tinh_trang" Type="Int32" />
             <asp:Parameter Name="original_id" Type="Int32" />
             <asp:Parameter Name="original_start_date" Type="DateTime" />
             <asp:Parameter Name="original_end_date" Type="DateTime" />
             <asp:Parameter Name="original_pick_location" Type="Int32" />
             <asp:Parameter Name="original_drop_location" Type="Int32" />
             <asp:Parameter Name="original_carid" Type="Int32" />
             <asp:Parameter Name="original_userid" Type="Int32" />
             <asp:Parameter Name="original_text" Type="String" />
             <asp:Parameter Name="original_tinh_trang" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>

     <br />
     <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
         AutoGenerateRows="False" BackColor="White" BorderColor="#3366CC" 
         BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" 
         DataSourceID="SqlDataSource1" Height="50px" Width="492px">
         <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
         <Fields>
             <asp:BoundField DataField="id" HeaderText="Mã phiếu thuê" InsertVisible="False" 
                 ReadOnly="True" SortExpression="id" />
             <asp:TemplateField HeaderText="Ngày bắt đầu" SortExpression="start_date">
                 <ItemTemplate>
                     <asp:Label ID="Label6" runat="server" Text='<%# Bind("start_date") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:TextBox ID="txtStartDate" runat="server" Text='<%# Bind("start_date") %>' ClientIDMode="Static" CssClass="datepickerStart"></asp:TextBox>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="txtStartDate" runat="server" Text='<%# Bind("start_date") %>' ClientIDMode="Static" CssClass="datepickerStart"></asp:TextBox>
                 </InsertItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Ngày kết thúc" SortExpression="end_date">
                 <ItemTemplate>
                     <asp:Label ID="Label7" runat="server" Text='<%# Bind("end_date") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:TextBox ID="txtEndDate" runat="server" Text='<%# Bind("end_date") %>' ClientIDMode="Static" CssClass="datepickerEnd"></asp:TextBox>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="txtEndDate" runat="server" Text='<%# Bind("end_date") %>' ClientIDMode="Static" CssClass="datepickerEnd"></asp:TextBox>
                 </InsertItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Địa điểm nhận xe" SortExpression="pick_location">
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("tinh_trang") %>'></asp:Label>
                 </ItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("pick_location") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:DropDownList ID="DropDownList1" runat="server" 
                         DataSourceID="SqlDataSource2" DataTextField="Ten_VP" DataValueField="id" 
                         SelectedValue='<%# Bind("pick_location") %>'>
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                         SelectCommand="SELECT * FROM [Van_Phong]"></asp:SqlDataSource>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("pick_location") %>'></asp:TextBox>
                 </InsertItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Địa điểm trả xe" SortExpression="drop_location">
                 <ItemTemplate>
                     <asp:Label ID="Label3" runat="server" Text='<%# Bind("drop_location") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:DropDownList ID="DropDownList2" runat="server" 
                         DataSourceID="SqlDataSource3" DataTextField="Ten_VP" DataValueField="id" 
                         SelectedValue='<%# Bind("drop_location") %>'>
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                         SelectCommand="SELECT * FROM [Van_Phong]"></asp:SqlDataSource>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("drop_location") %>'></asp:TextBox>
                 </InsertItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Mã xe" SortExpression="carid">
                 <ItemTemplate>
                     <asp:Label ID="Label5" runat="server" Text='<%# Bind("carid") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:DropDownList ID="DropDownList3" runat="server" 
                         DataSourceID="SqlDataSource4" DataTextField="Ten_xe" DataValueField="Ma_Xe" 
                         SelectedValue='<%# Bind("carid") %>'>
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                         SelectCommand="SELECT [Ma_Xe], [Ten_xe] FROM [Xe]"></asp:SqlDataSource>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("carid") %>'></asp:TextBox>
                 </InsertItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Mã khách hàng" SortExpression="userid">
                 <ItemTemplate>
                     <asp:Label ID="Label4" runat="server" Text='<%# Bind("userid") %>'></asp:Label>
                 </ItemTemplate>
                 <EditItemTemplate>
                     <asp:DropDownList ID="DropDownList4" runat="server" 
                         DataSourceID="SqlDataSource5" DataTextField="Ho_Ten" 
                         DataValueField="Ma_Nguoi_Dung" SelectedValue='<%# Bind("userid") %>'>
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                         SelectCommand="SELECT [Ma_Nguoi_Dung], [Ho_Ten] FROM [Nguoi_Dung]">
                     </asp:SqlDataSource>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("userid") %>'></asp:TextBox>
                 </InsertItemTemplate>
             </asp:TemplateField>
             <asp:BoundField DataField="text" HeaderText="Nhãn" 
                 SortExpression="text" />
             <asp:TemplateField HeaderText="Tình trạng thuê" SortExpression="tinh_trang">
                 <EditItemTemplate>
                     <asp:DropDownList ID="DropDownList5" runat="server" 
                         DataSourceID="SqlDataSource6" DataTextField="tinh_trang" DataValueField="id"
                         SelectedValue='<%# Bind("tinh_trang") %>'
                         >
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                         SelectCommand="SELECT * FROM [Trang_Thai]"></asp:SqlDataSource>
                 </EditItemTemplate>
                 <InsertItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("tinh_trang") %>'></asp:TextBox>
                 </InsertItemTemplate>
             </asp:TemplateField>
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                 ButtonType="Button" />
         </Fields>
         <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
         <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
         <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
         <RowStyle BackColor="White" ForeColor="#003399" />
     </asp:DetailsView>

</div>

<table width="100%">
</table>
    </asp:View>
    <asp:View ID="ViewErr" runat="server">
    <div align="center" style="margin-top:30px">
        <asp:Label ID="lblErr_admin" runat="server" Text=""></asp:Label>
    </div>
    </asp:View>
    </asp:MultiView>
    
</asp:Content>

