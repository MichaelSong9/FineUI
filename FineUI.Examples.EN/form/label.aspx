<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="label.aspx.cs" Inherits="FineUI.Examples.form.label" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Label ID="Label1" Text="Normal label, text will be auto encoded (Such as: <strong></strong>)" runat="server">
    </x:Label>
    <br />
    <x:Label ID="Label4" EncodeText="false" Text="<a href='http://www.ustc.edu.cn/' target='_blank'>University of Science and Technology of China (Hyperlink from label)</a>"
        runat="server">
    </x:Label>
    <br />
    <x:Label ID="Label2" EncodeText="false" CssStyle="color:red;font-weight:bold;"
        Text="Modified text style (CssStyle)" runat="server">
    </x:Label>
    <br />
    <x:Label ID="Label3" Enabled="true" EncodeText="false" Text="<span style='color:red;font-weight:bold;'>Modified text style (inline HTML)</span>"
        runat="server">
    </x:Label>
    <br />
    <x:Button ID="btnChangeEnable" Text="Enable/Disable the last label" runat="server" OnClick="btnChangeEnable_Click" />
    </form>
</body>
</html>
