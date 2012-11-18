<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parent_postback2.aspx.cs"
    Inherits="FineUI.Examples.iframe.parent_postback2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    Page 2: parent_postback2.aspx
    <br />
    <x:Label ID="labResult" runat="server">
    </x:Label>
    <br />
    <x:Button ID="Button1" runat="server" Text="Button in Page 2">
    </x:Button>
    <br />
    <x:Window ID="Window1" runat="server" Height="350px" EnableIFrame="true" IFrameUrl="parent_postback3.aspx"
        IsModal="false" Popup="true" Width="500px" EnableMaximize="true" EnableResize="true"
        Target="Self" OnClose="Window1_Close" Title="Popup Window in Page 2">
    </x:Window>
    </form>
</body>
</html>
