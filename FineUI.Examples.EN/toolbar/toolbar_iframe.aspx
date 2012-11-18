<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toolbar_iframe.aspx.cs"
    Inherits="FineUI.Examples.toolbar.toolbar_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel runat="server" ID="Panel1" Title="Panel" Width="600px" Height="450px" EnableIFrame="true"
        IFrameName="main" IFrameUrl="#">
        <Toolbars>
            <x:Toolbar runat="server" Position="Top">
                <Items>
                    <x:Button runat="server" ID="Button1" Text="Open hello.aspx" EnablePostBack="false"
                        OnClientClick="window.open('../basic/hello.aspx', 'main');">
                    </x:Button>
                    <x:Button runat="server" ID="Button2" Text="Open hello_aspnet.aspx" EnablePostBack="false"
                        OnClientClick="window.open('../basic/hello_aspnet.aspx', 'main');">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Items>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
