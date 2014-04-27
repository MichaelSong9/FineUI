<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test4.aspx.cs" Inherits="FineUI.Examples.test4" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title></title>
    <link href="../res/css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager2" runat="server" />
        <f:Panel runat="server" ID="Panel1" ShowHeader="true" Width="500px" Height="300px" Title="HAHAH">
            <Content>
                <div>HAHA</div>
                <asp:Label ID="Label1" runat="server" Text="OK">
                </asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Text="UUUU"></asp:TextBox>
                <f:Form ID="Form2" runat="server" Height="136px" Width="300px" BodyPadding="5px" ShowHeader="true"
                    ShowBorder="true" Title="JJJJ" LabelAlign="Right">
                    <Toolbars>
                        <f:Toolbar ID="Toolbar3" runat="server">
                            <Items>
                                <f:Button ID="Button2" runat="server" Text="增加2">
                                </f:Button>
                                <f:ToolbarFill ID="ToolbarFill1" runat="server">
                                </f:ToolbarFill>
                                <f:Button ID="Button1" runat="server" Text="增加">
                                </f:Button>
                            </Items>
                        </f:Toolbar>
                    </Toolbars>
                   
                </f:Form>
            </Content>
        </f:Panel>
        <f:ContentPanel runat="server" ID="Panel2" ShowHeader="true" Width="500px" Height="300px" Title="HAHAH">
            <div>HAHA</div>
            <asp:Label ID="Label1" runat="server" Text="OK">
            </asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Text="UUUU"></asp:TextBox>
        </f:ContentPanel>
    </form>
</body>
</html>
