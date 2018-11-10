<%@ Page Language="C#" MasterPageFile="~/design/MasterPage.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="GioiThieu.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
          <%@ Register TagPrefix="art" TagName="DefaultSidebar2" Src="DefaultSidebar2.ascx" %>
          

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Page title here...
</asp:Content>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
    <art:DefaultHeader ID="DefaultHeader" runat="server" />
</asp:Content>
<asp:Content ID="MenuContent" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <art:DefaultMenu ID="DefaultMenuContent" runat="server" />
</asp:Content>
<asp:Content ID="SideBar1" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <art:DefaultSidebar1 ID="DefaultSidebar1Content" runat="server" />
</asp:Content>
<asp:Content ID="SideBar2" ContentPlaceHolderID="Sidebar2ContentPlaceHolder" Runat="Server">
    <art:DefaultSidebar2 ID="DefaultSidebar2Content" runat="server" />
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server"><div id="Div1" runat ="server" width = "200px">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" 
        Font-Size="0.8em" PathSeparator=" : " 
        style="font-size: small; font-weight: 700">
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#284E98" />
        <PathSeparatorStyle Font-Bold="True" ForeColor="#507CD1" />
        <RootNodeStyle Font-Bold="True" ForeColor="#507CD1" />
    </asp:SiteMapPath>
</div>

    <artisteer:Article ID="Article2" Caption="Giới Thiệu" runat="server"><ContentTemplate><p> Xã hội ngày càng phát triển và nhu cầu đi lại của con người cũng tăng theo.
     Từ những nhu cầu lớn đó trong xã hội, con người đã tạo ra nhiều phương tiện đa dạng, phong phú phục vụ nhu cầu đi lại, trong đó có xe hơi.
    </p>
    <p>Trên thế giới có rất nhiều hãng xe hơi nổi tiếng trong đó phải kể đến bốn đại gia xe hơi là: BMW của Đức, Ford của Hoa Kỳ, Honda và Toyota của Nhật. Với những đặc điểm nổi trội, bốn hãng xe hơi ngày càng được ưa chuộng trên toàn thế giới.</p>
    
     <div class="art-content-layout overview-table">
    	<div class="art-content-layout-row">
    		<div class="art-layout-cell">
          <div class="overview-table-inner">
    	      <h4>BMW</h4>
    						  <img src="San_Pham/BMW%20X-%20Series.jpg" width="95" height="95" alt="an image" class="image" />
    						  <p>Có nguồn gốc từ Đức. BMW đang ngày càng được ưa chuộng trên khắp thế giới.
    						  Với đa số là những thiết kế nhỏ gọn BMW rất phù hợp cho những người ưa chuộng 
    						  các loại xe phong cách thể thao. </p>
                              <span class="art-button-wrapper">
    		<span class="art-button-l"> </span>
    		<span class="art-button-r"> </span>
    		<a class="art-button" href="Xe_Theo_Hang.aspx?Ma_Loai_Xe=1">Xem Thêm...</a>
    	</span>
           </div>
    		</div><!-- end cell -->
    		<div class="art-layout-cell">
        <div class="overview-table-inner">
    		  <h4>FORD</h4>
    						  <img src="San_Pham/FORD%20Escape.jpg" width="95" height="95" alt="an image" class="image" />
    						  <p>Được thành lập bởi Henrry Ford và đồng nghiệp tại Mỹ.
    						  Ford mang phong cách mạnh mẽ phù hợp cho những người thích
    						  khám phá, du lịch. </p>
                              <span class="art-button-wrapper">
    		<span class="art-button-l"> </span>
    		<span class="art-button-r"> </span>
    		<a class="art-button" href="Xe_Theo_Hang.aspx?Ma_Loai_Xe=2">Xem Thêm...</a>
    	</span>
    				</div>
    		</div><!-- end cell -->
    		<div class="art-layout-cell">
        <div class="overview-table-inner">
    		  <h4>HONDA</h4>
    
    						  <img src="San_Pham/HONDA%20Jazz.jpg" width="95" height="95" alt="an image" class="image" />
    						  <p>Là một niềm tự hào của Nhật. Honda đang ngày càng khẳng định vị trí của
    						  mình tại thì trường Nhật cũng như Châu Á. Với phong cách, kiểu dáng nằm trong phân 
    						  khúc hạng trung. Honda rất phù hợp với túi tiền của nhiều người.</p>
                              <p>
    	<span class="art-button-wrapper">
    		<span class="art-button-l"> </span>
    		<span class="art-button-r"> </span>
    		<a class="art-button" href="Xe_Theo_Hang.aspx?Ma_Loai_Xe=3">Xem Thêm...</a>
    	</span>
    </p>
                  </div>
    		</div><!-- end cell -->
            <div class="art-layout-cell">
          <div class="overview-table-inner">
    	      <h4>TOYOTA</h4>
    						  <img src="San_Pham/Toyota-Avensis_Wagon_2007_3.jpg" width="95" height="95" alt="an image" class="image" />
    						  <p>Cùng với Honda Toyota tạo nên một bức tường xe hơi khó đánh đổ tại Nhật
    						  cũng như trên thế giới; là đối thủ đáng gờm của rất nhiều hãng xe hơi. Được thế kế
    						  để truyền đạt sự tin tưởng và cộng hưởng trong mọi góc độ tạo một nét đột phá mới và thời trang.</p>
                              <span class="art-button-wrapper">
    		<span class="art-button-l"> </span>
    		<span class="art-button-r"> </span>
    		<a class="art-button" href="Xe_Theo_Hang.aspx?Ma_Loai_Xe=4">Xem Thêm...</a>
    	</span>
           </div>
    		</div><!-- end cell -->
    	</div><!-- end row -->
    </div>
    
     <p>Trong khuôn khổ website mua bán ô tô, chúng tôi sẽ cung cấp một số thông tin cơ bản và
      hữu ích nhất để các bạn có thể tham khảo thông tin đồng thời các bạn có thể đăng kí mua trực tuyến qua website của chúng tôi. </p>
    
        <br />
               <p>
               <li >Mọi thông tin liên lạc xin gửi về:</li>
            <ul>Nhóm website mua bán ô tô: 280 An Dương Vương, P.4, Q.5, Tp.HCM</ul>
            <ul>Điện thoại: 083. 280. 280 hoặc đường dây nóng: 083. 083. 083</ul>
            <ul>Email: <a href="#">nhommuabanoto@gmail.com</a> hoặc <a href="#">muabanoto_sptin4@gmail.com</a></ul>
                <p>
                </p>
                <p>
                </p>
                <p>
                </p>
                   <p>
                   </p>
                   <p>
                   </p>
                   <p>
                   </p>
                   <p>
                   </p>
                   <p>
                   </p>
                   <p>
                   </p>
                   <p>
                   </p>
                   <p>
                   </p>
            </p>

           </ContentTemplate></artisteer:Article>
    

</asp:Content>
