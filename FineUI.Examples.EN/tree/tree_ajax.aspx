<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_ajax.aspx.cs" Inherits="FineUI.Examples.data.tree_ajax" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Tree ID="Tree1" EnableArrows="true" OnNodeExpand="Tree1_NodeExpand" Width="500px"
        ShowHeader="true" Title="Delay loaded tree control" AutoLeafIdentification="false" runat="server">
        <Nodes>
            <x:TreeNode Text="China" Expanded="true">
                <x:TreeNode Text="Henan Province" Expanded="true">
                    <x:TreeNode Text="Zhumadian City (Delay loaded node)" NodeID="zhumadian">
                    </x:TreeNode>
                    <x:TreeNode Text="Luohe" NodeID="luohe" Leaf="true" />
                </x:TreeNode>
                <x:TreeNode Text="Anhui Province" Expanded="true" NodeID="anhui">
                    <x:TreeNode Text="Hefei City" NodeID="hefei">
                        <x:TreeNode Text="Golden Pond Community" NodeID="golden" Leaf="true">
                        </x:TreeNode>
                        <x:TreeNode Text="University of Science and Technology of China" NodeID="ustc" Leaf="true">
                        </x:TreeNode>
                    </x:TreeNode>
                </x:TreeNode>
            </x:TreeNode>
        </Nodes>
    </x:Tree>
    <br />
    <br />
    <br />
    </form>
</body>
</html>
