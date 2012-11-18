<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hello.aspx.cs" Inherits="FineUI.Examples.basic.hello" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Button Text="Popup alert dialog" runat="server" ID="btnHello" OnClick="btnHello_Click">
    </x:Button>
    <br />
    <x:Button Text="Popup alert dialog in top window" runat="server" ID="btnHello2" OnClick="btnHello2_Click">
    </x:Button>
    </form>
</body>
</html>
