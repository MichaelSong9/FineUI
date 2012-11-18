<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parent_postback.aspx.cs"
    Inherits="FineUI.Examples.iframe.parent_postback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    Page 1: parent_postback.aspx
    <x:Label ID="labResult" runat="server">
    </x:Label>
    <br />
    <x:Button ID="Button1" CssClass="inline" runat="server" Text="Button in Page 1">
    </x:Button>
    <x:Button ID="Button2" runat="server" EnablePostBack="false" Text="Refresh IFrame in Panel 1">
    </x:Button>
    <br />
    <x:Panel ID="Panel1" runat="server" EnableBackgroundColor="true" ShowBorder="true"
        Width="800px" Height="450px" EnableIFrame="true" IFrameUrl="parent_postback2.aspx"
        ShowHeader="true" Title="Panel 1">
    </x:Panel>
    </form>
</body>
</html>
