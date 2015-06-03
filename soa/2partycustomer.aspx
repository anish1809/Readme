<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="2partycustomer.aspx.cs" Inherits="_2partycustomer" %>

<asp:Content ID="content14" ContentPlaceHolderID="twopartycustomer" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
   </asp:ScriptManager>
    <div> <table style="background-color:skyblue; width: 1025px; height: 557px;">
<tr>
<td class="style15"></td><td class="style16" align="justify">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
        ID="Label1" runat="server" Font-Bold="True" Font-Names="Segoe UI" 
        Font-Size="Large" ForeColor="Black" 
        Text="Make An Order"></asp:Label>
    </td>
    <td class="style17">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;</td>
</tr>
<tr>
<td class="style18"></td><td class="style19" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" ForeColor="#006600"></asp:Label>
    &nbsp;</td>
    <td class="style20"></td>
</tr>
<tr>
<td class="style18">&nbsp;</td><td class="style19" valign="top">
    &nbsp;</td>
    <td class="style20">&nbsp;</td>
</tr>
<tr>
<td class="style21"></td><td class="style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
        ID="Label2" runat="server" Font-Bold="True" Text="Producer ID"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" 
        >
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
    <td class="style23"></td>
</tr>
<tr>
<td class="style12"></td><td class="style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label 
        ID="Label4" runat="server" Font-Bold="True" Text="Producer Name"></asp:Label>
    &nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Size="Large"></asp:Label>
    </td>
    <td class="style14"></td>
</tr>
<tr>
<td class="style6"></td><td class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Product"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Size="Large"></asp:Label>
    </td>
    <td class="style8"></td>
</tr>
    
<tr>
<td class="style6">&nbsp;</td><td class="style7">&nbsp;</td>
    <td class="style8">&nbsp;</td>
</tr>
    
<tr>
<td class="style6">&nbsp;</td><td class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="#00CCFF" Font-Bold="True" 
         Text="Send" onclick="Button1_Click" style="width: 49px; height: 26px;" />
    &nbsp;</td>
    <td class="style8">&nbsp;</td>
</tr>
    
<tr valign="top">
<td class="style4"></td><td class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;</td>
    <td>&nbsp;</td>
</tr>

</table>
</div>
</asp:Content>
<asp:Content ID="Content15" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style4
    {
        width: 299px;
    }
    .style5
    {
        width: 416px;
    }
    .style6
    {
        width: 299px;
        height: 24px;
    }
    .style7
    {
        width: 416px;
        height: 24px;
    }
    .style8
    {
        height: 24px;
    }
    .style12
    {
        width: 299px;
        height: 20px;
    }
    .style13
    {
        width: 416px;
        height: 20px;
    }
    .style14
    {
        height: 20px;
    }
    .style15
    {
        width: 299px;
        height: 26px;
    }
    .style16
    {
        width: 416px;
        height: 26px;
    }
    .style17
    {
        height: 26px;
    }
    .style18
    {
        width: 299px;
        height: 22px;
    }
    .style19
    {
        width: 416px;
        height: 22px;
    }
    .style20
    {
        height: 22px;
    }
    .style21
    {
        width: 299px;
        height: 29px;
    }
    .style22
    {
        width: 416px;
        height: 29px;
    }
    .style23
    {
        height: 29px;
    }
</style>





</asp:Content>
