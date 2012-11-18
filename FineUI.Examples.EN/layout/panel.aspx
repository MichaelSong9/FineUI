<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="panel.aspx.cs" Inherits="FineUI.Examples.layout.panel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ID="Panel1" runat="server" Title="Panel" Width="500px" AutoHeight="true"
        EnableBackgroundColor="true" BodyPadding="10px" EnableCollapse="True" IconUrl="~/images/16/8.png">
        <Toolbars>
            <x:Toolbar runat="server">
                <Items>
                    <x:ToolbarText Text="Toolbar text 1" ID="ToolbarText1" runat="server">
                    </x:ToolbarText>
                    <x:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                    </x:ToolbarSeparator>
                    <x:ToolbarText Text="Toolbar text 2" ID="ToolbarText2" runat="server">
                    </x:ToolbarText>
                    <x:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                    </x:ToolbarSeparator>
                    <x:ToolbarText runat="server" Text="Toolbar text 3" ID="ToolbarText3">
                    </x:ToolbarText>
                    <x:ToolbarFill ID="ToolbarFill1" runat="server">
                    </x:ToolbarFill>
                    <x:ToolbarText Text="Toolbar text 4" ID="ToolbarText4" runat="server">
                    </x:ToolbarText>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Items>
            <x:ContentPanel ID="ContentPanel1" Title="Content Panel" ShowBorder="true" Height="200px"
                BodyPadding="10px" EnableBackgroundColor="true" EnableCollapse="true" ShowHeader="true"
                runat="server">
                You can place Asp.Net controls or <a href="http://www.w3schools.com/html/" target="_blank">HTML</a> tags.
            </x:ContentPanel>
        </Items>
    </x:Panel>
    <br />
    <x:Button ID="Button2" CssClass="inline" Text="Check expanded status of panel" runat="server" OnClick="Button2_Click">
    </x:Button>
    <x:Button ID="Button3" CssClass="inline" Text="Expand/Collapse content panel" runat="server" OnClick="Button3_Click">
    </x:Button>
    <x:Button ID="Button4" Text="Update Panel's title" runat="server" OnClick="Button4_Click">
    </x:Button>
    <br />
    <x:Button ID="Button5" CssClass="inline" Text="Update toolbar text 1" runat="server" OnClick="Button5_Click">
    </x:Button>
    <x:Button ID="Button6" Text="Show/Hide toolbar text 1" runat="server" OnClick="Button6_Click">
    </x:Button>
    </form>
</body>
</html>
