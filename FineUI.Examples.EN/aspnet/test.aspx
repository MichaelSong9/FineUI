<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="ExtAspNet.Examples.aspnet.test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <ext:PageManager ID="PageManager1" AjaxAspnetControls="Label1,Literal1,Literal2_Container"
        runat="server" />
    <asp:Label ID="Label1" Text="Label1" runat="server"></asp:Label>
    <br />
    <asp:Literal ID="Literal1" Text="Literal1" runat="server"></asp:Literal>
    <br />
    <div id="Literal2_Container">
        <asp:Literal ID="Literal2" Text="Literal2" runat="server"></asp:Literal>
    </div>
    <br />
    <ext:Button ID="Button1" runat="server" Text="点击此Button弹出一个带滚动条的window" OnClick="Button1_Click">
    </ext:Button>
    <br />
    <ext:Window ID="EditTaskWin" Title="测试window里滚动条" Hidden="true" EnableIFrame="true"
        runat="server" IsModal="true" Width="500px" Height="300px" EnableClose="true"
        EnableMaximize="true" Target="Parent" WindowPosition="Center">
    </ext:Window>
    <div style="width: 486px; height: 566px; border: solid 1px red;">
        <iframe frameborder="0" src="./TestWindow.htm" name="x1_3337cc1b7b50416b883681252a6dd644"
            style="overflow:auto;height:100%;width:100%; border: solid 1px green;">
        </iframe>
    </div>
    </form>
</body>
</html>
