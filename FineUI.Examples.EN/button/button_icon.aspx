<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_icon.aspx.cs" Inherits="FineUI.Examples.button.button_icon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Button ID="btnIcon1" Text="Icon on the left" Icon="Report" runat="server" CssClass="inline" />
    <x:Button ID="btnIcon2" Text="Icon on the right" IconAlign="Right" Icon="Report" runat="server" />
    <br />
    <br />
    <x:Button ID="btnIcon3" Text="Icon on the top" IconAlign="Top" Icon="Report" runat="server"
        CssClass="inline" />
    <x:Button ID="btnIcon4" Text="Icon on the bottom" IconAlign="Bottom" Icon="Report" runat="server" />
    <br />
    <br />
    <x:Button ID="btnCustomIcon" Text="Custom icon (Click to change icon)" OnClick="btnCustomIcon_Click"
        IconUrl="~/images/16/1.png" runat="server" />
    <br />
    <br />
    Button with only icon:
    <br />
    <br />
    <x:Button ID="Button1" IconUrl="~/images/16/1.png" CssClass="inline" runat="server" />
    <x:Button ID="Button2" IconUrl="~/images/16/8.png" runat="server" />
    <br />
    </form>
</body>
</html>
