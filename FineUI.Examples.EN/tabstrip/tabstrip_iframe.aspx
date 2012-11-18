<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip_iframe.aspx.cs"
    Inherits="FineUI.Examples.tabstrip.tabstrip_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:TabStrip ID="TabStrip1" Width="750px" Height="450px" ShowBorder="true" ActiveTabIndex="0"
        runat="server" EnableTitleBackgroundColor="False">
        <Tabs>
            <x:Tab ID="Tab1" BodyPadding="5px" Title="Tab 1" runat="server">
                <Items>
                    <x:Label ID="Label1" Text="Label 1" runat="server">
                    </x:Label>
                    <x:ContentPanel ID="ContentPanel1" BodyPadding="5px" ShowBorder="true" ShowHeader="true"
                        Title="ContentPanel" runat="server">
                        This is content in ContentPanel.
                    </x:ContentPanel>
                </Items>
            </x:Tab>
            <x:Tab ID="Tab2" EnableIFrame="true" BodyPadding="5px" IFrameUrl="../layout/window.aspx"
                Title="Tab 2 - IFrame - Delay loaded" runat="server">
            </x:Tab>
            <x:Tab ID="Tab3" EnableIFrame="true" BodyPadding="5px" IFrameUrl="../layout/panel.aspx"
                Title="Tab 3 - IFrame - Delay loaded" runat="server">
            </x:Tab>
        </Tabs>
    </x:TabStrip>
    </form>
</body>
</html>
