﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_simulate_tree_paging.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_simulate_tree_paging" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="表格" EnableFrame="true" EnableCollapse="true" ShowBorder="true" ShowHeader="true" AutoHeight="true"
        runat="server" EnableCheckBoxSelect="True" AllowPaging="true" PageSize="15" IsDatabasePaging="false"
        DataKeyNames="Id,Name" Width="800px" Height="450px" OnPageIndexChange="Grid1_PageIndexChange">
        <Columns>
            <x:RowNumberField />
            <x:BoundField DataField="Name" DataSimulateTreeLevelField="TreeLevel" DataFormatString="{0}"
                HeaderText="地区" ExpandUnusedSpace="True" />
            <x:ImageField Width="80px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="分组"></x:ImageField>
        </Columns>
    </x:Grid>
    </form>
</body>
</html>
