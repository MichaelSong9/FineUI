<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3.aspx.cs" Inherits="FineUI.Examples.test3" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../res/css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="RegionPanel1" runat="server"></f:PageManager>

        <f:Panel runat="server">
            <Items>
                <f:Tree ID="Tree1" Width="650px" EnableCollapse="true" ShowHeader="true" EnableMultiSelect="true" Title="树控件"
                    runat="server">
                    <Nodes>
                        <f:TreeNode></f:TreeNode>
                    </Nodes>
                </f:Tree>
                <f:Panel runat="server" Title="哈哈"></f:Panel>
                <f:Window runat="server" Title="呵呵"></f:Window>
            </Items>
        </f:Panel>

    </form>
</body>
</html>
