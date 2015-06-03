<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="federation1.aspx.cs" Inherits="federation1" %>
<asp:Content ID="content13" ContentPlaceHolderID="federation1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
   </asp:ScriptManager>
    <div> <table style="background-color:skyblue; width: 1025px; height: 557px;">
<tr>
<td class="style5"></td><td class="style6" align="center">
    &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Segoe UI" 
        Font-Size="Medium" ForeColor="Black" 
        Text="FEDERATION"></asp:Label>
    &nbsp;</td>
    <td class="style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/session.aspx">next</asp:LinkButton>
    </td>
</tr>
        
<tr>
<td class="style7"></td><td class="style7" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
        ID="Label4" runat="server" Font-Bold="True" Font-Names="Segoe UI" 
        Font-Size="Medium" ForeColor="#003399" 
        Text="Results From Server1"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView 
        ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" ForeColor="#003399" BorderColor="#003366" 
        BorderStyle="Inset" BorderWidth="4px">
        <RowStyle ForeColor="#003366" />
    <Columns>
        <asp:BoundField DataField="name" HeaderText="Name" />
        <asp:BoundField DataField="type" HeaderText="Type" />
    </Columns>
        <SelectedRowStyle ForeColor="White" />
        <EditRowStyle BorderColor="#333300" BorderStyle="Double" />
    </asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td class="style7"></td>
</tr>
    
<tr>
<td class="style15">&nbsp;</td><td class="style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td class="style16">&nbsp;</td>
</tr>
    
<tr valign="top">
<td class="style4"></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
    <td>&nbsp;</td>
</tr>

</table>
</div>

</asp:Content>
<asp:Content ID="Content14" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style4
        {
            height: 368px;
        }
        .style5
        {
            height: 88px;
        }
        .style6
        {
            height: 56px;
        }
        .style7
        {
            height: 50px;
        }
    </style>

</asp:Content>
