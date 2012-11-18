<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cssstyle.aspx.cs" Inherits="FineUI.Examples.other.cssstyle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .red
        {
            font-weight: bold;
            color: Red;
        }
        .green
        {
            font-weight: bold;
            font-style: italic;
            font-size: 1.2em;
            color: Green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Modify text style through CssStyle">
    </x:Button>
    <br />
    <x:Label ID="Label1" runat="server" Text="Text 1, pay attention to text style">
    </x:Label>
    <br />
    <br />
    <x:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modify text style through CssClass">
    </x:Button>
    <br />
    <x:Label ID="Label2" runat="server" CssClass="red" Text="Text 2, pay attention to text style">
    </x:Label>
    <br />
    <br />
    </form>
</body>
</html>
