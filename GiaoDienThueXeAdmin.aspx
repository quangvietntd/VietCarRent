<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GiaoDienThueXeAdmin.aspx.cs" Inherits="GiaoDienThueXe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

<link rel="stylesheet" media="all" type="text/css" href="http://code.jquery.com/ui/1.10.0/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" media="all" type="text/css" href="datetimepicker/jquery-ui-timepicker-addon.css" />


<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.0/jquery-ui.min.js"></script>
<script type="text/javascript" src="datetimepicker/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript" src="datetimepicker/jquery-ui-sliderAccess.js"></script>
<script type="text/javascript" src="Scripts/scripts.js"></script>
 <style type="text/css">
 
body
{
    background: #5c87b2;
    background-image: url("Content/background_car_rent.png");
    font-size: 75%;
    font-family:Arial,sans-serif;
    margin: 0;
    padding: 0;
    color: #696969;
}
.hd_line
{
    height:1px;
    background-image: url("Content/line.png");
    width:100%;
    margin:10px 0 20px;
}
.rent_title
{
   color: #d4f4fc;
   font-size:18px;
}
.rent_title2
{
   color: #d4f4fc;
   font-size:30px;
}
.rent_title3
{
   color: #d4f4fc;
   font-size:20px;
   font-style:italic
}
.rent_small
{
   color: #d4e6fc;
   font-size:10px;
}

.search_form  
{
    width:173px;
    height:400px;
    padding:15px 20px;
    background-repeat:repeat-x;
    background-image: url("Content/bg_form.png");
}


.message
{
    text-align:right;
    color:White;
    font-size:18px;
    height:24px;
    padding:5px;
}
.car_brand, .car_price
{
    border-left:none !important;
    overflow:hidden;
}
.car_price
{
    color:Gray;
    width:100%;
    font-size:10px;
    margin-top:2px;
    text-align:center;
}
.car_brand
{
    white-space:nowrap;
    margin-top:-4px;
    color:Black;
    font-weight:bold;
}



.search_form input
{
    height:18px;
}
.search_form select
{
    height:19px;
   vertical-align:top;
}
.search_form option
{
    vertical-align:middle;
}
.search_form select, .search_form    input
{
    font-size:11px;
    width:170px;
    padding: 0;
    margin: 5px 0;
}

#submit
{
    width: 170px;
    height: 23px;
    border: 0 none;
    background-color: #EFEFEF;
    line-height: 23px;
    margin-top: 3px;
    font-weight:bold;
}
#btnTimKiem
{
    width: 170px;
    height: 23px;
    border: 0 none;
    background-color: #EFEFEF;
    line-height: 23px;
    margin-top: 3px;
    font-weight:bold;
}
.search_form  
{
       border:none;
      
       color:#eee;
}

.search_form  .controls > div
{
    margin-top:9px;
}

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
    width:170px;
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

.footer 
{
    background:url('Content/bg_form.png');
        height: 152px;
        }
        .push {
            height: 182px;
        }
        
        .foot_hr
        {
            height:12px;
            background-image:url('Content/line.png'); 
        }
        .footer_content
        {
            height:140px;
          
        }
        .footer_content > div
        {
            width:1020px;
            margin:0 auto;
            padding-top:25px
        }
        .footer_content a:hover {
            color: white;
            text-decoration: none;
        }
        .footer_content a {
            margin: 0;
            padding: 0;
            font-size: 12px;
            color: white;
            text-decoration: underline;
        }
         #footcontact a, #footprivacy a, #footterms a {
	        font-size: 12px;
	        color: #fff;
	        text-decoration: none;
        }
         
        #copyright {
	         font-size: 11px;
	         color: #d4d4d4;
	         line-height: 185%;
	         float: right;
        }
/* PRIMARY LAYOUT ELEMENTS   
----------------------------------------------------------*/

/* you can specify a greater or lesser percentage for the 
page width. Or, you can specify an exact pixel width. */
.page
{
    width: 90%;
    margin-left: auto;
    margin-right: auto;
}


#main
{
    padding: 30px 30px 15px 30px;
    _height: 1px; /* only IE6 applies CSS properties starting with an underscore */
}


.clear
{
    clear: both;
}


.page
{
    width:1200px;
}
      
#main
{
    padding:0;
}
.minical_container
{
    position:absolute;
    width:200px;
}
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
       /* background-color:#FFDD71;*/
       background-color:red;
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
         color: #d4f4fc;
         font-size: 30px;
         font-family: "Bernard MT Condensed";
     }
    
     .style2
     {
         color: #d4f4fc;
         font-size: xx-large;
         font-family: "Bernard MT Condensed";
     }
     .style3
     {
         font-family: "Times New Roman", Times, serif;
     }
    
 </style>
  


