<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_validate.aspx.cs"
    Inherits="FineUI.Examples.form.form_validate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" runat="server" Width="500px" BodyPadding="5px" EnableBackgroundColor="true"
        Title="User Register Form">
        <Items>
            <x:TextBox ID="tbxUserName" runat="server" Label="UserName" MinLength="3" Required="True"
                ShowRedStar="True" Text="admin">
            </x:TextBox>
            <x:TextBox ID="tbxPassword" runat="server" Label="Password" Required="True" ShowRedStar="True"
                TextMode="Password">
            </x:TextBox>
            <x:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click"
                ValidateForms="SimpleForm1" ValidateTarget="Top">
            </x:Button>
        </Items>
    </x:SimpleForm>
    </form>
</body>
</html>
