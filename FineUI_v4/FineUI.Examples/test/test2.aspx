<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="FineUI.Examples.test2" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />

        <f:TriggerBox ID="triggerBox" ShowLabel="false" Readonly="false" TriggerIcon="Search"
            OnTriggerClick="triggerBox_TriggerClick" EmptyText="打开弹出窗口" runat="server">
        </f:TriggerBox>
        <f:Window ID="Window1" IconUrl="" runat="server" Popup="false"
            WindowPosition="Center" IsModal="true" Title="Popup Window 1" EnableMaximize="true"
            EnableResize="true" Target="Parent" EnableIFrame="true" IFrameUrl="about:blank"
            Height="500px" Width="650px">
        </f:Window>
    </form>
</body>
</html>
