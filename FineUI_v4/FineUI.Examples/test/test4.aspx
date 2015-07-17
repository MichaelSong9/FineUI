<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test4.aspx.cs" Inherits="FineUI.Examples.test4" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="main" runat="server" />
        <f:Panel runat="server" ID="main" Layout="VBox" BoxConfigAlign="Stretch">
            <Items>
                <f:Form ID="Form2" runat="server" Height="100">
                    <Rows>
                        <f:FormRow>
                            <Items>
                                <f:Button ID="Button1" runat="server" Text="显示/隐藏panel3" OnClick="Unnamed_Click"></f:Button>
                            </Items>
                        </f:FormRow>
                    </Rows>
                </f:Form>
                <f:Panel ID="Panel1" runat="server" BoxFlex="1"></f:Panel>
                <f:Panel ID="Panel2" runat="server" Height="100" Title="panel3" Hidden="true"></f:Panel>
            </Items>
        </f:Panel>
    </form>
</body>
</html>
