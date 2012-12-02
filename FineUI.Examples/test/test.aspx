<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="test.aspx.cs"
    Inherits="FineUI.Examples.test.test" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" EnableAjax="true" AutoSizePanelID="Form2" />
    <x:Window ID="Window2" Width="500px" Height="300px" Icon="TagBlue" Title="窗体" Hidden="false"
        EnableMaximize="true" EnableCollapse="true" runat="server" EnableResize="true"
        IsModal="false" CloseAction="HidePostBack">
    </x:Window>
    </form>
</body>
</html>
