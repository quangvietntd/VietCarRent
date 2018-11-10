<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultAdv.ascx.cs" Inherits="DefaultAdv" %>
<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<div>
<artisteer:Block ID="Block1" Caption="BMW" runat="server">
<ContentTemplate>
<div align="center" style="margin: 5px">
    <a href='http://www.bmw.com' target=_blank><asp:Image ID="Image1" runat="server" ImageUrl="~/images/adv/bmw.jpg" width='150px' /></a>
</div>
</ContentTemplate>
</artisteer:Block>
<artisteer:Block ID="Block2" Caption="FORD" runat="server">
<ContentTemplate>
<div align="center" style="margin: 5px">
    <a href='http://www.ford.com' target=_blank><asp:Image ID="Image2" runat="server" ImageUrl="~/images/adv/ford.jpg" width='150px'/></a>
</div>
</ContentTemplate>
</artisteer:Block>
<artisteer:Block ID="Block3" Caption="HONDA" runat="server">
<ContentTemplate>
<div align="center" style="margin: 5px">
    <a href='http://www.honda.com' target=_blank><asp:Image ID="Image3" runat="server" ImageUrl="~/images/adv/honda.jpg" width='150px' /></a>
</div>
</ContentTemplate>
</artisteer:Block>
<artisteer:Block ID="Block4" Caption="TOYOTA" runat="server">
<ContentTemplate>
<div align="center" style="margin: 5px">
    <a href='http://www.toyota.com' target="_blank"><asp:Image ID="Image4" runat="server" ImageUrl="~/images/adv/toyota.jpg" width='150px'/></a>
</div>
</ContentTemplate>
</artisteer:Block>
</div>