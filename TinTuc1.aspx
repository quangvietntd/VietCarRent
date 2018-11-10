<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="TinTuc1.aspx.cs" Inherits="Car" %>

<%@ Register src="DefaultHeader.ascx" tagname="DefaultHeader" tagprefix="uc1" %>
<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc2" %>
<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc3" %>
<%@ Register src="DefaultVerticalMenu.ascx" tagname="DefaultVerticalMenu" tagprefix="uc4" %>

<%@ Register src="DefaultSidebar2.ascx" tagname="DefaultSidebar2" tagprefix="uc5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
    <uc1:DefaultHeader ID="DefaultHeader1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <uc2:DefaultMenu ID="DefaultMenu1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <uc3:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server"><div runat ="server" width = "200px">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " style="font-size: small">
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#284E98" />
        <PathSeparatorStyle Font-Bold="True" ForeColor="#507CD1" />
        <RootNodeStyle Font-Bold="True" ForeColor="#507CD1" />
    </asp:SiteMapPath>
</div><table width="100%">
<tr>
<td bgcolor="#CCCCCC" class="art-postheadericons" style="color: #000000">
    <strong><span class="style1">Chiếc Sedan hạng sang cao cấp đã có mặt tại Việt 
    Nam với giá bán khởi điểm khoảng 4 tỷ đồng.</span></strong><br />
    Ngày 14/12, nhà phân phối Audi Việt Nam giới thiệu A8L phiên bản trục cơ sở dài 
    chính thức hãng thế hệ thứ ba, thuộc diện hoàn toàn mới. Một năm trước, A8 2011 
    xuất hiện tại triển lãm Los Angeles. Đến tháng 5/2010 mới có mặt ở Mỹ.<br />
    A8 có những cải tiến đáng kể ở cả phần thiết kế, công nghệ chế tác và trang 
    thiết bị đi kèm. Mục tiêu của hãng xe hạng sang Đức là bán khoảng 6.000 chiếc xe 
    mỗi năm và khách hàng là những người có thu nhập trung bình 500.000 USD hàng 
    năm.<br />
    <asp:Image ID="Image1" runat="server" ImageUrl="~/San_Pham/A8L1.jpg" />
    <br />
    Để đối trọng với các đối thủ truyền thống BMW serie 7 và Mercedes S-class, Audi 
    tập trung mạnh vào thiết kế với những đường nét mang tính thời trang cao cấp, 
    trang thiết bị phong phú và sức mạnh động cơ lấy từ bộ tăng áp turbin.<br />
    Sự khác biệt của A8 nằm ở cụm đèn pha công nghệ đi-ốt phát quang mà Audi dày 
    công quảng bá. Lần đầu tiên có một mẫu xe mà đèn pha thuộc dạng &quot;full LED&quot;. 
    Không thể &quot;liếc&quot; như các dòng bi-xenon, A8L mới có thêm đèn mở rộng góc chiếu, 
    kích hoạt khi tài xế bật xi-nhan và đánh lái.<br />
    Dưới các tấm panel hợp kim nhôm của A8 2011 là khung sườn &quot;siêu đa dạng&quot; mang 
    tên MLP. Kiểu khung này được ứng dụng cho các loại từ A4, A5 tới A7. Nhưng A8 
    được gia cố thêm bằng hợp kim nhôm nhẹ và ma-giê. Cấu trúc MLP còn xuất hiện 
    trên các mẫu xe thế hệ mới của Volkswagen Passat, Skoda Superb, Seat Exeo, 
    Volkswagen Phaeton và Bentley Continental.<br />
    <asp:Image ID="Image2" runat="server" ImageUrl="~/San_Pham/A8L2.jpg" />
    <br />
    Phong cách thiết kế Audi vẫn là sự &quot;đơn giản nhưng tinh tế&quot;. Rất ít đường cong 
    và mang tính thời trang hơn hẳn hai đối thủ BMW serie 7 và Mercedes S-class. Nếu 
    ai thích sự bề thế, uy nghiêm thì A8 không có thế mạnh. Hãng xe Đức tự hào rằng 
    không chiếc đèn nào trên A8L có sợi đốt.<br />
    Nội thất A8 tràn ngập nút điều khiển từ hàng ghế trước đến ghế sau và sẽ làm 
    choáng ngợp những ai thích công nghệ. Màn hình trung tâm thò thụt có độ phân 
    giải cao. Bộ giao diện MMI thiết kế mới với nhiều tiện ích hơn. Điều hòa tự động 
    4 vùng độc lập. Toàn bộ các ghế trang bị chức năng massage nhiều chế độ (cả đấm 
    lưng và đấm vai). Hàng ghế sau có hộc lạnh.<br />
    <asp:Image ID="Image3" runat="server" ImageUrl="~/San_Pham/A8L4.jpg" 
        style="text-align: center" />
    <br />
    Cửa xe dạng hít, hàng ghế sau có kệ viết hoặc để chân, tùy theo lựa chọn của 
    khách hàng. Ánh sáng trong xe có thể thay đổi theo ý thích của chủ nhân với các 
    màu cơ bản là sáng mát, đỏ ấm cúng và hai màu trộn lẫn. Ghế phụ có thể chỉnh từ 
    hàng ghế sau. Màn hình gối đầu gắn trên ghế trước. Camera hai bên và hỗ trợ 
    lùi.Để đối trọng với các đối thủ truyền thống BMW serie 7 và Mercedes S-class, 
    Audi tập trung mạnh vào thiết kế với những đường nét mang tính thời trang cao 
    cấp, trang thiết bị phong phú và sức mạnh động cơ lấy từ bộ tăng áp turbin.<br />
    Bản tiêu chuẩn của A8L trang bị dàn âm thanh 14 loa Bose. Khách hàng có thể chọn 
    dàn 19 loa của Bang&amp;Olufsen công suất 1.400 W. Ổ cứng 20GB, dàn DVD cho ghế 
    trước và sau. Đầu thu TV.<br />
    <asp:Image ID="Image4" runat="server" ImageUrl="~/San_Pham/Audi-A8-12.jpg" />
    <br />
    Audi Việt Nam chọn hai phiên bản động cơ 3 lít V6 TFSI công suất 290 mã lực và 
    4,2 lít V8 FSI công suất 372 mã lực. Cả hai đều trang bị hộp số tự động 8 cấp 
    Tiptronic với cần số khá thú vị. Hệ thống treo khí nén có khả năng điều chỉnh độ 
    cao gầm tối đa thêm 25 mm. Dẫn động 4 bánh toàn thời gian quattro.<br />
    Tài xế có thể chọn các chế độ lái bình thường (Normal), êm ái (Comfort), năng 
    động (Dynamic) và tự chọn (Individual).<br />
    Chế độ tự chọn (Individual) là điểm khác biệt với các đối thủ khi tài xế có thể 
    cài đặt trạng thái của động cơ, hệ thống treo hay hộp số một cách riêng biệt. 
    Động cơ có thể làm việc ở trạng thái tính năng cao, hộp số nhạy nhưng hệ thống 
    treo thì êm ái.<br />
    Mức giá dành cho A8L phiên bản 3.0 là 4 tỷ đồng và cho 4.2 là 5 tỷ đồng, đã bao 
    gồm thuế. Đại diện Audi Việt Nam cho biết mức giá này chỉ là tạm tính và sẽ thay 
    đổi khi áp dụng thuế nhập khẩu mới từ 1/1/2011. Dự kiến đến tháng sau, A8L mới 
    chính thức có mặt trên thị trường. Xe bảo hành 2 năm không giới hạn số km đi 
    được.<br />
    <b>Theo VnExpress</b></td>
</tr>
</table>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
    
    <uc5:DefaultSidebar2 ID="DefaultSidebar21" runat="server" />
    
</asp:Content>

