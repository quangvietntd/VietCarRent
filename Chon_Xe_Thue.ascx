<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Chon_Xe_Thue.ascx.cs" Inherits="Chon_Xe_Thue" %>
 <style type="text/css">

 .check_dates
{
    line-height:14px;
    margin-bottom:-10px;
    margin-top:0 !important;
}
.check_dates > input
{
    width:20px;
    vertical-align:middle;
}
  
#DateFrom, #DateTo
{
    width:80px;
}
#TimeFrom, #TimeTo
{
    width:60px;
}
.date_calendar
{
    cursor:pointer;
    height:18px;
    left:-2px;
    position:relative;
    vertical-align:baseline;
    top:1px;
    width:18px;
}

 #scheduler_here .dhx_cal_tab
    {
       /* display:none;*/
    }
    .dhx_cal_header div div
    {
        border:none;
    }
    .dhx_cal_data
    {
        background-color:#fff;
    }
    .dhx_cal_event_line {
        background-image:none;
        background-color:#FFDD71;
        font-size:13px;
       
    }
    .dhx_matrix_scell
    {
       
    }
    .dhx_cal_event_line .dhx_event_resize {
        background-image: none;
    }
    
    .dhx_cal_light_wide .dhx_cal_lsection {
        width:130px;
    }
    
a
	{
	
		
		padding				: 0px;
		font-family			: verdana;
		font-size				: 10px;
		font-weight			: bold;
		text-decoration		: none;
	}
a:hover
	{
		text-decoration : underline;
	}
    
     .style1
     {
         width: 10px;
     }
     .style2
     {
     }
     .style3
     {
         width: 111px;
     }
    
     .style4
     {
         width: 228px;
     }
    
 </style>
<table cellpadding="0" cellspacing="0" class="style1" width="100%">
    <tr>
        <td class="style2" colspan="2">
            Chọn xe thuê</td>
    </tr>
    <tr>
        <td class="style2" colspan="2">
            <asp:Label ID="lblThongBao" runat="server" Font-Bold="False" Font-Names="Arial" 
                ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2" colspan="2">
            <asp:RadioButtonList ID="rdbTim" runat="server" AutoPostBack="True">
                <asp:ListItem Selected="True" Value="0">Hiển thị toàn bộ xe</asp:ListItem>
<asp:ListItem Value="1">Tìm theo tên xe và khoảng thời gian</asp:ListItem>
                <asp:ListItem Value="2">Tìm theo loại xe và khoảng thời gian</asp:ListItem>
                <asp:ListItem Value="3">Tìm theo khoảng thời gian</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Tên xe</td>
        <td class="style3">
            Loại</td>
    </tr>
    <tr>
        <td class="style4" width="50%">
            <asp:DropDownList ID="ddlTenXe" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="Ten_xe" DataValueField="Ma_Xe">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                SelectCommand="SELECT [Ma_Xe], [Ten_xe] FROM [Xe]"></asp:SqlDataSource>
        </td>
        <td class="style3" width="50%">
            <asp:DropDownList ID="ddlLoai" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="Ten_Loai_Xe" DataValueField="Ma_Loai_Xe">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                SelectCommand="SELECT * FROM [Loai_Xe]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style4" width="50%">
            Pick Up date</td>
        <td class="style3" width="50%">         

            Drop Off Date</td>
    </tr>
    <tr>
        <td class="style4">           
            <asp:Calendar ID="calPick" runat="server" BackColor="White" 
                BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
        </td>
        <td class="style3">         

            <asp:Calendar ID="calDrop" runat="server" BackColor="White" 
                BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>

    </td>
    </tr>
    <tr>
        <td class="style4">
            Giờ: <asp:DropDownList ID="ddlTimeFrom" runat="server">
                <asp:ListItem>00:00</asp:ListItem>
                <asp:ListItem>01:00</asp:ListItem>
                <asp:ListItem>02:00</asp:ListItem>
                <asp:ListItem>03:00</asp:ListItem>
                <asp:ListItem>04:00</asp:ListItem>
                <asp:ListItem>05:00</asp:ListItem>
                <asp:ListItem>06:00</asp:ListItem>
                <asp:ListItem>07:00</asp:ListItem>
                <asp:ListItem>08:00</asp:ListItem>
                <asp:ListItem>09:00</asp:ListItem>
                <asp:ListItem>10:00</asp:ListItem>
                <asp:ListItem>11:00</asp:ListItem>
                <asp:ListItem>12:00</asp:ListItem>
                <asp:ListItem>13:00</asp:ListItem>
                <asp:ListItem>14:00</asp:ListItem>
                <asp:ListItem>15:00</asp:ListItem>
                <asp:ListItem>16:00</asp:ListItem>
                <asp:ListItem>17:00</asp:ListItem>
                <asp:ListItem>18:00</asp:ListItem>
                <asp:ListItem>19:00</asp:ListItem>
                <asp:ListItem>20:00</asp:ListItem>
                <asp:ListItem>21:00</asp:ListItem>
                <asp:ListItem>22:00</asp:ListItem>
                <asp:ListItem>23:00</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style3">         

            Giờ:
            <asp:DropDownList ID="ddlTimeTo" runat="server">
            <asp:ListItem>00:00</asp:ListItem>
                <asp:ListItem>01:00</asp:ListItem>
                <asp:ListItem>02:00</asp:ListItem>
                <asp:ListItem>03:00</asp:ListItem>
                <asp:ListItem>04:00</asp:ListItem>
                <asp:ListItem>05:00</asp:ListItem>
                <asp:ListItem>06:00</asp:ListItem>
                <asp:ListItem>07:00</asp:ListItem>
                <asp:ListItem>08:00</asp:ListItem>
                <asp:ListItem>09:00</asp:ListItem>
                <asp:ListItem>10:00</asp:ListItem>
                <asp:ListItem>11:00</asp:ListItem>
                <asp:ListItem>12:00</asp:ListItem>
                <asp:ListItem>13:00</asp:ListItem>
                <asp:ListItem>14:00</asp:ListItem>
                <asp:ListItem>15:00</asp:ListItem>
                <asp:ListItem>16:00</asp:ListItem>
                <asp:ListItem>17:00</asp:ListItem>
                <asp:ListItem>18:00</asp:ListItem>
                <asp:ListItem>19:00</asp:ListItem>
                <asp:ListItem>20:00</asp:ListItem>
                <asp:ListItem>21:00</asp:ListItem>
                <asp:ListItem>22:00</asp:ListItem>
                <asp:ListItem>23:00</asp:ListItem>
            </asp:DropDownList>

    </td>
    </tr>
    <tr>
        <td class="style2" colspan="2" width="100%" align="center">
            <asp:Button ID="btnSearch" runat="server" Text="Tìm" 
                onclick="btnSearch_Click" />
        </td>
    </tr>
    <tr>
    <td colspan="2">
    <div style="height:800px; width:100%;">
        <% =this.scheduler.Render() %>
     </div>	
    </td>
    </tr>
</table>

