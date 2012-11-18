<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkbox.aspx.cs" Inherits="FineUI.Examples.form.checkbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="350px" EnableBackgroundColor="true"
        Title="Simple Form" runat="server">
        <Items>
            <x:CheckBox ID="CheckBox1" ShowLabel="false" ReadOnly="true" runat="server" Text="Auot PostBack CheckBox" OnCheckedChanged="CheckBox1_CheckedChanged"
                Checked="True" AutoPostBack="True">
            </x:CheckBox>
            <x:Label ID="labResult" runat="server" ShowLabel="false">
            </x:Label>
        </Items>
    </x:SimpleForm>
    </form>
</body>
</html>
