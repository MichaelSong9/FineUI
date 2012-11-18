<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userinfo_dynamic.aspx.cs"
    Inherits="FineUI.Examples.usercontrol.userinfo_dynamic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server"></x:PageManager>
    <x:ContentPanel runat="server" ID="Panel1" EnableBackgroundColor="true" Width="600px"
        Height="150px" Title="Page/Panel1（ContentPanel->UserInfoControl）">
    </x:ContentPanel>
    <br />
    <x:Panel runat="server" ID="Panel2" EnableBackgroundColor="true" Width="600px"
        Height="150px" Title="Page/Panel2（Panel->UserControlConnector->UserInfoControl）">
    </x:Panel>
    <br />
    <x:Panel runat="server" ID="Panel3" EnableBackgroundColor="true" Width="600px"
        Height="150px" Layout="Fit" Title="Page/Panel3（Layout=Fit, Panel->UserControlConnector->UserInfoControl）">
    </x:Panel>
    </form>
</body>
</html>
