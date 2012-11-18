<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_nodecommand.aspx.cs"
    Inherits="FineUI.Examples.tree.select.tree_nodecommand" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Tree ID="Tree1" Width="500px" OnNodeCommand="Tree1_NodeCommand" ShowHeader="true"
        Title="Tree Control" runat="server">
        <Nodes>
            <x:TreeNode Text="China" Expanded="true">
                <x:TreeNode Text="Henan Province" Expanded="true">
                    <x:TreeNode Text="Zhumadian City (Click to postback)" EnablePostBack="true" Expanded="true" NodeID="Zhumadian">
                        <x:TreeNode Text="Suiping County (Click to postback)" EnablePostBack="true" NodeID="Suiping">
                        </x:TreeNode>
                        <x:TreeNode Text="Xiping County (Click to postback)" EnablePostBack="true" NodeID="Xiping">
                        </x:TreeNode>
                    </x:TreeNode>
                    <x:TreeNode Text="Luohe City" Enabled="true" NodeID="Luohe" />
                </x:TreeNode>
                <x:TreeNode Text="Anhui Province" Expanded="true" NodeID="Anhui">
                    <x:TreeNode Text="Hefei City" NodeID="Hefei">
                    </x:TreeNode>
                    <x:TreeNode Text="Huangshan City" NodeID="Huangshan">
                    </x:TreeNode>
                </x:TreeNode>
            </x:TreeNode>
        </Nodes>
    </x:Tree>
    <br />
    <x:Label ID="labResult" runat="server">
    </x:Label>
    <br />
    <br />
    </form>
</body>
</html>
