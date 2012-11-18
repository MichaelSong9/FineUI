<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_datasource.aspx.cs"
    Inherits="FineUI.Examples.tree.databind.tree_datasource" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Tree ID="Tree1" Width="500px" EnableArrows="true" EnableSingleExpand="true"
        ShowHeader="true" Title="Tree Control (Bind to XmlDataSource)" runat="server">
    </x:Tree>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/tree/databind/website.xml">
    </asp:XmlDataSource>
    <br />
    Note: This tree set the EnableSingleExpand property on, that's to say there is only one node can be expanded among the same level nodes.
    </form>
</body>
</html>
