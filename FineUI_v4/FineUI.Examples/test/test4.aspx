<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test4.aspx.cs" Inherits="FineUI.Examples.test4" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../res/css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager2" runat="server" />
        <asp:Button ID="Button2" Text="Button2" runat="server" UseSubmitBehavior="true" OnClick="Button2_Click" />
        <asp:Button ID="Button1" Text="Button1" runat="server" UseSubmitBehavior="true" OnClick="Button1_Click" />

        <f:Window ID="windowSourceCode" Icon="PageWhiteCode" Title="源代码" Hidden="true" EnableIFrame="false"
            runat="server" IsModal="true" Width="950px" Height="550px" EnableClose="true" Target="Top"
            EnableMaximize="true" EnableResize="true">
        </f:Window>
    </form>
</body>
</html>
