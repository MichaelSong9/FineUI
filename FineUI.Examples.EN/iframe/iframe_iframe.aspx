<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iframe_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.iframe_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <br />
    <x:Button ID="Button1" EnablePostBack="false" Text="Popup Window in This Page" runat="server">
    </x:Button>
    <x:Window ID="Window1" Popup="false" EnableIFrame="true" IFrameUrl="#" runat="server"
        EnableMaximize="true" EnableResize="true" Height="500px" Width="800px" Title="Window 1">
    </x:Window>
    <br />
    <br />
    <x:Button ID="Button2" EnablePostBack="false" Text="Popup Window in Parent Page" runat="server">
    </x:Button>
    <x:Window ID="Window2" Popup="false" EnableIFrame="true" IFrameUrl="#" EnableMaximize="true"
        EnableResize="true" Target="Parent" runat="server" Height="500px" Width="800px"
        Title="Window 2">
    </x:Window>
    <br />
    <x:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
    </x:Label>
    <br />
    </form>
</body>
</html>
