<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test4.aspx.cs" Inherits="FineUI.Examples.test4" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager2" runat="server" />
    <x:Panel ID="Panel1" runat="server" Height="300px" Width="400px" ShowBorder="True"
        Layout="Anchor" ShowHeader="True" Title="Panel1">
        <Items>
            <x:Panel ID="Panel2" AnchorValue="100%" Height="100" EnableBackgroundColor="true"
                runat="server" ShowBorder="True" ShowHeader="true" Title="Panel2">
            </x:Panel>
            <x:Panel ID="Panel3" AnchorValue="100% -100" EnableBackgroundColor="true" runat="server"
                ShowBorder="True" ShowHeader="true" Title="Panel3">
            </x:Panel>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
