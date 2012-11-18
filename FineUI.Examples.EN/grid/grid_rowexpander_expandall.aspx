<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_rowexpander_expandall.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_rowexpander_expandall" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .x-grid3-row-body .expander
        {
            padding: 5px;
        }
        .x-grid3-row-body .expander p
        {
            padding: 5px;
        }
        .x-grid3-row-body .expander strong
        {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="Table" Width="800px"
        Height="450px" runat="server" DataKeyNames="Id,Name">
        <Columns>
            <x:TemplateField RenderAsRowExpander="true">
                <ItemTemplate>
                    <div class="expander">
                        <p>
                            <strong>Name: </strong><%# Eval("Name") %></p>
                        <p>
                            <strong>Desc: </strong><%# Eval("Desc") %></p>
                    </div>
                </ItemTemplate>
            </x:TemplateField>
            <x:TemplateField Width="60px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="Name" />
            <x:TemplateField Width="60px" HeaderText="Gender">
                <ItemTemplate>
                    <%-- Container.DataItem's type is System.Data.DataRowView or user-defined custom type --%>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="Entrance Year" />
            <x:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="At School" />
            <x:HyperLinkField HeaderText="Major" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            <x:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="Group"></x:ImageField>
            <x:BoundField Width="100px" DataField="LogTime" DataFormatString="{0:yy-MM-dd}"
                HeaderText="Register Date" />
        </Columns>
    </x:Grid>
    <br />
    <x:Button ID="Button1" runat="server" Text="Rebind Table" OnClick="Button1_Click">
    </x:Button>
    <br />
    <br />
    </form>
    <script type="text/javascript">
        var gridClientID = '<%= Grid1.ClientID %>';

        function expandAllRows() {
            var grid = X(gridClientID);
            for (var i = 0, count = grid.store.getCount(); i < count; i++) {
                grid.plugins[0].expandRow(i);
            }
        }

        function onReady() {
            var grid = X(gridClientID);
            grid.addListener('viewready', function () {
                expandAllRows();
            });
        }

        function onAjaxReady() {
            expandAllRows();
        }
    </script>
</body>
</html>
