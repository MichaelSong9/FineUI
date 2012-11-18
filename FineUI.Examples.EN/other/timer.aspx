<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="timer.aspx.cs" Inherits="FineUI.Examples.other.timer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Timer ID="Timer1" Interval="5" Enabled="false" OnTick="Timer1_Tick" EnableAjaxLoading="false" runat="server">
    </x:Timer>
    <x:Button ID="btnStartTimer" runat="server" CssClass="inline" Text="Start Timer"
        OnClick="btnStartTimer_Click">
    </x:Button>
    <x:Button ID="btnStopTimer" runat="server" Text="Stop Timer" OnClick="btnStopTimer_Click">
    </x:Button>
    <br />
    <br />
    Click "Start Timer", the following text will be updated every 5 seconds.
    <br />
    <x:Label ID="labServerTime" runat="server" CssStyle="color:red;">
    </x:Label>
    </form>
</body>
</html>
