<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip_enableclose.aspx.cs"
    Inherits="FineUI.Examples.tabstrip.tabstrip_enableclose" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:TabStrip ID="TabStrip1" Width="750px" Height="300px" ShowBorder="true" ActiveTabIndex="1"
        runat="server">
        <Tabs>
            <x:Tab ID="Tab1" Title="Tab 1" EnableClose="false" EnableBackgroundColor="true"
                BodyPadding="5px">
                <Items>
                    <x:Label ID="Label5" Text="Text in Tab 1" runat="server" />
                </Items>
            </x:Tab>
            <x:Tab ID="Tab2" Title="Tab 2" BodyPadding="5px" EnableClose="true" EnableBackgroundColor="true">
                <Items>
                    <x:Label ID="Label4" Text="Text in Tab 2" runat="server" />
                </Items>
            </x:Tab>
            <x:Tab ID="Tab3" Title="Tab 3" Hidden="true" BodyPadding="5px" EnableClose="true" EnableBackgroundColor="true">
                <Items>
                    <x:Label ID="Label3" Text="Text in Tab 3" runat="server" />
                </Items>
            </x:Tab>
            <x:Tab ID="Tab4" Title="Tab 4" BodyPadding="5px" EnableClose="true" EnableBackgroundColor="true">
                <Items>
                    <x:Label ID="Label2" Text="Text in Tab 4" runat="server" />
                </Items>
            </x:Tab>
            <x:Tab ID="Tab5" EnableClose="true" Title="Tab 5" BodyPadding="5px" EnableBackgroundColor="true">
                <Items>
                    <x:Label ID="Label1" Text="Text in Tab 5" runat="server" />
                </Items>
            </x:Tab>
        </Tabs>
    </x:TabStrip>
    <br />
    <br />
    <x:Button ID="btnShowInClient" Text="Show Tab 3 (Client-side Code)" CssStyle="margin-right:5px;float:left;"
        EnablePostBack="false" runat="server">
    </x:Button>
    <x:Button ID="btnHideInClient" Text="Hide Tab 3 (Client-side Code)" EnablePostBack="false"
        runat="server">
    </x:Button>
    <br />
    <x:Button ID="btnShowInServer" Text="Show Tab 3 (Server-side Code)" CssStyle="margin-right:5px;float:left;"
        runat="server" OnClick="btnShowInServer_Click">
    </x:Button>
    <x:Button ID="btnHideInServer" Text="Hide Tab 3 (Server-side Code)" runat="server" OnClick="btnHideInServer_Click">
    </x:Button>
    <br />
    <br />
    <br />
    </form>
</body>
</html>
