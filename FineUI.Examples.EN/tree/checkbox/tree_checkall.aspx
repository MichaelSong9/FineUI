<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_checkall.aspx.cs"
    Inherits="FineUI.Examples.tree.checkbox.tree_checkall" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Tree ID="Tree1" OnNodeCheck="Tree1_NodeCheck" Width="500px" ShowHeader="true"
        Title="Tree Control" runat="server">
        <Nodes>
            <x:TreeNode Text="China" EnableCheckBox="true" AutoPostBack="true" Expanded="true">
                <x:TreeNode AutoPostBack="true" Text="Henan Province" EnableCheckBox="true" Expanded="true">
                    <x:TreeNode Text="Zhumadian City" AutoPostBack="true" EnableCheckBox="true" NodeID="zhumadian">
                        <x:TreeNode Text="Suiping County" AutoPostBack="true" EnableCheckBox="true" NodeID="Suiping">
                        </x:TreeNode>
                        <x:TreeNode Text="Xiping County" AutoPostBack="true" EnableCheckBox="true" NodeID="Xiping">
                        </x:TreeNode>
                    </x:TreeNode>
                    <x:TreeNode Text="Luohe City" AutoPostBack="true" EnableCheckBox="true" NodeID="luohe" />
                </x:TreeNode>
                <x:TreeNode AutoPostBack="true" EnableCheckBox="true" Text="Anhui Province" Expanded="true"
                    NodeID="Anhui">
                    <x:TreeNode EnableCheckBox="true" AutoPostBack="true" Text="Hefei City" NodeID="Hefei">
                    </x:TreeNode>
                    <x:TreeNode EnableCheckBox="true" AutoPostBack="true" Text="Huangshan City" NodeID="Huangshan">
                    </x:TreeNode>
                </x:TreeNode>
            </x:TreeNode>
        </Nodes>
    </x:Tree>
    </form>
</body>
</html>
