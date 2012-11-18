<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_click.aspx.cs" Inherits="FineUI.Examples.button.button_click" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Button ID="btnServerClick" Text="Server-side event" OnClick="btnServerClick_Click" runat="server">
    </x:Button>
    <br />
    <br />
    <x:Button ID="btnClientClick" Text="Client-side event" OnClientClick="alert('This is a client-side event.');" EnablePostBack="false"
        CssClass="inline" runat="server">
    </x:Button>
    <x:Button ID="btnClientClick2" Text="Register client-side event in server-side" EnablePostBack="false" runat="server">
    </x:Button>
    <br />
    <br />
    </form>
</body>
</html>
