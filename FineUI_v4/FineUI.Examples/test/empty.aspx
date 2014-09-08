<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="empty.aspx.cs" Inherits="FineUI.Examples.test.empty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <asp:Literal runat="server" ID="testLit"></asp:Literal>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager runat="server"></f:PageManager>
        <f:DropDownList runat="server" Width="100" ID="ddlTest" OnSelectedIndexChanged="ddlTest_SelectedIndexChanged">
            <f:ListItem Text="ddlTest_Sele tedIn dexChangedddlTest_Sel ectedIndexChanged" Value="1" />
            <f:ListItem Text="Text2" Value="2" />
            <f:ListItem Text="Text3" Value="3" />
            <f:ListItem Text="Text4" Value="4" />
            <f:ListItem Text="ddlTest_SelectedInde xChangedddlTe st_SelectedI ndexChanged" Value="1" />
            <f:ListItem Text="Text2" Value="2" />
            <f:ListItem Text="Text3" Value="3" />
            <f:ListItem Text="Text4" Value="4" />
            <f:ListItem Text="ddlTest_Sele ctedIndexChangeddd Test_Select edIndexChanged" Value="1" />
            <f:ListItem Text="Text2" Value="2" />
            <f:ListItem Text="Text3" Value="3" />
            <f:ListItem Text="ddlTest_SelectedInd exChangedddlTest_Se lectedI ndexChanged" Value="1" />
            <f:ListItem Text="Text2" Value="2" />
            <f:ListItem Text="Text3" Value="3" />
            <f:ListItem Text="Text4" Value="4" />

            <f:ListItem Text="Text4" Value="4" />
        </f:DropDownList>
        <f:Button runat="server" ID="toggleDdl" Text="启用/禁用下拉列表" OnClick="toggleDdl_Click" />

    </form>
</body>
</html>
