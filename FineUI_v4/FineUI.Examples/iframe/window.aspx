<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="window.aspx.cs"
    Inherits="FineUI.Examples.iframe.window" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <x:PageManager ID="PageManager1" runat="server" />
        <br />
        <x:Button ID="Button1" EnablePostBack="false" Text="弹出窗体" runat="server">
        </x:Button>
        <x:Window ID="Window1" Hidden="true" EnableIFrame="true" runat="server" EnableConfirmOnClose="true"
            EnableMaximize="true" EnableResize="true" Height="450px" Width="800px" Title="窗体一">
        </x:Window>
        <br />
        <x:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
        </x:Label>
    </form>
</body>
</html>
