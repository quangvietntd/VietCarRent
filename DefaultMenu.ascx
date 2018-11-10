<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultMenu.ascx.cs" Inherits="Menu" %>
<ul class="art-hmenu">
    <li><a href="Default.aspx"><span class="l"></span><span class="r"></span><span class="t">Trang Chủ</span></a></li>
    <li><a href="Dang_Nhap.aspx"><span class="l"></span><span class="r"></span><span class="t">Đăng Nhập</span></a></li>
    <li><a href="DangKy.aspx"><span class="l"></span><span class="r"></span><span class="t">Đăng Ký</span></a></li>
    <li><a href="Danh_Muc_SP.aspx"><span class="l"></span><span class="r"></span><span class="t">Danh Mục Xe</span></a></li>
    <li><a href="#"><span class="l"></span><span class="r"></span><span class="t">Loại Xe</span></a>
        <ul><!--
		    <li><a href="LoaiXe_BMW.aspx">Loại Xe BMW</a></li>
		    <li><a href="LoaiXe_Ford.aspx">Loại Xe Ford</a></li>
		    <li><a href="LoaiXe_Honda.aspx">Loại Xe Honda</a></li>
            <li><a href="LoaiXe_Toyota.aspx">Loại Xe Toyota</a></li>-->
	        <asp:DataList ID="DataList1" runat="server" DataKeyField="Ma_Loai_Xe" 
                DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <li><asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl='<%# Eval("Ma_Loai_Xe","Xe_Theo_Hang.aspx?Ma_Loai_Xe={0}") %>' 
                        Text='<%# Eval("Ten_Loai_Xe") %>'></asp:HyperLink></li>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                SelectCommand="SELECT * FROM [Loai_Xe]"></asp:SqlDataSource>
	    </ul>
    </li>
    <li><a href="Tim_Kiem.aspx"><span class="l"></span><span class="r"></span><span class="t">Tìm Kiếm</span></a></li>
    <li><a href="HuongDanThueXe.aspx"><span class="l"></span><span class="r"></span><span class="t">Hướng Dẫn Thuê Xe</span></a></li>
    <li><a href="LienHe.aspx"><span class="l"></span><span class="r"></span><span class="t">Liên Hệ</span></a></li></ul>

