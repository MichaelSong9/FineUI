<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formitemclass.aspx.cs"
    Inherits="FineUI.Examples.other.formitemclass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .red
        {
            color: Red;
            font-style: italic;
        }
        .blue
        {
            color: Blue;
            font-style: italic;
        }
        .blue label.x-form-item-label
        {
            color: Blue;
            font-weight: bold;
        }
        .red label.x-form-item-label
        {
            color: Red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="350px" EnableBackgroundColor="true"
        Title="Simple Form" runat="server">
        <Items>
            <x:TextBox runat="server" Label="UserName" CssClass="red" FormItemClass="blue" EmptyText="Input UserName"
                ID="tbxUseraName">
            </x:TextBox>
            <x:TextBox runat="server" Label="Password" CssClass="red" FormItemClass="blue" TextMode="Password"
                ID="tbxPassword">
            </x:TextBox>
            <x:Button ID="btnSwitchClass" Text="Change Style" Type="Submit" runat="server" OnClick="btnSwitchClass_Click">
            </x:Button>
        </Items>
    </x:SimpleForm>
    <br />
    </form>
</body>
</html>
