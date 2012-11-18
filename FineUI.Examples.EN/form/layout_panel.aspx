<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="layout_panel.aspx.cs" Inherits="FineUI.Examples.form.layout_panel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Form ID="Form2" Width="600px" BodyPadding="5px" Title="Form" runat="server">
        <Rows>
            <x:FormRow ColumnWidths="50% 60px 60px">
                <Items>
                    <x:TextBox ID="TextBox1" Label="UserName" runat="server">
                    </x:TextBox>
                    <x:Button ID="Button1" Text="Button 1" CssClass="inline" runat="server">
                    </x:Button>
                    <x:Button ID="Button2" Text="Button 2" runat="server">
                    </x:Button>
                </Items>
            </x:FormRow>
        </Rows>
    </x:Form>
    </form>
</body>
</html>
