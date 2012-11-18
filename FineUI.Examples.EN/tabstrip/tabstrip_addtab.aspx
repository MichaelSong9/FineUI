<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabstrip_addtab.aspx.cs"
    Inherits="FineUI.Examples.tabstrip.tabstrip_addtab" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:TabStrip ID="TabStrip1" Width="950px" Height="300px" ShowBorder="true" ActiveTabIndex="0"
        runat="server">
        <Tabs>
            <x:Tab Title="FineUI Demo" EnableIFrame="true" IFrameUrl="http://fineui.com/demo/en/">
            </x:Tab>
        </Tabs>
    </x:TabStrip>
    <br />
    <x:Button ID="btnAddBaidu1" CssClass="inline" Text="Add Tab - Baidu1 (Client-side Code)"
        EnablePostBack="false" runat="server">
    </x:Button>
    <x:Button ID="btnAddCnblogs1" CssClass="inline" Text="Add Tab - Cnblogs1 (Client-side Code)"
        EnablePostBack="false" runat="server">
    </x:Button>
    <x:Button ID="btnRemoveBaidu1" CssClass="inline" Text="Delete Tab - Baidu1 (Client-side Code)"
        EnablePostBack="false" runat="server">
    </x:Button>
    <x:Button ID="btnRemoveCnblogs1" CssClass="inline" Text="Delete Tab - Cnblogs1 (Client-side Code)"
        EnablePostBack="false" runat="server">
    </x:Button>
    <br />
    <br />
    <x:Button ID="btnAddBaidu2" CssClass="inline" Text="Add Tab - Baidu2 (Server-side Code)"
        runat="server" OnClick="btnAddBaidu2_Click">
    </x:Button>
    <x:Button ID="btnAddCnblogs2" CssClass="inline" Text="Add Tab - Cnblogs2 (Server-side Code)"
        runat="server" OnClick="btnAddCnblogs2_Click">
    </x:Button>
    <x:Button ID="btnRemoveBaidu2" CssClass="inline" Text="Delete Tab - Baidu2 (Server-side Code)"
        runat="server" OnClick="btnRemoveBaidu2_Click">
    </x:Button>
    <x:Button ID="btnRemoveCnblogs2" CssClass="inline" Text="Delete Tab - Cnblogs2 (Server-side Code)"
        runat="server" OnClick="btnRemoveCnblogs2_Click">
    </x:Button>
    <br />
    <br />
    <br />
    <br />
    Note: All these tabs are added through JavaScript, that's to say you cann't get these tabs in server-side.
    <br />
    </form>
</body>
</html>
