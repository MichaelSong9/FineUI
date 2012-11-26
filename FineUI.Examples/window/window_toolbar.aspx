<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="window_toolbar.aspx.cs"
    Inherits="FineUI.Examples.window.window_toolbar" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Button ID="btnShowInServer" CssClass="inline" Text="显示窗体（服务端代码）" runat="server"
        OnClick="btnShowInServer_Click">
    </x:Button>
    <br />
    <br />
    <x:Window ID="Window2" Width="500px" Height="300px" Icon="TagBlue" Title="窗体" Hidden="false"
        EnableMaximize="true" EnableCollapse="true" runat="server" EnableResize="true"
        IsModal="false" CloseAction="HidePostBack" OnClose="Window2_Close" Layout="Fit">
        <Items>
            <x:Label runat="server" Text="这是窗体的内容" ID="labWindowContent">
            </x:Label>
        </Items>
        <Toolbars>
            <x:Toolbar runat="server" Position="Bottom">
                <Items>
                    <x:Button ID="btnClose" runat="server" Text="关闭窗体">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
    </x:Window>
    </form>
</body>
</html>
