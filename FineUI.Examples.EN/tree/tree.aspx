<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree.aspx.cs" Inherits="FineUI.Examples.tree.tree" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Tree ID="Tree1" Width="500px" ShowHeader="true" Title="Tree Control (Inline)" runat="server">
        <Nodes>
            <x:TreeNode Text="China" Expanded="true">
                <x:TreeNode Text="Henan Province" Expanded="true">
                    <x:TreeNode Text="Zhumadian City" NodeID="zhumadian">
                        <x:TreeNode Text="Suiping County" Leaf="false" NodeID="suiping">
                            <x:TreeNode Text="Huaishu Town" Leaf="false" NodeID="huaishu">
                                <x:TreeNode Text="Chenzhuang Village" NodeID="chenzhuang">
                                </x:TreeNode>
                            </x:TreeNode>
                        </x:TreeNode>
                    </x:TreeNode>
                    <x:TreeNode Text="Luohe City" NodeID="luohe" />
                </x:TreeNode>
                <x:TreeNode Text="Anhui Province" Expanded="true" NodeID="anhui">
                    <x:TreeNode Text="Hefei City" Expanded="true" NodeID="hefei">
                        <x:TreeNode Text="Golden Pond Community" NodeID="golden">
                        </x:TreeNode>
                        <x:TreeNode Text="University of Science and Technology of China" NodeID="ustc">
                        </x:TreeNode>
                    </x:TreeNode>
                </x:TreeNode>
            </x:TreeNode>
        </Nodes>
    </x:Tree>
    </form>
</body>
</html>
