<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_iframe.aspx.cs" Inherits="FineUI.Examples.grid.grid_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="Table" ShowBorder="true" ShowHeader="true" AutoHeight="true"
        PageSize="3" runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name"
        Width="800px" EnableRowNumber="True">
        <Toolbars>
            <x:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <x:Button ID="btnNew" Text="Add new data" Icon="Add" EnablePostBack="false" runat="server">
                    </x:Button>
                    <x:Button ID="btnDelete" Text="Delete selected items" Icon="Delete" OnClick="btnDelete_Click" runat="server">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Columns>
            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="Name" />
            <x:TemplateField Width="60px" HeaderText="Gender">
                <ItemTemplate>
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
            <x:WindowField ColumnID="myWindowField" Width="60px" WindowID="Window1" HeaderText="Window Column"
                Icon="Pencil" ToolTip="Edit" DataTextFormatString="{0}" DataIFrameUrlFields="Id"
                DataIFrameUrlFormatString="grid_iframe_window.aspx?id={0}" DataWindowTitleField="Name"
                DataWindowTitleFormatString="Edit - {0}" />
            <x:TemplateField HeaderText="Template Column" Width="60px">
                <ItemTemplate>
                    <a href="javascript:<%# GetEditUrl(Eval("Id"), Eval("Name")) %>">Edit</a>
                </ItemTemplate>
            </x:TemplateField>
        </Columns>
    </x:Grid>
    <x:Window ID="Window1" Title="Edit" Popup="false" EnableIFrame="true" runat="server"
        CloseAction="HidePostBack" EnableConfirmOnClose="true" IFrameUrl="about:blank"
        EnableMaximize="true" EnableResize="true" OnClose="Window1_Close" Target="Top"
        IsModal="True" Width="750px" Height="450px">
    </x:Window>
    </form>
</body>
</html>
