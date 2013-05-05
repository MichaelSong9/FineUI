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
            </x:TemplateField>
            <x:EditField Width="100px" DataField="Name" HeaderText="姓名">
                <Editor>
                    <x:TextBox ID="tbxEditorName" runat="server">
                    </x:TextBox>
                </Editor>
            </x:EditField>
            <x:EditField Width="100px" DataField="Gender" HeaderText="性别">
                <Editor>
                    <x:TextBox ID="tbxEditorGender" runat="server">
                    </x:TextBox>
                </Editor>
            </x:EditField>
            <x:EditField Width="100px" DataField="EntranceYear" HeaderText="入学年份">
                <Editor>
                    <x:TextBox ID="tbxEditorEntranceYear" runat="server">
                    </x:TextBox>
                </Editor>
            </x:EditField>
            <x:EditField Width="100px" DataField="AtSchool" HeaderText="是否在校">
                <Editor>
                    <x:TextBox ID="tbxEditorAtSchool" runat="server">
                    </x:TextBox>
                </Editor>
            </x:EditField>
            <x:EditField Width="100px" DataField="LogTime" FieldType="Date" 
                HeaderText="登记时间">
                <Editor>
                    <x:TextBox ID="TextBox1" runat="server">
                    </x:TextBox>
                </Editor>
            </x:EditField>
            <x:EditField Width="100px" DataField="Major" ExpandUnusedSpace="true" HeaderText="所学专业">
                <Editor>
                    <x:TextBox ID="tbxEditorMajor" runat="server">
                    </x:TextBox>
                </Editor>
            </x:EditField>
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
