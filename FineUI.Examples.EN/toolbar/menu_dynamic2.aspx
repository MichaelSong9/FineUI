<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu_dynamic2.aspx.cs"
    Inherits="FineUI.Examples.toolbar.menu_dynamic2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ShowBorder="true" Title="Panel" BodyPadding="5px" Height="300px"
        Width="550px" runat="server">
        <Toolbars>
            <x:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <x:Button ID="Button1" EnablePostBack="false" OnClientClick="window.open('../default.aspx', '_blank');"
                        Text="Click to open new window (Inline Button)" runat="server">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
    </x:Panel>
    </form>
</body>
</html>
