<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mobile1.aspx.cs" Inherits="mobile1" %>
<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<body>
    <mobile:Form id="Form1" runat="server">
       <mobile:Label ID="label1" Runat="server">User Name</mobile:Label>
      <mobile:RequiredFieldValidator ID="rf1" ControlToValidate="text1" ErrorMessage="Enter User Name" Runat="server"></mobile:RequiredFieldValidator>
      <mobile:TextBox ID="text1" Runat="server"></mobile:TextBox>
      <mobile:RegularExpressionValidator ID="RegularExpressionValidator" ControlToValidate="text1" ErrorMessage="Enter only Characters" ValidationExpression="^[a-zA-Z\s.]*$" Runat="server"></mobile:RegularExpressionValidator>
      <mobile:Label ID="label2" Runat="server">Password</mobile:Label>
      <mobile:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="text2" ErrorMessage="Enter Password" Runat="server"></mobile:RequiredFieldValidator>
      <mobile:TextBox ID="text2" Password="true" Runat="server"></mobile:TextBox>
       <mobile:Label ID="label3" Runat="server">User Type</mobile:Label>
      <mobile:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="text3" ErrorMessage="Enter Your Type Producer,Customer Or Supplier" Runat="server"></mobile:RequiredFieldValidator>
      <mobile:TextBox ID="text3" Password="true" Runat="server"></mobile:TextBox>
      <mobile:Command ID="submit" Text="submit" OnClick="submit_Click"  Runat="server"></mobile:Command>
      <mobile:Label ID="label9" Runat="server"></mobile:Label>
      </mobile:Form>
</body>
</html>
