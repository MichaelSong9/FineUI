<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="image.aspx.cs" Inherits="FineUI.Examples.form.image" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    Icon="World"：
    <x:Image ID="Image1" runat="server" Icon="World">
    </x:Image>
    <br />
    ImageUrl="res.axd?icon=World"：
    <x:Image ID="Image2" runat="server" ImageUrl="res.axd?icon=World">
    </x:Image>
    <br />
    ImageUrl="../images/logo/favicon.gif" ImageCssStyle="border:solid 1px #ccc;padding:5px;"：
    <x:Image ID="Image3" runat="server" ImageWidth="32" ImageHeight="32" ImageCssStyle="border:solid 1px #ccc;padding:5px;"
        ImageUrl="../images/logo/favicon.gif">
    </x:Image>
    <br />
    <x:Button runat="server" Text="Change the last image's size" ID="Button1" OnClick="Button1_Click">
    </x:Button>
    </form>
</body>
</html>
