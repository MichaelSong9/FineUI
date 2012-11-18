<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button_menu.aspx.cs" Inherits="FineUI.Examples.button.button_menu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Button ID="btnMenu" Text="University of Science and Technology of China" EnablePostBack="false" runat="server">
        <Menu>
            <x:MenuHyperLink runat="server" Icon="TagGreen" Target="_blank" NavigateUrl="http://scms.ustc.edu.cn/"
                Text="School of Chemistry and Materials Science">
            </x:MenuHyperLink>
            <x:MenuHyperLink runat="server" Icon="TagBlue" Target="_blank" NavigateUrl="http://business.ustc.edu.cn/zh_CN/"
                Text="School of Management">
                <Menu>
                    <x:MenuHyperLink runat="server" Icon="TagPink" Target="_blank" NavigateUrl="http://is.ustc.edu.cn/"
                        Text="Department of Business Administration">
                    </x:MenuHyperLink>
                    <x:MenuHyperLink runat="server" Icon="TagPurple" Target="_blank" NavigateUrl="http://stat.ustc.edu.cn/"
                        Text="Department of Statistics and Finance">
                    </x:MenuHyperLink>
                </Menu>
            </x:MenuHyperLink>
        </Menu>
    </x:Button>
    <br />
    <br />
    </form>
</body>
</html>
