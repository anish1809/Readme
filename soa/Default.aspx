<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile= "~/MasterPage.master" CodeFile="Default.aspx.cs"  Inherits="_Default" %>

<asp:Content ID="content14" ContentPlaceHolderID="Default" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
   </asp:ScriptManager>
    <div> 
        <table style="background-color:skyblue; width: 1025px; height: 557px; background-image: none; background-repeat: no-repeat;">
<tr>
<td class="style10"></td><td class="style11" align="left">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Segoe UI" 
        Font-Size="Large" ForeColor="Black" 
        Text="CATEGORIES"></asp:Label>
    </td>
    <td class="style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;</td>
</tr>
        
<tr>
<td class="style5"></td><td class="style12" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td class="style7"></td>
</tr>
    
<tr>
<td class="style15"></td><td class="style16" 
        style="background-image: url('image/SOA_System.gif'); background-repeat: no-repeat;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td class="style17"></td>
</tr>
    
<tr>
<td class="style8">&nbsp;</td><td class="style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button 
        ID="Button2" runat="server" BackColor="#0066CC" Font-Bold="True" 
        Font-Size="Large" ForeColor="White" PostBackUrl="~/federation.aspx" 
        Text="Federation" Width="290px" />
    </td>
    <td class="style9">&nbsp;</td>
</tr>
    
<tr>
<td class="style8">&nbsp;</td><td class="style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button 
        ID="Button3" runat="server" BackColor="#0066CC" Font-Bold="True" 
        Font-Size="Large" ForeColor="White" 
        Text="Two Party Session " Width="292px" PostBackUrl="~/2partylogin.aspx" />
    &nbsp;</td>
    <td class="style9">&nbsp;</td>
</tr>
    
<tr>
<td class="style8">&nbsp;</td><td class="style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button 
        ID="Button4" runat="server" BackColor="#0066CC" Font-Bold="True" 
        Font-Size="Large" ForeColor="White" PostBackUrl="~/login.aspx" 
        Text="Multy Party Session" Width="294px" />
    &nbsp;</td>
    <td class="style9">&nbsp;</td>
</tr>
    
<tr>
<td class="style8">&nbsp;</td><td class="style13">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button 
        ID="Button5" runat="server" BackColor="#0066CC" Font-Bold="True" 
        Font-Size="Large" ForeColor="White" PostBackUrl="~/registration.aspx" 
        Text=" Registration" Width="293px" Height="33px" />
    </td>
    <td class="style9">&nbsp;</td>
</tr>
    
<tr>
<td class="style8">&nbsp;</td><td class="style13">&nbsp;</td>
    <td class="style9">&nbsp;</td>
</tr>
    
<tr valign="top">
<td class="style4"></td><td class="style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td>&nbsp;</td>
</tr>

</table>
</div>

</asp:Content>
<asp:Content ID="Content15" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style4
    {
        width: 216px;
    }
    .style5
    {
        width: 216px;
        height: 14px;
    }
    .style6
    {
        height: 2px;
    }
    .style7
    {
        height: 14px;
    }
    .style8
    {
            width: 216px;
            height: 7px;
        }
    .style9
    {
        height: 7px;
    }
    .style10
    {
        width: 216px;
        height: 2px;
    }
        .style11
        {
            height: 2px;
            width: 598px;
        }
        .style12
        {
            height: 14px;
            width: 598px;
        }
        .style13
        {
            height: 7px;
            width: 598px;
        }
        .style14
        {
            width: 598px;
        }
        .style15
        {
            width: 216px;
            height: 400px;
        }
        .style16
        {
            height: 400px;
            width: 598px;
        }
        .style17
        {
            height: 400px;
        }
    </style>


</asp:Content>
