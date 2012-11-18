<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_edit_dropdownlist_update.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_edit_dropdownlist_update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="Table" Width="800px"
        runat="server" DataKeyNames="Id,Name" OnRowDataBound="Grid1_RowDataBound">
        <Columns>
            <x:TemplateField Width="80px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="Name" />
            <x:TemplateField Width="80px" HeaderText="Gender">
                <ItemTemplate>
                    <asp:DropDownList runat="server" ID="ddlGender">
                    </asp:DropDownList>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="Entrance Year" />
            <x:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="At School" />
            <x:HyperLinkField HeaderText="Major" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            <x:TemplateField HeaderText="Group" Width="100px">
                <ItemTemplate>
                    <asp:TextBox ID="tbxGroupName" runat="server" Width="80px" TabIndex='<%# Container.DataItemIndex + 10 %>'
                        Text='<%# Eval("Group") %>'></asp:TextBox>
                </ItemTemplate>
            </x:TemplateField>
        </Columns>
    </x:Grid>
    <br />
    <x:Button ID="Button2" runat="server" Text="Rebind Table" OnClick="Button2_Click">
    </x:Button>
    <br />
    <x:Button runat="server" ID="Button1" OnClick="Button1_Click" Text="Make all group value plus one">
    </x:Button>
    <br />
    <x:Label ID="labResult" EncodeText="false" runat="server">
    </x:Label>
    <br />
    </form>
    <script type="text/javascript">
        var gridClientID = '<%= Grid1.ClientID %>';

        function registerSelectEvent() {
            var grid = X(gridClientID);
            grid.el.select('.x-grid-tpl input').on('click', function (evt, el) {
                el.select();
            });
        }

        function onReady() {
            var grid = X(gridClientID);

            grid.on('viewready', function () {
                registerSelectEvent();
            });
        }

        function onAjaxReady() {
            registerSelectEvent();
        }
    </script>
</body>
</html>
