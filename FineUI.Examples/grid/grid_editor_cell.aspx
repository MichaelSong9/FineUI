<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_editor_cell.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_editor_cell" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" Width="800px" runat="server"
        DataKeyNames="Id,Name" AllowCellEditing="true" ClicksToEdit="1">
        <Columns>
            <x:TemplateField Width="60px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
                <Editor>
                    <x:TextBox ID="TextBox5" runat="server">
                    </x:TextBox>
                </Editor>
            </x:TemplateField>
            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名">
                <Editor>
                    <x:TextBox ID="tbxEditorName" runat="server">
                    </x:TextBox>
                </Editor>
            </x:BoundField>
            <x:TemplateField Width="60px" HeaderText="性别">
                <ItemTemplate>
                    <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
                    <%--<asp:Label ID="Label2" runat="server" Text='<%# GetGender(DataBinder.Eval(Container.DataItem, "Gender")) %>'></asp:Label>--%>
                    <asp:Label ID="Label3" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
                <Editor>
                    <x:TextBox ID="TextBox1" runat="server">
                    </x:TextBox>
                </Editor>
            </x:TemplateField>
            <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="入学年份">
                <Editor>
                    <x:TextBox ID="TextBox2" runat="server">
                    </x:TextBox>
                </Editor>
            </x:BoundField>
            <x:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校">
                <Editor>
                    <x:TextBox ID="TextBox3" runat="server">
                    </x:TextBox>
                </Editor>
            </x:CheckBoxField>
            <x:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True">
                <Editor>
                    <x:TextBox ID="TextBox4" runat="server">
                    </x:TextBox>
                </Editor>
            </x:HyperLinkField>
        </Columns>
    </x:Grid>
    <br />
    <br />
    <br />
    <br />
    <x:Button ID="Button2" runat="server" Text="重新绑定表格" OnClick="Button2_Click">
    </x:Button>
    <br />
    <x:Button runat="server" ID="Button1" OnClick="Button1_Click" Text="获取用户输入的分组值">
    </x:Button>
    <br />
    <x:Label ID="labResult" EncodeText="false" runat="server">
    </x:Label>
    <br />
    </form>
</body>
</html>
