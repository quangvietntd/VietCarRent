<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Khuyen_Mai.ascx.cs" Inherits="Khuyen_Mai" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
    }
</style>
<div class="art-box art-vmenublock">
    <div class="art-box-body art-vmenublock-body">
<div class="art-bar art-vmenublockheader">
    <h3 class="t">Khuyến Mãi</h3>
</div><div class="art-box art-vmenublockcontent">
    <div class="art-box-body art-vmenublockcontent-body" style="margin-top:-15px">
    <div style="background-color: #E8E8E8">
    <div>&nbsp;
    </div>
        <div style="margin-left: 10px;margin-right:5px">
            <asp:DataList ID="dtlKhuyenMai" runat="server" Width="100%">
                <ItemTemplate>
                    
                    <table class="style1" width="100%">
                    <tr>
                            <td align="center">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Ten_xe") %>' ForeColor="#663300" Font-Bold="True">'></asp:Label>
                            </td>
                            </tr>
                        <tr>
                            <td align="center">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Ma_Xe","ChiTiet_Xe.aspx?ID={0}") %>'><asp:Image ID="Image1" runat="server" Height="150px" 
                                    ImageUrl='<%# Eval("Hinh_Anh","~/San_Pham/{0}") %>' Width="150px" /></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="vertical-align: middle">
                                <div align="center" 
                                    style="background-position: center center; height:36px; background-image: url('images/bg-price.png'); background-repeat: no-repeat;">
                                   <div style="height: 10px"> &nbsp;</div><span style="margin-left:20px"><asp:Label ID="Label1" runat="server" Text='<%# Eval("Gia_Khuyen_Mai","{0:#,##0} VNĐ") %>' 
                                        ForeColor="White" Font-Bold="True" ></asp:Label></span>
                                    </div>
                            </td>
                        </tr>
                        <tr align="center">
                            <td class="style2" align="center">
                                Giá gốc: <asp:Label ID="Label2" runat="server" 
                                    Text='<%# Eval("Gia","{0:#,##0} VNĐ") %>' Font-Strikeout="True" 
                                    Font-Bold="True" ForeColor="#663300"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    
                </ItemTemplate>
            </asp:DataList>
           <div align="center">
		<a href="Khuyen_Mai.aspx"><span class="l"></span><span class="r"></span><span class="t"><< Xem Tất Cả >></span></a>
	        </div>
            </div>       
        </div>
		<div class="cleared">
            
        </div>
    </div>
</div>

		<div class="cleared"></div>
    </div>
</div>