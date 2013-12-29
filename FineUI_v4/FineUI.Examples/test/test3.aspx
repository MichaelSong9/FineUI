﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3.aspx.cs" Inherits="FineUI.Examples.test3" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" />
    <f:Grid ID="Grid1" PageSize="20" DataKeyNames="Remarks" runat="server" AllowPaging="True"
        EnableCheckBoxSelect="True" IsDatabasePaging="false" ShowBorder="true"
        ShowHeader="true" Width="650px" Height="200px" EnableMultiSelect="False" OnPageIndexChange="Grid1_PageIndexChange">
        <Columns>
            <f:BoundField TextAlign="Center" ExpandUnusedSpace="true" DataField="Remarks" DataFormatString="{0}"
                HeaderText="备注" />
        </Columns>
        <PageItems>
            <f:ToolbarSeparator ID="ToolbarSeparator4" runat="server">
            </f:ToolbarSeparator>
            <f:Button runat="server" ID="btnRefresh" Icon="DatabaseRefresh" OnClick="btnRefresh_Click"
                ToolTip="刷新">
            </f:Button>
        </PageItems>
    </f:Grid>
    </form>
</body>
</html>
