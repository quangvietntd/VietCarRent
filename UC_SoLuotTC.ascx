<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_SoLuotTC.ascx.cs" Inherits="UC_SoLuotTC" %>
<style type="text/css">
    .style1
    {
        width: 100%;
        border: 0px solid #800000;
    }
    
</style>
<div>

    <table class="style1">
        <tr>
            <td width="300px" >
                <strong>Lượt truy cập:</strong></td>
        </tr>
        <tr>
            <td width="300px" align="center">
                <asp:Label ID="lblSoLuotTC" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="300px" >
                <strong>Số người Online:</strong></td>
        </tr>
        <tr>
            <td width="300px" align="center">
                <asp:Label ID="lblOnline" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>

</div>


