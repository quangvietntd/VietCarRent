<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultVerticalMenu.ascx.cs" Inherits="VMenu" %>
<div class="art-box art-vmenublock">
    <div class="art-box-body art-vmenublock-body">
<div class="art-bar art-vmenublockheader">
     <h3 class="t">Các Hãng Xe</h3>
</div><div class="art-box art-vmenublockcontent">
    <div class="art-box-body art-vmenublockcontent-body">
<div class="art-vmenu">
<!--
	<li>
		<a href="#"><span class="l"></span><span class="r"></span><span class="t">Home</span></a>
	</li>
	<li>
		<a href="#"><span class="l"></span><span class="r"></span><span class="t">News</span></a>
				<!--ul>
			<li><a href="#">Top 10</a></li>
		</ul
	</li>
	<li class="active">
		<a class="active" href="#"><span class="l"></span><span class="r"></span><span class="t">Categories</span></a>
		<!--ul class="active">
			<li><a href="#">Photos</a>
				<ul>
					<li><a href="#">2008</a></li>
					<li><a href="#">2007</a></li>
					<li><a href="#">2006</a></li>
				</ul>
			</li>
			<li><a href="#">Gadgets</a></li>
			<li><a href="#" class="active">News</a></li>
			<li><a href="#">Posts</a></li>
		</ul
	</li>
	<li>
		<a href="#"><span class="l"></span><span class="r"></span><span class="t">Video</span></a>
	</li>
	<li>
		<a href="#"><span class="l"></span><span class="r"></span><span class="t">Archive</span></a>
		<!--ul>
			<li><a href="#">2008</a>
				<ul>
					<li><a href="#">January</a></li>
					<li><a href="#">February</a></li>
					<li><a href="#">March</a></li>
				</ul>
			</li>
			<li><a href="#">2007</a>
				<ul>
					<li><a href="#">January</a></li>
					<li><a href="#">February</a></li>
					<li><a href="#">March</a></li>
				</ul>
			</li>
			<li><a href="#">2006</a>
				<ul>
					<li><a href="#">January</a></li>
					<li><a href="#">February</a></li>
					<li><a href="#">March</a></li>
				</ul>
			</li>
		</ul
			</li>
	<li>
		<a href="#"><span class="l"></span><span class="r"></span><span class="t">Forum</span></a>
	</li>
	<li>
		<a href="#"><span class="l"></span><span class="r"></span><span class="t">About</span></a>
	</li>
	<li>
		<a href="#"><span class="l"></span><span class="r"></span><span class="t">Contact</span></a>
	</li>
	<li><a href="#"><span class="l"></span><span class="r"></span><span class="t">Endline</span></a>
		<!--ul>
			<li><a href="#">2008</a>
				<ul>
					<li><a href="#">January</a></li>
					<li><a href="#">February</a></li>
					<li><a href="#">March</a></li>
				</ul>
			</li>
			<li><a href="#">2007</a>
				<ul>
					<li><a href="#">January</a></li>
					<li><a href="#">February</a></li>
					<li><a href="#">March</a></li>
				</ul>
			</li>
			<li><a href="#">2006</a>
				<ul>
					<li><a href="#">January</a></li>
					<li><a href="#">February</a></li>
					<li><a href="#">March</a></li>
					<li><a href="#">April</a></li>
					<li><a href="#">May</a></li>
				</ul>
			</li>
			<li><a href="#">2005</a>
				<ul>
					<li><a href="#">January</a></li>
					<li><a href="#">February</a></li>
					<li><a href="#">March</a></li>
				</ul>
			</li>
		</ul
	</li>-->
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Ma_Loai_Xe" 
        DataSourceID="SqlDataSource1" RepeatLayout="Flow">
        <ItemTemplate>
        <div class ='vmenu_item'>
        <div style="margin:0px;width:auto">
        <span class='div-menu-text'>
            <asp:HyperLink ID="HyperLink1" runat="server" 
    NavigateUrl='<%# Eval("Ma_Loai_Xe","Xe_Theo_Hang.aspx?Ma_Loai_Xe={0}") %>' 
    Text='<%# Eval("Ten_Loai_Xe") %>' CssClass='none_decoration' ForeColor="#663300"></asp:HyperLink>
    </span>
        </div>
        </div>
        
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QL_Ban_XeConnectionString %>" 
        SelectCommand="SELECT * FROM [Loai_Xe]"></asp:SqlDataSource>
</div>


		<div class="cleared"></div>
    </div>
</div>

		<div class="cleared"></div>
    </div>
</div>
