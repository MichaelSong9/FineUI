<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_icon.aspx.cs" Inherits="FineUI.Examples.tree.tree_icon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Tree ID="Tree1" Width="500px" ShowHeader="true" Title="Tree Control" runat="server">
        <Nodes>
            <x:TreeNode Text="China" Expanded="true">
                <x:TreeNode Text="Henan Province" Expanded="true">
                    <x:TreeNode Text="Zhumadian City" Expanded="true" Icon="Anchor" NodeID="Zhumadian">
                        <x:TreeNode Text="Suiping County" Icon="Anchor" NodeID="Suiping">
                        </x:TreeNode>
                        <x:TreeNode Text="Xiping County" Icon="Anchor" NodeID="Xiping">
                        </x:TreeNode>
                    </x:TreeNode>
                    <x:TreeNode Text="Luohe City" NodeID="Luohe" />
                </x:TreeNode>
                <x:TreeNode Text="Anhui Province" Expanded="true" NodeID="Anhui">
                    <x:TreeNode Expanded="true" Text="Hefei City" NodeID="Hefei">
                        <x:TreeNode Text="University of Science and Technology of China (hyperlink)" NavigateUrl="http://www.ustc.edu.cn/" Target="_blank"
                            ToolTip="Click to goto USTC homepage" NodeID="ustc">
                        </x:TreeNode>
                    </x:TreeNode>
                    <x:TreeNode Text="Huangshan City" NodeID="Huangshan">
                    </x:TreeNode>
                </x:TreeNode>
            </x:TreeNode>
        </Nodes>
    </x:Tree>
    <br />
    <br />
    </form>
</body>
</html>
