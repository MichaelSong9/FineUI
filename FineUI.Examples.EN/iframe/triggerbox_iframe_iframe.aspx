<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="triggerbox_iframe_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.triggerbox_iframe_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server"></x:PageManager>
    <x:Panel ID="Panel1" runat="server" Layout="Fit" ShowBorder="False" ShowHeader="false"
        BodyPadding="5px" EnableBackgroundColor="true">
        <Toolbars>
            <x:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <x:Button ID="btnClose" Text="Close" EnablePostBack="false" runat="server" Icon="SystemClose">
                    </x:Button>
                    <x:Button ID="btnClosePostBack" OnClick="btnClosePostBack_Click" runat="server"
                        Text="Close-PostBack Parent Page" Icon="SystemSaveNew">
                    </x:Button>
                    <x:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                    </x:ToolbarSeparator>
                    <x:Button ID="btnSelect" OnClick="btnSelect_Click" runat="server" Text="Select value in text input box"
                        Icon="SystemSaveNew">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Items>
            <x:SimpleForm ID="SimpleForm1" ShowBorder="true" ShowHeader="false" Title="SimpleForm"
                EnableBackgroundColor="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                <Items>
                    <x:TextBox ID="TextBox1" Label="Text input box" runat="server" Required="True">
                    </x:TextBox>
                </Items>
            </x:SimpleForm>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
