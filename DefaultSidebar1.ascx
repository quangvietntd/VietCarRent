<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultSidebar1.ascx.cs" Inherits="Sidebar1" %>
<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultVerticalMenu" Src="DefaultVerticalMenu.ascx" %>

<%@ Register src="DefaultAdv.ascx" tagname="DefaultAdv" tagprefix="uc1" %>
<%@ Register src="TimKiem.ascx" tagname="TimKiem" tagprefix="uc2" %>
<art:DefaultVerticalMenu ID="DefaultVMenuContent" runat="server" />                
<uc2:TimKiem ID="TimKiem1" runat="server" />
<uc1:DefaultAdv ID="DefaultAdv1" runat="server" />


