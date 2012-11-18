<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="window.aspx.cs" Inherits="FineUI.Examples.layout.window" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Button ID="btnShowInServer" CssStyle="margin-right:5px;float:left;" Text="Show Window (Server-side Code)"
        runat="server" OnClick="btnShowInServer_Click">
    </x:Button>
    <x:Button ID="btnHideInServer" Text="Hide Window (Server-side Code)" runat="server" OnClick="btnHideInServer_Click">
    </x:Button>
    <br />
    <br />
    <x:Button ID="btnShowInClient" CssStyle="margin-right:5px;float:left;" Text="Show Window (Client-side Code)"
        EnablePostBack="false" runat="server">
    </x:Button>
    <x:Button ID="btnHideInClient" Text="Hide Window (Client-side Code)" EnablePostBack="false" runat="server">
    </x:Button>
    <br />
    <br />
    <x:Window ID="Window2" Width="500px" Height="300px" Icon="TagBlue" Title="Window" Hidden="false"
        EnableMaximize="true" EnableCollapse="true" runat="server" EnableResize="true"
        IsModal="false" CloseAction="HidePostBack" OnClose="Window2_Close" Layout="Fit">
        <Items>
            <x:ContentPanel ShowBorder="false" ShowHeader="false" ID="ContentPanel2" EnableBackgroundColor="true"
                BodyPadding="5px" runat="server">
                <br /> 
                This is window content.
                <br />
                <br />
                <br />
                <br />
            </x:ContentPanel>
        </Items>
    </x:Window>
    </form>
</body>
</html>
