<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="grid_iframe_window.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_iframe_window" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server" />
    <x:Panel ID="Panel1" runat="server" Layout="Fit" ShowBorder="False" ShowHeader="false"
        BodyPadding="5px" EnableBackgroundColor="true">
        <Toolbars>
            <x:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <x:Button ID="btnClose" EnablePostBack="false" Text="Close" runat="server" Icon="SystemClose">
                    </x:Button>
                    <x:Button ID="btnSaveContinue" Text="Save-Close-PostBack Parent Page" runat="server" Icon="SystemSaveNew"
                        OnClick="btnSaveContinue_Click">
                    </x:Button>
                    <x:Button ID="btnSaveRefresh" Text="Save-Close-Refresh Parent Page" runat="server" Icon="SystemSaveNew"
                        OnClick="btnSaveRefresh_Click">
                    </x:Button>
                    <x:ToolbarFill ID="ToolbarFill1" runat="server">
                    </x:ToolbarFill>
                    <x:ToolbarText ID="ToolbarText1" Text="Tip 1" runat="server">
                    </x:ToolbarText>
                    <x:ToolbarSeparator ID="ToolbarSeparator2" runat="server">
                    </x:ToolbarSeparator>
                    <x:ToolbarText ID="ToolbarText2" Text="Tip 2&nbsp;&nbsp;" runat="server">
                    </x:ToolbarText>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Items>
            <x:Panel ID="Panel2" Layout="Fit" runat="server" ShowBorder="false" ShowHeader="false">
                <Items>
                    <x:SimpleForm ID="SimpleForm1" ShowBorder="false" ShowHeader="false" EnableBackgroundColor="true"
                        AutoScroll="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                        <Items>
                            <x:Label ID="Label2" Label="Proposer" Text="sanshi" runat="server" />
                            <x:Label ID="Label3" Label="Phone" Text="0551-1234567" runat="server" />
                            <x:NumberBox ID="NumberBox1" Label="Amount" Required="true" ShowRedStar="true" runat="server" />
                            <x:CheckBox ID="CheckBox1" runat="server" Text="" Label="Approved">
                            </x:CheckBox>
                            <x:DatePicker ID="DatePicker1" Required="True" ShowRedStar="true" runat="server"
                                SelectedDate="2008-05-09" Label="Apply Date" Text="2008-05-09">
                            </x:DatePicker>
                            <x:TextArea ID="TextArea2" Label="Desc" runat="server" Required="True" ShowRedStar="true" />
                            <x:HtmlEditor ID="HtmlEditor1" Label="Details" Height="150px" runat="server">
                            </x:HtmlEditor>
                        </Items>
                    </x:SimpleForm>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
