<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calendar.aspx.cs" Inherits="FineUI.Examples.form.calendar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Calendar runat="server" EnableDateSelect="true" DateFormatString="yyyy-MM-dd"
        OnDateSelect="Calendar1_DateSelect" ID="Calendar1">
    </x:Calendar>
    <br />
    <x:Button runat="server" ID="Button1" OnClick="Button1_Click">
    </x:Button>
    <br />
    <x:Label ID="labResult1" ShowLabel="false" runat="server">
    </x:Label>
    </form>
</body>
</html>
