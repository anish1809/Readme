<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mobile2.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<body>
    <mobile:Form id="Form1" runat="server">
 <mobile:Label ID="label1" Runat="server">Cutomer ID
      </mobile:Label>
      <mobile:RequiredFieldValidator ID="rf1" ControlToValidate="text1" ErrorMessage="Enter ID" Runat="server"></mobile:RequiredFieldValidator>

      <mobile:TextBox ID="text1" Runat="server"></mobile:TextBox>
      <mobile:Command ID="submit" Text="submit" OnClick="submit_Click" Runat="server"></mobile:Command>
      <mobile:Label ID="label3" Runat="server"></mobile:Label>
      <mobile:Label ID="label2" Runat="server"></mobile:Label>
    </mobile:Form>
    </mobile:Form>
</body>
</html>
