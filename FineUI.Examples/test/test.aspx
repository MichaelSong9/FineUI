<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="test.aspx.cs"
    Inherits="FineUI.Examples.test.test" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function ClientSubMit() {
            window.document.forms[0].submit();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
<x:Panel Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Start" BoxConfigPadding="5"
    BoxConfigChildMargin="0 0 5 0">
    <Items>
        <x:Panel BoxFlex="1"></x:Panel>
        <x:Panel Height="100px"></x:Panel>
        <x:Panel BoxFlex="2" BoxMargin="0"></x:Panel>
    </Items>
</x:Panel>
    <x:PageManager ID="PageManager1" runat="server" EnableAjax="true" AutoSizePanelID="Form2" />
    <x:Form ID="Form2" runat="server" BodyPadding="5px" EnableBackgroundColor="true"
        Title="Form" ShowBorder="true" ShowHeader="true">
        <Rows>
            <x:FormRow>
                <Items>
                    <x:TextBox ID="TextBox1" runat="server" Label="验证码" Width="200px" />
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:Image ID="Image1" runat="server" Label="" ImageUrl="~/Common/ValidateCode.aspx"
                        Width="100px" />
                </Items>
            </x:FormRow>
            <x:FormRow ColumnWidths="50px 50px">
                <Items>
                    <x:Button ID="Button1" runat="server" Text="确定" ValidateForms="Form2" Type="Submit" />
                    <x:Button ID="btnClose" runat="server" Text="取消" EnablePostBack="False" />
                </Items>
            </x:FormRow>
        </Rows>
    </x:Form>
    <%--<x:Button ID="Button1" Text="测试客户端提交" runat="server" EnablePostBack="false" OnClientClick="ClientSubMit()"
        CssClass="inline">
    </x:Button>--%>
    <%-- <x:Button ID="btnSend" Text="发送" runat="server" EnablePostBack="false" OnClientClick="Test();">
    </x:Button>
    <x:TextBox runat="server" ID="TextBox1" EmptyText="文本框值改变则自动回发" ShowLabel="false"
        Width="200" AutoPostBack="false">
    </x:TextBox>
    <asp:DropDownList runat="server">
        <asp:ListItem Text="Text1" Value="Value1"></asp:ListItem>
        <asp:ListItem Text="Text1" Value="Value1"></asp:ListItem>
        <asp:ListItem Text="普通型1<L>1.5" Value="普通型1<L>1.5"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <x:Form Width="600px" BodyPadding="5px" Title="表单" runat="server">
        <Rows>
            <x:FormRow ColumnWidths="50% 50%">
                <Items>
                    <x:TextBox Label="用户名" runat="server">
                    </x:TextBox>
                    <x:Panel ID="Panel1" ShowHeader="false" ShowBorder="false" runat="server">
                        <Items>
                            <x:Button Text="按钮一" CssClass="inline" runat="server">
                            </x:Button>
                            <x:Button ID="Button1" Text="按钮二" runat="server">
                            </x:Button>
                        </Items>
                    </x:Panel>
                </Items>
            </x:FormRow>
        </Rows>
    </x:Form>--%>
    </form>
</body>
</html>
