<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu_dynamic.aspx.cs" Inherits="FineUI.Examples.toolbar.menu_dynamic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ShowBorder="true" BodyPadding="5px" Height="300px" Width="450px" Title="Panel"
        runat="server">
        <Toolbars>
            <x:Toolbar runat="server">
                <Items>
                    <x:ToolbarText runat="server" Text="Inline: ">
                    </x:ToolbarText>
                    <x:ToolbarSeparator runat="server">
                    </x:ToolbarSeparator>
                    <x:Button EnablePostBack="false" Text="University of Science and Technology of China" runat="server">
                        <Menu runat="server">
                            <x:MenuHyperLink ID="MenuHyperLink1" runat="server" Target="_blank" NavigateUrl="http://scms.ustc.edu.cn/"
                                Text="School of Chemistry and Materials Science">
                            </x:MenuHyperLink>
                            <x:MenuHyperLink ID="MenuHyperLink2" runat="server" Target="_blank" NavigateUrl="http://business.ustc.edu.cn/zh_CN/"
                                Text="School of Management">
                                <Menu runat="server">
                                    <x:MenuHyperLink ID="MenuHyperLink3" runat="server" Target="_blank" NavigateUrl="http://is.ustc.edu.cn/"
                                        Text="Department of Business Administration">
                                    </x:MenuHyperLink>
                                    <x:MenuHyperLink ID="MenuHyperLink4" runat="server" Target="_blank" NavigateUrl="http://stat.ustc.edu.cn/"
                                        Text="Department of Statistics and Finance">
                                    </x:MenuHyperLink>
                                </Menu>
                            </x:MenuHyperLink>
                        </Menu>
                    </x:Button>
                </Items>
            </x:Toolbar>
            <x:Toolbar ID="Toolbar1" Position="Bottom" runat="server">
                <Items>
                    <x:ToolbarText runat="server" Text="Dynamically added items: ">
                    </x:ToolbarText>
                    <x:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                    </x:ToolbarSeparator>
                </Items>
            </x:Toolbar>
        </Toolbars>
    </x:Panel>
    </form>
</body>
</html>
