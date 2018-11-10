<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultSidebar2.ascx.cs" Inherits="Sidebar2" %>
<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>


<%@ Register src="LoginSidebar.ascx" tagname="LoginSidebar" tagprefix="uc2" %>
<%@ Register src="Ho_Tro_Truc_Tuyen.ascx" tagname="Ho_Tro_Truc_Tuyen" tagprefix="uc1" %>
<%@ Register src="Khuyen_Mai.ascx" tagname="Khuyen_Mai" tagprefix="uc3" %>
<%@ Register src="UC_SoLuotTC.ascx" tagname="UC_SoLuotTC" tagprefix="uc4" %>
<uc2:LoginSidebar ID="LoginSidebar1" runat="server" />
<div> &nbsp;</div>
<div>
    <uc1:Ho_Tro_Truc_Tuyen ID="Ho_Tro_Truc_Tuyen1" runat="server" />
</div>
<div> &nbsp;</div>
<div>
</div>
<div>&nbsp;</div>
<artisteer:Block ID="HighlightsBlock" Caption="Tin Tức" runat="server"><ContentTemplate><div>
                            <ul><li><b>Chiếc Sedan hạng sang cao cấp đã có mặt tại Việt 
    Nam với giá bán khởi điểm khoảng 4 tỷ đồng.</b>
                            <p><a href="TinTuc1.aspx">Đọc Thêm...</a>
                            </p></li></ul>
                            <ul><li><b>Top 5 chiêc xe đáng mua nhất.</b>
                            <p>
                                  <a href="TinTuc2.aspx">Đọc Thêm...</a>
                            </p></li></ul>
                            </div>
             </ContentTemplate></artisteer:Block>
             <div>&nbsp;
</div>
             <artisteer:Block ID="Block1" Caption="Số lượt truy cập" runat="server">
             <ContentTemplate>  <uc4:UC_SoLuotTC ID="UC_SoLuotTC1" runat="server" />  </ContentTemplate></artisteer:Block>
             <div>&nbsp;</div>
             <artisteer:Block ID="ContactInformationBlock" Caption="Contact Info" runat="server"><ContentTemplate><div>
                <img src="images/contact.jpg" alt="an image" style="margin: 0 auto;display:block;width:95%" />
          <br />
          <b>Nhóm 11 CSDL Nâng Cao</b><br />
          SP Tin 4 - Khoa CNTT - ĐH Sư Phạm Tp.HCM<br />
          Email: <a href="mailto:quangvietntd@gmail.com">quanlythuexe@gmail.com</a><br />
          <br />
          Phone: 0984 510 852 <br />
          Hot line: 0168 996 1255
          </div>
             </ContentTemplate></artisteer:Block>
