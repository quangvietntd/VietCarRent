<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Dang_Ky_Thue_Xe.ascx.cs" Inherits="Dang_Ky_Thue_Xe" %>
<link rel="stylesheet" media="all" type="text/css" href="http://code.jquery.com/ui/1.10.0/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" media="all" type="text/css" href="datetimepicker/jquery-ui-timepicker-addon.css" />


<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.0/jquery-ui.min.js"></script>
<script type="text/javascript" src="datetimepicker/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript" src="datetimepicker/jquery-ui-sliderAccess.js"></script>
<style type="text/css">
    .style3
    {
        width: 346px;
        color: #3333CC;
        background-color: #CCCCCC;
    }
    .style5
    {
        font-size: xx-large;
        text-align: center;
        width: 388px;
        font-family: "Times New Roman", Times, serif;
    }
    .style6
    {
        color: #FF0000;
    }
    .style8
    {
        width: 388px;
    }
    .style9
    {
        font-size: large;
        width: 388px;
        font-family: "Times New Roman", Times, serif;
    }
</style>
<div>
<table>
<tr><td valign=top>
<table style="background-color:Silver">
    <tr>
        <td class="style5">
            <strong>ĐĂNG KÝ THUÊ XE</strong></td>
    </tr>
    <tr>
        <td class="style9">
            <strong>Địa điểm nhận xe :</strong></td>
    </tr>
    <tr>
        <td class="style8">
            <asp:DropDownList ID="DDLPickLocation" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="Ten_VP" DataValueField="id" 
                Height="21px" Width="369px" style="font-weight: 700">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                SelectCommand="SELECT * FROM [Van_Phong]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style9">
            <strong>Địa điểm trả xe :</strong></td>
    </tr>
    <tr>
        <td class="style8">
            <asp:DropDownList ID="DDLDropLocation" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="Ten_VP" DataValueField="id" 
                Height="21px" Width="370px" style="font-weight: 700">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style9">
            <strong>Ngày nhận xe :</strong></td>
    </tr>
    <tr>
        <td class="style8">
            <asp:TextBox ID="txtStartDate" runat="server" ClientIDMode="Static" 
                Width="172px" Height="25px" style="font-weight: 700" ></asp:TextBox>
                 (MM/dd/yyyy)
            </td>
    </tr>
    <tr>
        <td class="style9">
            <strong>Ngày trả xe :</strong></td>
    </tr>
    <tr>
        <td class="style8">
            <asp:TextBox ID="txtEndDate" runat="server" ClientIDMode="Static" Width="169px" 
                Height="25px" style="font-weight: 700"></asp:TextBox>
                 (MM/dd/yyyy)
        </td>
    </tr>
    <tr>
        <td class="style8">
            <asp:Button ID="btnThue" runat="server" Text="Đồng ý" onclick="btnThue_Click" 
                Width="186px" Font-Bold="True" Font-Size="Medium" Height="48px" />
        </td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            <asp:Label ID="lblThongBao" runat="server" 
                
                style="font-weight: 700; font-size: medium; font-family: 'Times New Roman', Times, serif;"></asp:Label>
        </td>
    </tr>
</table>
</td>
<td width=400px>
<%
    int maxe = int.Parse(Request.QueryString["Ma_Xe"]);
     %>
    <table style="width: 468px">
        <tr><td align="center"><a href="ChiTiet_Xe.aspx?ID=<% =maxe %>">
              <asp:Image ID="Image1" runat="server" 
                             Width="500px" style="text-align: right" 
                    /></a>
            </td></tr>

        <tr>
            <td class="style3" align="center">
                <asp:Label ID="Label4" runat="server" 
                    
                    style="font-size: x-large; text-align: center; font-weight: 700; font-family: Verdana; color: #FF0000;"></asp:Label>
            </td>
        </tr>

        <tr>
            <td class="style3">
                Xe&nbsp;<span class="style6"> </span>
               <a href="ChiTiet_Xe.aspx?ID=<% =maxe %>"><asp:Label ID="Label1" runat="server" 
                    style="font-weight: 700; " CssClass="style6"></asp:Label></a>
&nbsp;đã được thuê trong các khoảng thời gian sau:</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical" 
                    Width="485px" style="font-weight: 700">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField HeaderText="Ngày bắt đầu (dd/MM/yyyy)" SortExpression="start_date">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("start_date") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("start_date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Ngày kết thúc (dd/MM/yyyy)" SortExpression="end_date">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("end_date") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("end_date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        Xe hiện chưa có ai thuê!
                    </EmptyDataTemplate>
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                    SelectCommand="SELECT [start_date], [end_date], [carid] FROM [Thue_Xe] WHERE ([carid] = @carid) ORDER BY [start_date]">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="carid" QueryStringField="Ma_Xe" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style3" align =center>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/GiaoDienThueXe.aspx" style="font-size: large" 
                    ImageUrl="~/images/gdtuongtac.png">Xem ở chế độ giao diện tương tác trực quan</asp:HyperLink>
                &nbsp;</td>
        </tr>
    </table>

</td>

</tr>
<tr>
<td colspan=2>
    <asp:Label ID="Label3" runat="server"></asp:Label>
    </td>
</tr>
<tr>
<td colspan=2>
    <asp:Label ID="Label2" runat="server"></asp:Label>
    </td>
</tr>
</table>
<script>
    var startDateTextBox = $('#txtStartDate');
    var endDateTextBox = $('#txtEndDate');

startDateTextBox.datetimepicker({
onClose: function(dateText, inst) {
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
onSelect: function (selectedDateTime){
endDateTextBox.datetimepicker('option', 'minDate', startDateTextBox.datetimepicker('getDate') );
}
});
endDateTextBox.datetimepicker({
onClose: function(dateText, inst) {
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
onSelect: function (selectedDateTime){
startDateTextBox.datetimepicker('option', 'maxDate', endDateTextBox.datetimepicker('getDate') );
}
});
</script>
</div>


