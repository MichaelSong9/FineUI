<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="FineUI.Examples.test2" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" runat="server" AutoSizePanelID="TabStrip1" />
    <f:TabStrip ID="TabStrip1" runat="server" ActiveTabIndex="0" ShowBorder="True">
        <Tabs>
            <f:Tab ID="ZtTab" runat="server"  Layout="Fit">
                <Items>
                    <f:Grid ID="ZtGrid" PageSize="20" DataKeyNames="Remarks" runat="server" AllowPaging="True"
                        EnableCheckBoxSelect="True" IsDatabasePaging="True" ShowBorder="False"
                        ShowHeader="False" EnableMultiSelect="False" ExpandAllRowExpanders="true">
                        <Columns>
                            <f:BoundField TextAlign="Center" ExpandUnusedSpace="true" DataField="Remarks" DataFormatString="{0}"
                                HeaderText="备注" />
                        </Columns>
                        <PageItems>
                            <f:ToolbarSeparator ID="ToolbarSeparator4" runat="server">
                            </f:ToolbarSeparator>
                            <f:Button IconUrl="~/images/collapse-all.gif" runat="server" EnablePress="true" Pressed="true"
                                ID="btnZtShowRowExpanders" ToolTip="显示或隐藏详细信息">
                            </f:Button>
                            <f:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                            </f:ToolbarSeparator>
                            <f:Button runat="server" ID="butZtRefresh" Icon="DatabaseRefresh" OnClick="butRefresh_Click"
                                ToolTip="刷新">
                            </f:Button>
                        </PageItems>
                    </f:Grid>
                </Items>
            </f:Tab>
            <f:Tab ID="XhycTab" runat="server"  Layout="Fit">
                <Items>
                    <f:Grid ID="XhycGrid" PageSize="20" DataKeyNames="Remarks" runat="server" AllowPaging="True"
                        EnableCheckBoxSelect="True" IsDatabasePaging="True" ShowBorder="False"
                        ShowHeader="False" EnableMultiSelect="False" ExpandAllRowExpanders="true">
                        <Columns>
                            <f:BoundField TextAlign="Center" ExpandUnusedSpace="true" DataField="Remarks" DataFormatString="{0}"
                                HeaderText="备注" />
                        </Columns>
                        <PageItems>
                            <f:ToolbarSeparator ID="ToolbarSeparator5" runat="server">
                            </f:ToolbarSeparator>
                            <f:Button IconUrl="~/images/collapse-all.gif" runat="server" EnablePress="true" Pressed="true"
                                ID="btnXhycShowRowExpanders" ToolTip="显示或隐藏详细信息">
                            </f:Button>
                            <f:ToolbarSeparator ID="ToolbarSeparator3" runat="server">
                            </f:ToolbarSeparator>
                            <f:Button runat="server" ID="butXhycRefresh" Icon="DatabaseRefresh" OnClick="butRefresh_Click"
                                ToolTip="刷新">
                            </f:Button>
                        </PageItems>
                    </f:Grid>
                </Items>
            </f:Tab>
        </Tabs>
    </f:TabStrip>
    </form>
</body>
</html>
