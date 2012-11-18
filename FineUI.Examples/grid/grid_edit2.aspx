<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_edit2.aspx.cs" Inherits="ExtAspNet.Examples.grid.grid_edit2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" runat="server" />
    <ext:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" Width="800px"
        runat="server" DataKeyNames="Id,Name">
        <Columns>
            <ext:TemplateField Width="60px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </ext:TemplateField>
            <ext:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
            <ext:TemplateField Width="60px" HeaderText="性别">
                <ItemTemplate>
                    <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
                    <%--<asp:Label ID="Label2" runat="server" Text='<%# GetGender(DataBinder.Eval(Container.DataItem, "Gender")) %>'></asp:Label>--%>
                    <asp:Label ID="Label3" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </ext:TemplateField>
            <ext:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份" />
            <ext:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
            <ext:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            <ext:TemplateField HeaderText="分组" Width="100px">
                <ItemTemplate>
                    <ext:TextBox  ID="tbxGroupName" runat="server" Width="80px" TabIndex='<%# Container.DataItemIndex + 10 %>'
                        Text='<%# Eval("Group") %>'></ext:TextBox>
                </ItemTemplate>
            </ext:TemplateField>
        </Columns>
    </ext:Grid>
    <br />
    请注意如何实现：
    <br />
    1. 使用Tab键遍历所有的文本输入框。
    <br />
    2. 点击输入框即可选中全部文本。
    <br />
    <br />
    <br />
    <ext:Button ID="Button2" runat="server" Text="重新绑定表格" OnClick="Button2_Click">
    </ext:Button>
    <br />
    <ext:Button runat="server" ID="Button1" OnClick="Button1_Click" Text="获取用户输入的分组值">
    </ext:Button>
    <br />
    <ext:Label ID="labResult" EncodeText="false" runat="server">
    </ext:Label>
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
