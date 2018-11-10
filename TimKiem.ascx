<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TimKiem.ascx.cs" Inherits="TimKiem" %>
<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>


<div class="art-box art-vmenublock">
    <div class="art-box-body art-vmenublock-body">
<div class="art-bar art-vmenublockheader">
    <h3 class="t">Tìm Kiếm</h3>
</div><div class="art-box art-vmenublockcontent">
    <div class="art-box-body art-vmenublockcontent-body" style="margin-top:-15px">
    <div style="background-color: #E8E8E8">
    <div>&nbsp;
    </div>
        <div style="margin-left: 10px;margin-right:5px"><asp:Label ID="Label4" runat="server" Text="Loại xe" Font-Bold="True" 
                ForeColor="#663300"></asp:Label></div>
        <div align="center" style="margin-top:5px">
            <asp:DropDownList ID="DDLLoaiXe" runat="server" 
                DataSourceID="DDLLoaiXe_SqlDataSource1" DataTextField="Ten_Loai_Xe" 
                DataValueField="Ma_Loai_Xe" AppendDataBoundItems="true">
                <asp:ListItem Value="-1">Tất cả</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="DDLLoaiXe_SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
                SelectCommand="SELECT * FROM [Loai_Xe]"></asp:SqlDataSource>
        </div>
        <div style="margin-left:10px;margin-top:5px"">
                  <asp:Label ID="Label2" runat="server" Text="Giá Từ ($)" Font-Bold="True" 
                      ForeColor="#663300"></asp:Label>
              </div>
              <div align="center" style="margin-top:5px">
                  <asp:DropDownList ID="ddlTimKiem_GiaTu" runat="server">
                      <asp:ListItem Value="0" Selected="True" Text="0"></asp:ListItem>
                      <asp:ListItem>50</asp:ListItem>
                      <asp:ListItem>80</asp:ListItem>
                      <asp:ListItem>120</asp:ListItem>
                      <asp:ListItem>150</asp:ListItem>
                  </asp:DropDownList>
              </div>
              <div style="margin-left:10px;margin-top:5px">
                  <asp:Label ID="Label3" runat="server" Text="Giá Đến ($)" Font-Bold="True" 
                      ForeColor="#663300"></asp:Label>
              </div>
              <div align="center" style="margin-top:5px">
                  <asp:DropDownList ID="ddlTimKiem_GiaDen" runat="server">
                      <asp:ListItem Value="50" Text="50"></asp:ListItem>
                      <asp:ListItem>80</asp:ListItem>
                      <asp:ListItem>120</asp:ListItem>
                      <asp:ListItem>150</asp:ListItem>
                      <asp:ListItem Selected="True">300</asp:ListItem>
                  </asp:DropDownList>
              </div>
        <div style="margin-top:5px"> 
             <asp:Label ID="lblErr" runat="server" Font-Italic="True" 
                 ForeColor="Red"></asp:Label>
        </div>

        <div align="center" style="margin-top:5px;margin-bottom:5px">
          <asp:ImageButton ID="imgbtnTimKiem_Sidebar" runat="server" 
                ImageUrl="~/images/button_find.png" onclick="imgbtnTimKiem_Sidebar_Click" />
        </div>
        
        </div>
    </div>
</div>

		<div class="cleared"></div>
    </div>
</div>






