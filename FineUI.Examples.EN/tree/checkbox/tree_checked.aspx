<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_checked.aspx.cs" Inherits="FineUI.Examples.tree.checkbox.tree_checked" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Tree ID="Tree1" Width="500px" ShowHeader="true" Title="Tree Control" runat="server">
        <Nodes>
            <x:TreeNode Text="China" EnableCheckBox="true" Expanded="true">
                <x:TreeNode Text="Henan Province" EnableCheckBox="true" Expanded="true">
                    <x:TreeNode Text="Zhumadian City" EnableCheckBox="true" NodeID="zhumadian">
                        <x:TreeNode Text="Suiping County" EnableCheckBox="true" NodeID="Suiping">
                        </x:TreeNode>
                        <x:TreeNode Text="Xiping County" EnableCheckBox="true" NodeID="Xiping">
                        </x:TreeNode>
                    </x:TreeNode>
                    <x:TreeNode Text="Luohe City" EnableCheckBox="true" NodeID="luohe" />
                </x:TreeNode>
                <x:TreeNode EnableCheckBox="true" Text="Anhui Province" Expanded="true" NodeID="Anhui">
                    <x:TreeNode EnableCheckBox="true" Text="Hefei City" NodeID="Hefei">
                    </x:TreeNode>
                    <x:TreeNode EnableCheckBox="true" Text="Huangshan City" NodeID="Huangshan">
                    </x:TreeNode>
                </x:TreeNode>
            </x:TreeNode>
        </Nodes>
    </x:Tree>
    <br />
    <x:Button runat="server" ID="btnGetCheckedValues" Text="Get selected node list" OnClick="btnGetCheckedValues_Click">
    </x:Button>
    <br />
    <x:Label runat="server" ID="labResult">
    </x:Label>
    </form>
</body>
</html>
