<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="textbox_autopostback.aspx.cs"
    Inherits="FineUI.Examples.form.textbox_autopostback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" LabelWidth="100px"
        EnableBackgroundColor="true" ShowBorder="True" Title="Simple Form" Width="400px" ShowHeader="True">
        <Items>
            <x:TextBox runat="server" ID="TextBox1" Label="TextBox 1" EmptyText="Auto postback when TextBox's value changed"
                AutoPostBack="true" OnTextChanged="TextBox1_TextChanged">
            </x:TextBox>
            <x:TextBox ID="TextBox2" runat="server" Label="TextBox 2" Text="">
            </x:TextBox>
            <x:Button runat="server" Text="Submit">
            </x:Button>
        </Items>
    </x:SimpleForm>
    <br />
    <x:Label ID="labResult" runat="server">
    </x:Label>
    </form>
</body>
</html>
