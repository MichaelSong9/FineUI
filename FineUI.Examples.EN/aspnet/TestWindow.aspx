<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestWindow.aspx.cs" Inherits="ExtAspNet.Examples.aspnet.TestWindow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        form
        {
            height:800px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Button ID="btnTest" Text="点击此Button查看alert是否报错" runat="server" OnClick="btnTest_Click">
    </ext:Button>
    <input type="button" onclick="document.getElementById('ok').innerHTML = 'OK';" value="PPP" />
    <div id="ok"></div>
    <div id="container1"></div>
    </form>
</body>
</html>
