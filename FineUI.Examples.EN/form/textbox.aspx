<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="textbox.aspx.cs"
    Inherits="FineUI.Examples.form.textbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" EnableBackgroundColor="true"
        ShowBorder="True" Title="Login Form" Width="350px" ShowHeader="True">
        <Items>
            <x:TextBox runat="server" Label="UserName" ID="tbxUseraName">
            </x:TextBox>
            <x:TextBox runat="server" ID="tbxPassword" Label="Password" TextMode="Password">
            </x:TextBox>
            <x:Button ID="btnSubmit" CssClass="inline" runat="server" OnClick="btnSubmit_Click"
                Text="Login">
            </x:Button>
            <x:Button ID="Button1" runat="server" EnablePostBack="false" Type="Reset" Text="Reset">
            </x:Button>
            <x:Label ID="labResult" ShowLabel="false" runat="server">
            </x:Label>
        </Items>
    </x:SimpleForm>
    <br />
    </form>
</body>
</html>
