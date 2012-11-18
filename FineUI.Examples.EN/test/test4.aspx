<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test4.aspx.cs" Inherits="FineUI.Examples.test4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager2" runat="server" AutoSizePanelID="TabStrip1" />
    <x:TabStrip ID="TabStrip1" runat="server" ActiveTabIndex="0" EnableDeferredRender="false"
        ShowBorder="True">
        <Tabs>
            <x:Tab ID="Tab1" runat="server" BodyPadding="5px" EnableBackgroundColor="true"
                Title="Tab1">
                <Items>
                    <x:Button ID="Button1" runat="server" Text="Button">
                    </x:Button>
                </Items>
            </x:Tab>
            <x:Tab ID="Tab2" runat="server" BodyPadding="5px" EnableBackgroundColor="true"
                Title="Tab2">
                <Items>
                    <x:Tree ID="Tree1" runat="server" AutoScroll="true" EnableArrows="true" Title="Tree">
                    </x:Tree>
                </Items>
            </x:Tab>
        </Tabs>
    </x:TabStrip>
    <%-- <x:Button ID="Button1" OnClick="Button1_Click" Text="&lt;&lt;" runat="server">
    </x:Button>
    <x:TextBox ID="TextBox1" runat="server">
    </x:TextBox>--%>
    <%--<x:FileUpload ID="FileUpload1" runat="server"></x:FileUpload>--%>
    <%--<x:ContentPanel ID="CpShow" runat="server" ShowHeader="true" EnableBackgroundColor="true"
        ShowBorder="true">
        <asp:Button ID="Button2" runat="server" Text="Button2" UseSubmitBehavior="true" OnClick="Button2_Click"></asp:Button>
        <asp:Button ID="Button3" runat="server" Text="Button3" UseSubmitBehavior="true" OnClick="Button3_Click"></asp:Button>
    </x:ContentPanel>--%>
    <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem Text="Item1" Value="Value1"></asp:ListItem>
        <asp:ListItem Text="Item2" Selected="True" Value="Value2"></asp:ListItem>
        <asp:ListItem Text="Item3" Value="Value3"></asp:ListItem>
    </asp:RadioButtonList>--%>
    </form>
</body>
</html>
