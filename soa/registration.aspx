<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="content4" ContentPlaceHolderID="registration" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
   </asp:ScriptManager>
    <div> <table style="background-color:skyblue; width: 1025px; height: 557px;">
<tr>
<td class="style36"></td><td class="style7" align="center" colspan="2">
    &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Segoe UI" 
        Font-Size="Large" ForeColor="Black" 
        Text="Registration"></asp:Label>
    &nbsp;</td>
    <td class="style7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;</td>
</tr>
<tr>
<td class="style32"></td><td class="style27" align="center" colspan="2">
    <asp:Label ID="Label10" runat="server" Font-Bold="True"></asp:Label>
    </td>
    <td class="style27">
    </td>
</tr>
<tr>
<td class="style36">&nbsp;</td><td class="style37" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Name"></asp:Label>
    &nbsp;</td>
    <td class="style43">
        <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Required Name"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
            runat="server" ControlToValidate="TextBox1" 
            ErrorMessage="Enter only Characters" Font-Bold="False" 
            Font-Names="Times New Roman" ValidationExpression="^[a-zA-Z\s.]*$"></asp:RegularExpressionValidator>
    </td>
    <td class="style7">&nbsp;</td>
</tr>
<tr>
<td class="style36"></td><td class="style37" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="DOB"></asp:Label>
    </td>
    <td class="style43">
        <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Required Date of birth"></asp:RequiredFieldValidator>
        <br />
    </td>
    <td class="style7"></td>
</tr>
<tr>
<td class="style36">&nbsp;</td><td class="style37" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Occupation"></asp:Label>
    &nbsp;</td>
    <td class="style43">
        <asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Required Occupation"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
            runat="server" ControlToValidate="TextBox3" 
            ErrorMessage="Enter only Characters" Font-Bold="False" 
            Font-Names="Times New Roman" ValidationExpression="^[a-zA-Z\s.]*$"></asp:RegularExpressionValidator>
    </td>
    <td class="style7">&nbsp;</td>
</tr>
        
<tr>
<td class="style38"></td><td class="style39" align="left" valign="top">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Address"></asp:Label>
    &nbsp;</td>
    <td class="style44" align="left" valign="top">
    
        <asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox1_TextChanged" 
            TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Required Address"></asp:RequiredFieldValidator>
        <br />
    </td>
    <td class="style10">
    
        </td>
</tr>
        
<tr>
<td class="style38">&nbsp;</td><td class="style39" align="left" valign="top">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="City"></asp:Label>
    &nbsp;</td>
    <td class="style44" align="left">
    
        <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Required City"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
            runat="server" ControlToValidate="TextBox5" 
            ErrorMessage="Enter only Characters" Font-Bold="False" 
            Font-Names="Times New Roman" ValidationExpression="^[a-zA-Z\s.]*$"></asp:RegularExpressionValidator>
    </td>
    <td class="style10">
    
        &nbsp;</td>
</tr>
        
<tr>
<td class="style34"></td><td class="style29" align="left" valign="top">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Country"></asp:Label>
    &nbsp;</td>
    <td class="style30" align="left">
    
        <asp:TextBox ID="TextBox6" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="Required Country"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator14" 
            runat="server" ControlToValidate="TextBox6" 
            ErrorMessage="Enter only Characters" Font-Bold="False" 
            Font-Names="Times New Roman" ValidationExpression="^[a-zA-Z\s.]*$"></asp:RegularExpressionValidator>
    </td>
    <td class="style28">
    
        </td>
</tr>
        
<tr>
<td class="style40"></td><td class="style41" align="left" valign="top">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Mobile No"></asp:Label>
    &nbsp;</td>
    <td class="style45" align="left">
    
        <asp:TextBox ID="TextBox7" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox7" ErrorMessage="Required Mobile Number"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox7" ErrorMessage="Mobile no. must be 10 numbers" 
            ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    </td>
    <td class="style23">
    
        </td>
</tr>
        
