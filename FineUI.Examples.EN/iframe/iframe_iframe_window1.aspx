<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iframe_iframe_window1.aspx.cs"
    Inherits="FineUI.Examples.iframe.iframe_iframe_window1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager AutoSizePanelID="formPanel" ID="PageManager1" runat="server"></x:PageManager>
    <x:Panel ID="formPanel" ShowBorder="false" ShowHeader="false" EnableBackgroundColor="true"
        runat="server">
        <Toolbars>
            <x:Toolbar runat="server">
                <Items>
                    <x:Button ID="btnPostBackClose" runat="server" OnClick="btnPostBackClose_Click"
                        Text="Close-PostBack Parent Page">
                    </x:Button>
                    <x:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                    </x:ToolbarSeparator>
                    <x:Button ID="Button1" EnablePostBack="false" Text="Popup Window in This Page" runat="server">
                    </x:Button>
                    <x:Button ID="Button2" EnablePostBack="false" Text="Popup Window in Parent Page" runat="server">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
    </x:Panel>
    <x:Window ID="Window1" Popup="false" EnableIFrame="true" IFrameUrl="#" runat="server"
        EnableMaximize="true" EnableResize="true" Height="350px" Width="600px" EnableConfirmOnClose="true"
        Title="Window 3">
    </x:Window>
    <x:Window ID="Window2" Popup="false" EnableIFrame="true" IFrameUrl="#" runat="server"
        EnableMaximize="true" EnableResize="true" Target="Parent" Height="350px" Width="600px"
        EnableConfirmOnClose="true" CloseAction="HidePostBack" Title="Window 4">
    </x:Window>
    </form>
</body>
</html>
