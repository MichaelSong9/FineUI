<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="EmptyProjectNet45_FineUI.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server"></f:PageManager>
        <f:Button ID="Button1" runat="server" Text="测试"></f:Button>
        <f:Window ID="Window1" runat="server" Title="测试窗口" Width="600px" Height="400px" EnableIFrame="true" Target="Self" Hidden="true" HideMode="Display" IsModal="true">
        </f:Window>
    </form>
</body>
</html>
