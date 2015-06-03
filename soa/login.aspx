<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="login.aspx.cs" Inherits="login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="content7" ContentPlaceHolderID="login" runat="server">
 
    <asp:ScriptManager ID="ScriptManager1" runat="server">
   </asp:ScriptManager>
    <div> <table style="background-color:skyblue; width: 942px; height: 557px;">
<tr>
<td class="style17" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:Label 
        ID="Label1" runat="server" Font-Bold="True" Font-Names="Segoe UI" 
        Font-Size="Large" ForeColor="Black" 
        Text="Multy Party Login"></asp:Label>
    </td>
</tr>
<tr>
<td class="style17" colspan="2">&nbsp;</td>
</tr>
<tr>
<td class="style17" colspan="2">&nbsp;</td>
</tr>
<tr>
<td class="style25">
    <img alt="" src="image/m-party.jpg" style="width: 480px; height: 407px" /></td><td class="style28" align="left"valign="top">
    <table style="background-color:#0000FF; width: 119px; margin-left: 209px; height: 386px; margin-bottom: 28px;" 
        bgcolor="#0066FF">
    <tr><td class="style22" valign="top" colspan="2">
        <img alt="" src="image/login.jpg" style="height: 196px; width: 294px" /></td></tr>
    <tr><td class="style22" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Names="Candara" Text="UserName" 
            ForeColor="White"></asp:Label>
        &nbsp;</td><td class="style23">
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
            <cc1:DropShadowExtender ID="TextBox1_DropShadowExtender" runat="server" 
                Enabled="True" TargetControlID="TextBox1">
            </cc1:DropShadowExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Enter 
            User Name</asp:RequiredFieldValidator>
        </td></tr>
    <tr><td class="style20" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Names="Candara" Text="Password" 
            ForeColor="White"></asp:Label>
        &nbsp;</td><td class="style24">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <cc1:DropShadowExtender ID="TextBox2_DropShadowExtender" runat="server" 
                Enabled="True" TargetControlID="TextBox2">
            </cc1:DropShadowExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">Enter 
            Password</asp:RequiredFieldValidator>
        </td></tr>
    <tr><td class="style20" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Names="Candara" Text="UserType" 
            ForeColor="White"></asp:Label>
        &nbsp;</td><td class="style24">
            <asp:DropDownList ID="DropDownList1" runat="server" >
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>Producer</asp:ListItem>
                <asp:ListItem>Customer</asp:ListItem>
                <asp:ListItem>Supplier</asp:ListItem>
                <asp:ListItem>Session</asp:ListItem>
            </asp:DropDownList>
            <cc1:DropShadowExtender ID="DropDownList1_DropShadowExtender" runat="server" 
                Enabled="True" TargetControlID="DropDownList1">
            </cc1:DropShadowExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator">Select 
            User Type</asp:RequiredFieldValidator>
        </td></tr>
    <tr><td class="style20" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="White" Font-Bold="True" 
            Font-Names="Microsoft Sans Serif" Height="27px" onclick="Button1_Click" 
            Text="Login" Width="56px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td></tr>
    </table></td>
</tr>
<tr>
<td class="style18">&nbsp;</td><td class="style29">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
</tr>
<tr>
<td class="style19"></td><td class="style30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
</tr>
<tr>
<td class="style19">&nbsp;</td><td class="style30">&nbsp;</td>
</tr>
    
<tr valign="top">
<td class="style4"></td><td class="style31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
</tr>

</table>
</div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="federation">
    &nbsp;</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="twoparty">
    &nbsp;</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="getcustomerid">
    &nbsp;</asp:Content>
<asp:Content ID="Content8" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style4
        {
            height: 49px;
            width: 461px;
        }
        .style17
        {
            height: 7px;
            }
        .style18
        {
            height: 13px;
            width: 461px;
        }
        .style19
        {
            height: 9px;
            width: 461px;
        }
        .style20
        {
        }
        .style22
        {
            height: 33px;
        }
        .style23
        {
            width: 163px;
            height: 33px;
        }
        .style24
        {
            width: 163px;
        }
        .style25
        {
            height: 399px;
            width: 461px;
        }
        .style28
        {
            height: 399px;
            width: 425px;
        }
        .style29
        {
            height: 13px;
            width: 425px;
        }
        .style30
        {
            height: 9px;
            width: 425px;
        }
        .style31
        {
            width: 425px;
        }
    </style>

</asp:Content>

