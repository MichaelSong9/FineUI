<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="layout_panel.aspx.cs" Inherits="FineUI.Examples.form.layout_panel" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Form ID="Form2" Width="600px" BodyPadding="5px" Title="表单" runat="server">
        <Rows>
            <x:FormRow ColumnWidths="50% 60px 60px">
                <Items>
                    <x:TextBox ID="TextBox1" Label="用户名" runat="server">
                    </x:TextBox>
                    <x:Button ID="Button1" Text="按钮一" CssClass="inline" runat="server">
                    </x:Button>
                    <x:Button ID="Button2" Text="按钮二" runat="server">
                    </x:Button>
                </Items>
            </x:FormRow>
        </Rows>
    </x:Form>
    </form>
</body>
</html>
