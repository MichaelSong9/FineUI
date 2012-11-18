<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_linkbutton.aspx.cs"
    Inherits="FineUI.Examples.button.button_linkbutton" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:LinkButton ID="LinkButton2" Text="Client-side event (Generated in server-side)" EnablePostBack="false" runat="server">
    </x:LinkButton>
    <br />
    <x:LinkButton ID="LinkButton3" Text="Server-side event" OnClick="LinkButton3_Click" runat="server">
    </x:LinkButton>
    <br />
    <br />
    <x:LinkButton ID="LinkButton1" Enabled="true" Text="Client-side event (Generated in client-side)" EnablePostBack="false"
        OnClientClick="clickLinkButton();" runat="server">
    </x:LinkButton>
    <br />
    <x:Button ID="btnChangeEnable" Text="Enable/Disable the last LinkButton" runat="server" OnClick="btnChangeEnable_Click" />
    </form>
    <script>
        function clickLinkButton() {
            top.X.alert("Client-side event defined in page!");
        }
    </script>
</body>
</html>
