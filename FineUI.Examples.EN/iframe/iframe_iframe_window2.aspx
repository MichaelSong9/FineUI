<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iframe_iframe_window2.aspx.cs"
    Inherits="FineUI.Examples.iframe.iframe_iframe_window2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="formPanel" runat="server" />
    <x:Panel ID="formPanel" ShowBorder="false" ShowHeader="false" Layout="Fit" BodyPadding="5px"
        EnableBackgroundColor="true" runat="server">
        <Toolbars>
            <x:Toolbar>
                <Items>
                    <x:Button ID="btnConfirmFormClose" Text="Save-Close-PostBack Parent Page" EnablePostBack="false" runat="server">
                    </x:Button>
                    <x:Button ID="btnClosePostBack" Text="Close-PostBack Parent Page" EnablePostBack="false" runat="server">
                    </x:Button>
                    <x:Button ID="btnPostBackClosePostBack" Text="Close-PostBack Parent Page" OnClick="btnPostBackClosePostBack_Click"
                        runat="server">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Items>
            <x:SimpleForm ID="SimpleForm1" ShowBorder="false" EnableBackgroundColor="true"
                ShowHeader="false" AutoScroll="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                <Items>
                    <x:Label ID="Label2" Label="Label" Text="sanshi" runat="server" />
                    <x:NumberBox ID="NumberBox1" Label="Number input box" Required="true" ShowRedStar="true" runat="server" />
                    <x:CheckBox ID="CheckBox1" runat="server" Label="CheckBox">
                    </x:CheckBox>
                    <x:TextBox ID="TextBox1" Label="Text input box" runat="server" ShowRedStar="true" Required="True">
                    </x:TextBox>
                    <x:DatePicker ID="DatePicker1" runat="server" SelectedDate="2008-05-09" Label="Date picker"
                        Text="2008-05-09">
                    </x:DatePicker>
                </Items>
            </x:SimpleForm>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
