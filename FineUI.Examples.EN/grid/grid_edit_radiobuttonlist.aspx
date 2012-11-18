<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_edit_radiobuttonlist.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_edit_radiobuttonlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .x-grid-tpl .gender input
        {
            vertical-align: middle;
        }
        .x-grid-tpl .gender label
        {
            margin-left: 5px;
            margin-right: 15px;
        }
    </style>
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
            <x:TemplateField Width="150px" HeaderText="Gender">
                <ItemTemplate>
                    <asp:RadioButtonList runat="server" RepeatLayout="Flow" CssClass="gender" RepeatDirection="Horizontal" ID="rblGender">
                        <asp:ListItem Text="Man" Value="Man"></asp:ListItem>
                        <asp:ListItem Text="Woman" Value="Woman"></asp:ListItem>
                    </asp:RadioButtonList>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="Entrance Year" />
            <x:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="At School" />
            <x:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
        </Columns>
    </x:Grid>
    <br />
    <x:Button runat="server" ID="Button1" OnClick="Button1_Click" Text="Get user input gender">
    </x:Button>
    <br />
    <x:Label ID="labResult" EncodeText="false" runat="server">
    </x:Label>
    <br />
    </form>
</body>
</html>
