<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aspnet.aspx.cs" Inherits="FineUI.Examples.aspnet.aspnet" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AjaxAspnetControls="aspBox,aspButton" runat="server" />
    <x:ContentPanel ID="ContentPanel1" runat="server" Width="500px" BodyPadding="5px"
        EnableBackgroundColor="true" ShowBorder="true" ShowHeader="true" Title="内容面板">
        <x:TextBox runat="server" Width="300px" ID="extBox">
        </x:TextBox>
        <br />
        <br />
        <asp:TextBox runat="server" Width="300px" ID="aspBox"></asp:TextBox>
        <br />
        <br />
        <x:Button ID="extButton" runat="server" CssClass="inline" Text="FineUI 按钮" OnClick="extButton_Click">
        </x:Button>
        <asp:Button ID="aspButton" Text="ASP.NET 按钮" runat="server" UseSubmitBehavior="false"
            OnClick="aspButton_Click" />
    </x:ContentPanel>
    <br />
    注意：Asp.Net按钮必须设置UseSubmitBehavior=false，否则会被渲染为submit按钮，从而导致所有的页面事件都不能正确触发。
    </form>
</body>
</html>
