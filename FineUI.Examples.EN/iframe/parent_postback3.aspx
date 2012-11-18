<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parent_postback3.aspx.cs"
    Inherits="FineUI.Examples.iframe.parent_postback3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    Page 3: parent_postback3.aspx
    <br />
    <x:Button ID="Button1" runat="server" Text="Close This Window, PostBack Parent Page and Parent Parent Page" OnClick="Button1_Click">
    </x:Button>
    </form>
</body>
</html>
