<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"  CodeFile="federation.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="content1" ContentPlaceHolderID="federation" runat="server">
    <asp:ScriptManager runat="server">
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
<td class="style11"></td><td class="style17"></td>
    <td class="style12"></td>
</tr>
<tr>
<td class="style11">&nbsp;</td><td class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Segoe UI" 
        Font-Size="Medium" ForeColor="Black" 
        Text="Select  Server"></asp:Label>
    &nbsp;</td>
    <td class="style12">&nbsp;</td>
</tr>
<tr>
<td class="style13"></td><td class="style18" align="center">
    
    <asp:DropDownList 
        ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" 
        DataTextField="list" DataValueField="list" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        BackColor="SkyBlue">
    </asp:DropDownList>
    <cc1:AnimationExtender ID="DropDownList1_AnimationExtender" runat="server" 
        Enabled="True" TargetControlID="DropDownList1">
        <Animations>
       <OnMouseOver>
        <Sequence>
         <StyleAction AnimationTarget="Image3" Attribute="display" Value="block"/>
         <Parallel AnimationTarget="Image3" Duration=".3" Fps="25">
        <Move Horizontal="5" Vertical="5" />
        <Resize Width="400" Height="400" />
        <Color PropertyKey="backgroundColor" StartValue="#AAAAAA" EndValue="#FFFFFF" />
         <FadeIn AnimationTarget="Image3" Duration=".2"/>
        </Parallel>

        <Color Duration="2" StartValue="#CCCCCC"
                    EndValue="#CCCCFF" Property="style"
                    PropertyKey="color" />
                     </Sequence>

                    </OnMouseOver>
        </Animations>
       
    </cc1:AnimationExtender>
    <cc1:DropDownExtender ID="DropDownList1_DropDownExtender" runat="server" 
        DynamicServicePath="" Enabled="True" TargetControlID="DropDownList1">
    </cc1:DropDownExtender>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:soaConnectionString3 %>" 
        SelectCommand="SELECT * FROM [serverlist]"></asp:SqlDataSource>
    <br />
    <cc1:DropShadowExtender ID="DropDownList1_DropShadowExtender" runat="server" 
        Enabled="True" TargetControlID="DropDownList1">
    </cc1:DropShadowExtender>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
    &nbsp;</td>
    <td class="style14">
    
        &nbsp;</td>
</tr>
        
<tr>
<td class="style13">&nbsp;</td><td class="style18" align="center">
    
    <asp:Panel ID="Panel1" runat="server" Height="108px" Width="223px">
        <asp:Label ID="Label2" runat="server" Font-Bold="True" 
        Text="Container Start..." ForeColor="#003399"></asp:Label>
        <asp:Image ID="Image3" runat="server" Height="102px" 
            ImageUrl="~/image/load.gif" />
        
    </asp:Panel>
    </td>
    <td class="style14">
    
        &nbsp;</td>
</tr>
        
<tr>
<td class="style13">&nbsp;</td><td class="style18" align="center">
    
        &nbsp;</td>
    <td class="style14">
    
        &nbsp;</td>
</tr>
        
<tr>
<td class="style13">&nbsp;</td><td class="style18" align="center">
    
    <asp:Button ID="Button1" runat="server" BackColor="#00CCFF" Font-Bold="True" 
        Font-Size="Large" Text="Search" onclick="Button1_Click"  />
    </td>
    <td class="style14">
    
        &nbsp;</td>
</tr>
        
<tr>
<td class="style15"></td><td class="style19" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td class="style16">&nbsp;</td>
</tr>
    
<tr>
<td class="style15">&nbsp;</td><td class="style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td class="style16">&nbsp;</td>
</tr>
    
<tr valign="top">
<td class="style4"></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;</td>
    <td>&nbsp;</td>
</tr>

</table>
</div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style4
        {
            width: 316px;
        }
        .style5
        {
            width: 316px;
            height: 29px;
        }
        .style6
        {
            height: 29px;
        }
        .style11
        {
            width: 316px;
            height: 26px;
        }
        .style12
        {
            height: 26px;
        }
        .style13
        {
            width: 316px;
            height: 28px;
        }
        .style14
        {
            height: 28px;
        }
        .style15
        {
            width: 316px;
            height: 38px;
        }
        .style16
        {
            height: 38px;
        }
        .style17
        {
            height: 26px;
            width: 309px;
        }
        .style18
        {
            height: 28px;
            width: 309px;
        }
        .style19
        {
            height: 38px;
            width: 309px;
        }
        </style>

</asp:Content>

