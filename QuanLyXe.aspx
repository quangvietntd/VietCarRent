<%@ Page Title="" Language="C#" MasterPageFile="~/design/AdminMasterPage.master" AutoEventWireup="true" CodeFile="QuanLyXe.aspx.cs" Inherits="QuanLyHangXe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
    <style type="text/css">

        .style4
        {
        }
        .style2
        {
            font-size: medium;
            color: #000066;
        }
        .style6
        {
            width: 240px;
        }
        .style12
        {
            width: 488px;
        }
        .style14
        {
            width: 187px;
        }
        </style>
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
    <div style ="clear:left; font-size: 16px; font-weight: bold;margin-left:30px" align="center">
            <asp:Image ID="Image3" runat="server" Height="36px" 
                ImageUrl="~/images/car_manage.png" Width="36px" />
            <asp:Label ID="Label4" runat="server" Text="Quản Lý Xe" Height="30px" 
                ForeColor="#FF6600" Font-Size="20px"></asp:Label>
        </div>
        <div>&nbsp;</div>
    <asp:MultiView ID="mtvQLHX" runat="server">
    <asp:View ID="ViewQLHX" runat="server">
    <div id="Div1" runat ="server" width = "200px">
    
    
</div><table width="100%">
<tr>
<td>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
        <div>
        <table width="100%">
                        <tr>
                            <td bgcolor="#CCCCCC" colspan="2" 
                                style="padding: 10px; font-weight: bold; font-size: 15px; color: #FFFFFF; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                                THÔNG TIN CƠ BẢN</td>
                        </tr>
                        <tr>
                            <td class="style14" style="color: #663300; font-weight: bold">
                                <div>
                                    Loại xe:
                                    <asp:DropDownList ID="ddlLoaiXe" runat="server" DataSourceID="SqlDataSource1" 
                                        DataTextField="Loai_Xe" DataValueField="Loai_Xe">
                                    </asp:DropDownList>
                                    <br />
                                    Tên xe:
                                    <asp:TextBox ID="txtTenXe" runat="server"></asp:TextBox>
                                    &nbsp;<br /> Ảnh đại diện:<br />
                                    <asp:FileUpload ID="fuPicture" runat="server" />
                                </div>
                            </td>
                            <td class="style12" style="color: #663300; font-weight: bold">
                                Thông tin:
                                <div><asp:TextBox ID="txtThongTin" runat="server" TextMode="MultiLine" 
                                    Height="150px" Width="500px"></asp:TextBox></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" colspan="2">
                                <strong>&nbsp;</strong></td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCCCCC" colspan="2" 
                                style="padding: 10px; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                                <strong style="font-size: 15px; font-weight: bold; color: #FFFFFF">ĐỘNG CƠ</strong></td>
                        </tr>
                        <tr>
                            <td class="style14" style="font-weight: bold; color: #663300;">
                                Loại động cơ:</td>
                            <td>
                                <asp:TextBox ID="txtLoaiDongCo" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14" style="color: #663300; font-weight: bold">
                                <strong>Dung tích xilanh (Cm3):</strong></td>
                            <td>
                                <asp:TextBox ID="txtDungTichXilanh" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14" style="color: #663300; font-weight: bold">
                                <b>Công suất (hp/rpm):</b></td>
                            <td>
                                <asp:TextBox ID="txtCongSuat" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14" style="color: #663300; font-weight: bold">
                                <b>Moment (Nm/rpm):</b></td>
                            <td>
                                <asp:TextBox ID="txtMoment" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14" style="color: #663300; font-weight: bold">
                                <b>Tốc độ tối đa (Km/h):</b></td>
                            <td>
                                <asp:TextBox ID="txtVanToc" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" colspan="2">
                                <strong>&nbsp;</strong></td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCCCCC" colspan="2" 
                                style="padding: 10px; font-weight: bold; color: #FFFFFF; font-size: 15px; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                                HỘP SỐ - NHIÊN LIỆU</td>
                        </tr>
                        <tr>
                            <td style="color: #663300; font-weight: bold" class="style14">
                                <b>Hộp số:</b></td>
                            <td>
                                <asp:TextBox ID="txtHopSo" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #663300; font-weight: bold" class="style14">
                                <b>Dung tích nhiên liệu (L):</b></td>
                            <td>
                                <asp:TextBox ID="txtDungTichNL" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" colspan="2">
                                <strong>&nbsp;</strong></td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCCCCC" colspan="2" 
                                style="padding: 10px; font-weight: bold; font-size: 15px; color: #FFFFFF; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                                KÍCH THƯỚC - TRỌNG LƯỢNG</td>
                        </tr>
                        <tr>
                            <td class="style14" style="color: #663300; font-weight: bold">
                                <b style="text-align: left">Kích thước tổng thể :</b></td>
                            <td>
                                <asp:TextBox ID="txtKT_TongThe" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14" style="color: #663300; font-weight: bold">
                                <b>Trọng lượng (Kg):</b></td>
                            <td>
                                <asp:TextBox ID="txtTrongLuong" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14" style="color: #663300; font-weight: bold">
                                <b>Chiều dài (mm):</b></td>
                            <td>
                                <asp:TextBox ID="txtChieuDai" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14" style="color: #663300; font-weight: bold">
                                <b style="text-align: left">Chiều rộng (mm):</b></td>
                            <td>
                                <asp:TextBox ID="txtChieuRong" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" colspan="2">
                                <strong>&nbsp;</strong></td>
                        </tr>
                        <tr>
                            <td colspan="2" 
                                style="padding: 10px; font-weight: bold; font-size: 15px; color: #ffffff; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                                THÔNG SỐ KHÁC</td>
                        </tr>
                        <tr>
                            <td style="color: #663300; font-weight: bold" class="style14">
                                <b>Màu sắc:</b></td>
                            <td>
                                <asp:TextBox ID="txtMauSac" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14" style="color: #663300; font-weight: bold">
                                <b>Giá thuê ($/ngày):</b></td>
                            <td>
                                <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" colspan="2">
                                <strong>&nbsp;</strong></td>
                        </tr>
                        <tr>
                            <td align="center" class="style2" colspan="2">
                                <asp:Button ID="btnThem" runat="server" onclick="btnThem_Click" Text="Thêm" />
                                <asp:Button ID="btnHuy" runat="server" onclick="btnHuy_Click" Text="Hủy" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style2" colspan="2">
                                <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                    onpageindexchanging="GridView4_PageIndexChanging" PageSize="5" 
                                    ForeColor="Black" GridLines="Horizontal">
                                    <Columns>
                                        <asp:BoundField DataField="Ma_Xe" HeaderText="Mã Xe" ReadOnly="True" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Loai_Xe" HeaderText="Loại Xe" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Ten_xe" HeaderText="Tên Xe" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Thong_Tin" HeaderText="Thông Tin" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Hình Ảnh">
                                            <ItemTemplate>
                                                <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("Hinh_Anh","~/San_Pham/{0}") %>' Width="100px"/>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Loai_Dong_Co" HeaderText="Loại Động Cơ" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Dung_Tich" HeaderText="Dung Tích Xilanh" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Cong_Suat" HeaderText="Công Suất" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Mo_men" HeaderText="Moment" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Van_Toc_Toi_Da" HeaderText="Tốc Độ Tối Đa" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Hop_So" HeaderText="Hộp Số" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Dung_Tich_Nhien_Lieu" HeaderText="Dung Tích NL" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="KT_Tong_The" HeaderText="KT Tổng Thể" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Trong_Luong" HeaderText="Trọng Lượng" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Chieu_Dai" HeaderText="Chiều Dài" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Chieu_Rong" HeaderText="Chiều Rộng" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Mau_Sac" HeaderText="Màu Sắc" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Gia" HeaderText="Giá Tiền" >
                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                    Text="Chỉnh Sửa" />
                            </td>

                        </tr>
                    </table>
        </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table width="100%">
                <tr>
                    <td bgcolor="#CCCCCC" colspan="2" 
                        style="padding: 10px; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                        <strong style="font-size: 15px; font-weight: bold; color: #FFFFFF">THÔNG TIN CƠ BẢN</strong></td>
                </tr>
                <tr>
                    <td class="style6" style="font-weight: bold; color: #663300;">
                        <div>
                            Loại xe:
                            <asp:Label ID="lblLoaiXe" runat="server" Text="Label"></asp:Label>
                            <br />
                            Tên xe: &nbsp;<asp:Label ID="lblTenXe" runat="server" Text="Label"></asp:Label>
                            <br />
                            Ảnh đại diện:<br />
                            <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" />
                            <br />
                            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
                        </div>
                    </td>
                    <td>
                        <span class="style4" style="font-weight: bold; color: #663300;">Thông tin:</span>
                        <asp:Label ID="lblThongTin" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="2">
                        <strong>&nbsp;</strong></td>
                </tr>
                <tr>
                    <td bgcolor="#CCCCCC" colspan="2" 
                        style="padding: 10px; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                        <strong style="font-size: 15px; font-weight: bold; color: #FFFFFF">ĐỘNG CƠ</strong></td>
                </tr>
                <tr>
                    <td class="style6" style="font-weight: bold; color: #663300;">
                        Loại động cơ:</td>
                    <td>
                        <asp:Label ID="lblLoaiDongCo" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6" style="color: #663300; font-weight: bold">
                        <strong>Dung tích xilanh (Cm3):</strong></td>
                    <td>
                        <asp:Label ID="lblDungTichXilanh" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6" style="color: #663300; font-weight: bold">
                        <b>Công suất (hp/rpm):</b></td>
                    <td>
                        <asp:Label ID="lblCongSuat" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6" style="color: #663300; font-weight: bold">
                        <b>Moment (Nm/rpm):</b></td>
                    <td>
                        <asp:Label ID="lblMoment" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6" style="color: #663300; font-weight: bold">
                        <b>Tốc độ tối đa (Km/h):</b></td>
                    <td>
                        <asp:Label ID="lblVanToc" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="2">
                        <strong>&nbsp;</strong></td>
                </tr>
                <tr>
                    <td bgcolor="#CCCCCC" colspan="2" 
                        style="padding: 10px; font-weight: bold; color: #FFFFFF; font-size: 15px; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                        HỘP SỐ - NHIÊN LIỆU</td>
                </tr>
                <tr>
                    <td style="color: #663300; font-weight: bold" class="style6">
                        <b>Hộp số:</b></td>
                    <td>
                        <asp:Label ID="lblHopSo" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="color: #663300; font-weight: bold" class="style6">
                        <b>Dung tích nhiên liệu (L):</b></td>
                    <td>
                        <asp:Label ID="lblDungTichNL" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="2">
                        <strong>&nbsp;</strong></td>
                </tr>
                <tr>
                    <td bgcolor="#CCCCCC" colspan="2" 
                        style="padding: 10px; font-weight: bold; font-size: 15px; color: #FFFFFF; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                        KÍCH THƯỚC - TRỌNG LƯỢNG</td>
                </tr>
                <tr>
                    <td class="style6" style="color: #663300; font-weight: bold">
                        <b style="text-align: left">Kích thước tổng thể :</b></td>
                    <td>
                        <asp:Label ID="lblKTTongThe" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6" style="color: #663300; font-weight: bold">
                        <b>Trọng lượng (Kg):</b></td>
                    <td>
                        <asp:Label ID="lblTrongLuong" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6" style="color: #663300; font-weight: bold">
                        <b>Chiều dài (mm):</b></td>
                    <td>
                        <asp:Label ID="lblChieuDai" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6" style="color: #663300; font-weight: bold">
                        <b style="text-align: left">Chiều rộng (mm):</b></td>
                    <td>
                        <asp:Label ID="lblChieuRong" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="2">
                        <strong>&nbsp;</strong></td>
                </tr>
                <tr>
                    <td colspan="2" 
                        style="padding: 10px; font-weight: bold; font-size: 15px; color: #ffffff; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                        THÔNG SỐ KHÁC</td>
                </tr>
                <tr>
                    <td style="color: #663300; font-weight: bold" class="style6">
                        <b>Màu sắc:</b></td>
                    <td>
                        <asp:Label ID="lblMauSac" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6" style="color: #663300; font-weight: bold">
                        <b>Giá tiền (VND):</b></td>
                    <td>
                        <asp:Label ID="lblGia" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="2">
                        <strong>&nbsp;</strong></td>
                </tr>
                <tr>
                    <td align="center" class="style2" colspan="2">
                        <asp:Button ID="btnQuaylai" runat="server" Text="Quay lại" 
                            onclick="btnQuaylai_Click" />
                        <asp:Button ID="btnChinhSua" runat="server" onclick="btnChinhSua_Click" 
                            Text="Chỉnh sửa" />
                    </td>
                </tr>
            </table>
        </asp:View>
      <asp:View ID="View3" runat="server">
      <div bgcolor="#CCCCCC" colspan="2" 
                                style="padding: 10px; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                                <strong style="font-size: 15px; font-weight: bold; color: #FFFFFF">THÔNG TIN CƠ BẢN</strong></div>
      <div>
          <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
              AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
              BorderStyle="None" BorderWidth="1px" CellPadding="4" 
              onpageindexchanging="GridView2_PageIndexChanging" 
              onrowcancelingedit="GridView2_RowCancelingEdit" 
              onrowdeleting="GridView2_RowDeleting" onrowediting="GridView2_RowEditing" 
              onrowupdating="GridView2_RowUpdating" PageSize="5" ForeColor="Black" 
              GridLines="Horizontal" Width="100%">
              <Columns>
                  <asp:CommandField ShowEditButton="True" ButtonType="Image" 
                      CancelImageUrl="~/images/button_huy.png" 
                      DeleteImageUrl="~/images/button_del.png" EditImageUrl="~/images/button_sua.png" 
                      UpdateImageUrl="~/images/button_update.png" HeaderText="Sửa" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:CommandField>
                  <asp:CommandField ShowDeleteButton="True" ButtonType="Image" 
                      DeleteImageUrl="~/images/button_del.png" HeaderText="Xoá" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:CommandField>
                  <asp:BoundField DataField="Ma_Xe" HeaderText="Mã Xe" ReadOnly="True" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:TemplateField HeaderText="Loại Xe">
                      <EditItemTemplate>
                          <asp:DropDownList ID="ddl_LoaiXe" runat="server" DataSourceID="SqlDataSource1" 
                              DataTextField="Loai_Xe" DataValueField="Loai_Xe">
                          </asp:DropDownList>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="lbl_LoaiXe" runat="server" Text='<%# Eval("Loai_Xe") %>'></asp:Label>
                      </ItemTemplate>
                      <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:TemplateField>
                  <asp:BoundField DataField="Ten_xe" HeaderText="Tên Xe" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Thong_Tin" HeaderText="Thông Tin" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:TemplateField HeaderText="Hình Ảnh">
                      <EditItemTemplate>
                          <asp:FileUpload ID="fileUpload" runat="server" />
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Image ID="img_Hinh_Anh" runat="server" Height="100px" 
                              ImageUrl='<%# Eval("Hinh_Anh","~/San_Pham/{0}") %>' Width="100px" />
                          <br />
                      </ItemTemplate>
                      <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:TemplateField>
                  <asp:BoundField DataField="Mau_Sac" HeaderText="Màu Sắc" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Gia" HeaderText="Giá Tiền" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
              </Columns>
              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
              <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
              <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F7F7F7" />
              <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
              <SortedDescendingCellStyle BackColor="#E5E5E5" />
              <SortedDescendingHeaderStyle BackColor="#242121" />
          </asp:GridView>
          </div>
          <div bgcolor="#CCCCCC" colspan="2" 
                                style="padding: 10px; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                                <strong style="font-size: 15px; font-weight: bold; color: #FFFFFF">ĐỘNG CƠ</strong></div>
      <div>
          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
              AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
              BorderStyle="None" BorderWidth="1px" CellPadding="4" 
              onpageindexchanging="GridView1_PageIndexChanging" 
              onrowcancelingedit="GridView1_RowCancelingEdit" 
              onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
              onrowupdating="GridView1_RowUpdating" PageSize="5" ForeColor="Black" 
              GridLines="Horizontal" Width="100%">
              <Columns>
                  <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/button_huy.png" 
                      EditImageUrl="~/images/button_sua.png" ShowEditButton="True" 
                      UpdateImageUrl="~/images/button_update.png" HeaderText="Sửa" />
                  <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/button_del.png" 
                      ShowDeleteButton="True" HeaderText="Xoá" />
                  <asp:BoundField DataField="Ma_Xe" HeaderText="Mã Xe" ReadOnly="True" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Loai_Dong_Co" HeaderText="Loại Động Cơ" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Dung_Tich" HeaderText="Dung Tích Xilanh" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Dung_Tich_Nhien_Lieu" HeaderText="Dung Tích NL" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Cong_Suat" HeaderText="Công Suất" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Mo_men" HeaderText="Moment" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Van_Toc_Toi_Da" HeaderText="Vận Tốc" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
              </Columns>
              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
              <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
              <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F7F7F7" />
              <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
              <SortedDescendingCellStyle BackColor="#E5E5E5" />
              <SortedDescendingHeaderStyle BackColor="#242121" />
          </asp:GridView>
          </div>
          <div bgcolor="#CCCCCC" colspan="2" 
                                style="padding: 10px; background-image: url('images/bg-sp.jpg'); background-repeat: repeat;">
                                <strong style="font-size: 15px; font-weight: bold; color: #FFFFFF">HỘP SỐ - KÍCH THƯỚC - TRỌNG LƯỢNG</strong></div>
      <div>
          <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
              AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
              BorderStyle="None" BorderWidth="1px" CellPadding="4" 
              onpageindexchanging="GridView3_PageIndexChanging" 
              onrowcancelingedit="GridView3_RowCancelingEdit" 
              onrowdeleting="GridView3_RowDeleting" onrowediting="GridView3_RowEditing" 
              onrowupdating="GridView3_RowUpdating" PageSize="5" ForeColor="Black" 
              GridLines="Horizontal" Width="100%">
              <Columns>
                  <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/button_huy.png" 
                      EditImageUrl="~/images/button_sua.png" ShowEditButton="True" 
                      UpdateImageUrl="~/images/button_update.png" />
                  <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/button_del.png" 
                      ShowDeleteButton="True" />
                  <asp:BoundField DataField="Ma_Xe" HeaderText="Mã Xe" />
                  <asp:BoundField DataField="Hop_So" HeaderText="Hộp Số" />
                  <asp:BoundField DataField="KT_Tong_The" HeaderText="KT Tổng Thể" />
                  <asp:BoundField DataField="Trong_Luong" HeaderText="Trọng Lượng" />
                  <asp:BoundField DataField="Chieu_Dai" HeaderText="Chiều Dài" />
                  <asp:BoundField DataField="Chieu_Rong" HeaderText="Chiều Rộng" />
              </Columns>
              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
              <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
              <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F7F7F7" />
              <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
              <SortedDescendingCellStyle BackColor="#E5E5E5" />
              <SortedDescendingHeaderStyle BackColor="#242121" />
          </asp:GridView>
          </div>
      </asp:View>  
    </asp:MultiView>
    <br />

    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
        SelectCommand="SELECT [Loai_Xe] FROM [Xe]"></asp:SqlDataSource>

    </td>
</tr>
</table>
    </asp:View>
    <asp:View ID="ViewErr" runat="server">
    <div align=center style="margin-top:30px">
        <asp:Label ID="lblErr_admin" runat="server" Text=""></asp:Label>
    </div>
    </asp:View>
    </asp:MultiView>
    
</asp:Content>

