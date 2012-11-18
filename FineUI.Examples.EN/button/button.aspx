<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button.aspx.cs" Inherits="FineUI.Examples.button.button" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .redbutton button
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Button ID="btnChangeEnable" Text="Enable next button" runat="server" OnClick="btnChangeEnable_Click"
        CssClass="inline" />
    <x:Button ID="btnEnable" Text="Disabled button" OnClick="btnEnable_Click" runat="server"
        Enabled="False" />
    <br />
    <br />
    <x:Button ID="btnChangePressed" Text="Change the pressed status of next button" runat="server" OnClick="btnChangePressed_Click"
        CssClass="inline" />
    <x:Button ID="btnPressed" Text="Pressed button" runat="server" EnablePress="true" Pressed="true" />
    <br />
    <br />
    <x:Button ID="btnTooltip" Text="This button has tooltip (Click to change tooltip text)" ToolTip="This is a tooltip for button" OnClick="btnTooltip_Click"
        runat="server">
    </x:Button>
    <br />
    <br />
    <x:Button ID="Button1" Text="Normal button" runat="server" EnablePostBack="false" CssClass="inline" />
    <x:Button ID="Button2" Text="Medium size button" runat="server" Size="Medium" EnablePostBack="false"
        CssClass="inline" />
    <x:Button ID="Button3" Text="Large size button" runat="server" Size="Large" EnablePostBack="false" />
    </form>
</body>
</html>