<tr>
<td class="style40">&nbsp;</td><td class="style41" align="left" valign="top">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Mail Id"></asp:Label>
    &nbsp;</td>
    <td class="style45" align="left">
    
        <asp:TextBox ID="TextBox8" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="TextBox8" ErrorMessage="Required Email"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
            ControlToValidate="TextBox8" ErrorMessage="Format is invalid" Font-Bold="False" 
            Font-Names="Times New Roman" 
            ValidationExpression="^(?(&quot;&quot;)(&quot;&quot;.+?&quot;&quot;@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&amp;'\*\+/=\?\^`\{\}\|~\w])*)(?&lt;=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$"></asp:RegularExpressionValidator>
    </td>
    <td class="style23">
    
        &nbsp;</td>
</tr>
        
<tr>
<td class="style40">&nbsp;</td><td class="style41" align="left" valign="top">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="User Type"></asp:Label>
    </td>
    <td class="style45" align="left">
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>Producer</asp:ListItem>
            <asp:ListItem>Customer</asp:ListItem>
            <asp:ListItem>Supplier</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="DropDownList1" ErrorMessage="Required Usertype"></asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td class="style23">
    
        &nbsp;</td>
</tr>
        
<tr>
<td class="style40">&nbsp;</td><td class="style41" align="left" valign="top">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Product"></asp:Label>
    &nbsp;</td>
    <td class="style45" align="left">
    
        <asp:TextBox ID="TextBox9" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="TextBox9" ErrorMessage="Required Product"></asp:RequiredFieldValidator>
        <br />
    </td>
    <td class="style23">
    
        &nbsp;</td>
</tr>
        
<tr>
<td class="style40">&nbsp;</td><td class="style41" align="left" valign="top">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Producer ID"></asp:Label>
    &nbsp;</td>
    <td class="style45" align="left">
    
        <asp:DropDownList ID="DropDownList2" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="id" DataValueField="id">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:soaConnectionString9 %>" 
            SelectCommand="SELECT [id] FROM [register] WHERE ([usertype] = @usertype)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Producer" Name="usertype" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </td>
    <td class="style23">
    
        &nbsp;</td>
</tr>
        
<tr>
<td class="style42"></td><td class="style26" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td class="style46"></td>
</tr>
    
<tr>
<td class="style42">&nbsp;</td><td class="style26" colspan="2">&nbsp;&nbsp;</td>
    <td class="style46">&nbsp;</td>
</tr>
    
<tr>
<td class="style42">&nbsp;</td><td class="style26" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#00CCFF" 
        Text="Register" onclick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" BackColor="#00CCFF" 
        Text="Cancel" onclick="Button2_Click" />
    </td>
    <td class="style46">&nbsp;</td>
</tr>
    
<tr valign="top">
<td class="style4"></td><td class="style17" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;</td>
    <td>&nbsp;</td>
</tr>

</table>
</div>

</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style4
        {
            height: 324px;
            width: 473px;
        }
        .style7
        {
            height: 17px;
        }
        .style10
        {
            height: 19px;
        }
        .style17
        {
        }
        .style23
        {
            height: 2px;
        }
        .style26
        {
            height: 21px;
        }
        .style27
        {
            height: 52px;
        }
        .style28
        {
            height: 31px;
        }
        .style29
        {
            height: 31px;
            width: 267px;
        }
        .style30
        {
            height: 31px;
            width: 265px;
        }
        .style32
        {
            height: 52px;
            width: 473px;
        }
        .style34
        {
            height: 31px;
            width: 473px;
        }
        .style36
        {
        height: 17px;
        width: 473px;
    }
        .style37
        {
            height: 17px;
            width: 267px;
        }
        .style38
        {
        height: 19px;
        width: 473px;
    }
        .style39
        {
            height: 19px;
            width: 267px;
        }
        .style40
        {
        height: 2px;
        width: 473px;
    }
        .style41
        {
            height: 2px;
            width: 267px;
        }
        .style42
        {
        width: 473px;
        height: 21px;
    }
        .style43
        {
        height: 17px;
        width: 265px;
    }
        .style44
        {
        height: 19px;
        width: 265px;
    }
        .style45
        {
        height: 2px;
        width: 265px;
    }
        .style46
        {
            width: 378px;
            height: 21px;
        }
    </style>

</asp:Content>