</head>
<body>
    <form id="form1" runat="server">
    <div style="height:60px;background-image:url('Content/bg_form.png');vertical-align:text-bottom">
    <span class="style1">&nbsp; </span>
    <span class="style2">VietCarRent</span><span class="rent_title3">&nbsp;&nbsp;&nbsp;<span 
            class="style3">  Dịch vụ cho thuê xe chuyên nghiệp</span></span><br /> 
            <div style="text-align:right;color:White">Bạn đang ở giao diện quản lý thuê xe&nbsp; 
                (hỗ trợ chức năng insert, update, delete)</div>
    </div>
    <div style="height:20px">&nbsp</div>
    <div style="height:500px">
        <div style="float:left;width:35px;height:100%;"></div>
        <div style="float:left; width:230px;height:100%;">
            <div class="search_form">
                
                      <!--  <div class="form_head">
                            <span class="rent_title">VietCarRent</span><br />
                            <span class="rent_small">Dịch vụ cho thuê xe chuyên nghiệp</span><br />
                            <div class="hd_line"></div>
                        </div> -->
                        
                        <div class="controls">
                            <div>
                                <asp:Label ID="Label1" runat="server" Text="Hãng Xe:"></asp:Label><br />
                                <asp:DropDownList ID="DDLHangXe" runat="server" 
                                    DataSourceID="DDLHangXe_SqlDataSource1" DataTextField="Ten_Loai_Xe" 
                                    DataValueField="Ma_Loai_Xe" AppendDataBoundItems="true" >
                                    
                                    <asp:ListItem Value="">Tất cả</asp:ListItem>
                                </asp:DropDownList>
                                
                                
                                <asp:SqlDataSource ID="DDLHangXe_SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                                    SelectCommand="SELECT * FROM [Loai_Xe]"></asp:SqlDataSource>
                                
                                
                            </div>
                            <div>
                                <asp:Label ID="Label2" runat="server" Text="Tên Xe"></asp:Label><br />
                                <asp:DropDownList ID="DDLTenXe" runat="server" 
                                    DataSourceID="DDLTenXe_SqlDataSource1" DataTextField="Ten_xe" 
                                    DataValueField="Ma_Xe" AppendDataBoundItems="true" >
                                    <asp:ListItem Value="">Tất cả</asp:ListItem>
                                </asp:DropDownList>
                             
                                <asp:SqlDataSource ID="DDLTenXe_SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                                    SelectCommand="SELECT [Ma_Xe], [Ten_xe] FROM [Xe]"></asp:SqlDataSource>
                             
                            </div> 
                            
                            <div>
                                <asp:Label ID="Label3" runat="server" Text="Giá Thuê ($/ngày):"></asp:Label><br />
                                <asp:DropDownList ID="DDLGiaThue" runat="server">
                                    <asp:ListItem Value="">Tất cả</asp:ListItem>
                                    <asp:ListItem>0-50</asp:ListItem>
                                    <asp:ListItem>50-80</asp:ListItem>
                                    <asp:ListItem>80-120</asp:ListItem>
                                    <asp:ListItem>120-150</asp:ListItem>
                                    <asp:ListItem>150-300</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div> 
                                <span>Ngày nhận xe:</span><br />    
                                <asp:TextBox ID="DateFrom" runat="server" ClientIDMode="Static"></asp:TextBox>                    
                                
                             
                            </div>
                            <div>   
                                <span>Ngày trả xe:</span><br /> 
                                <asp:TextBox ID="DateTo" runat="server" ClientIDMode="Static"></asp:TextBox>                      
                             
                                
                            </div>
                            
                             <div class="check_dates"> 
                                <span>Chỉ xe rảnh: </span>
                                 <asp:CheckBox ID="ckbDateFilter" runat="server" Checked="true" ClientIDMode="Static" />
                                            
                            </div>
                                                 
                            <div>   
                                <asp:Button ID="btnTimKiem" runat="server" Text="Tìm kiếm" 
                                    onclick="btnTimKiem_Click" />                  
                                
                            </div>
                            <div>   
                                           
                                <asp:Label ID="lblAlert" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
            </div>
         </div>
        <div  style="float:left; width:1100px;height:100%;">
            <div style="height:600px">        
             <% =this.scheduler.Render() %>
         
            </div>
           
        </div>	
     </div>
     <div id="footer">
               
         
        <div class="push"></div>
   
    <div class="footer"> 
        <div class="foot_hr">
        
        </div>
        <div class="footer_content" >
            <div style="width:1020px;margin:0 auto;padding-top:25px">
                <div style="width:200px;float:left;"><a href="AdminDefault.aspx">Trở lại giao diện quản lý</a></div>
                <div style="float:left;padding-left:200px;width: 200px;">
                    
                    <div>&nbsp;</div>
                    <div > 
                    </div>
                    <div>&nbsp;</div>
                    <div > 
                    </div>
                </div>
                <div id="copyright" class="foot" style="float:right;"> 
                    
                    Đồ án môn học CSDL Nâng Cao <br /> Lớp Sư Phạm Tin 4 niên khóa 2009-2013.<br />
                    Nhóm thực hiện: Nhóm 11<br />
                      

		        </div>       
            </div>             
        </div>
    </div>
     </div>
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
    </form>
</body>
</html>
