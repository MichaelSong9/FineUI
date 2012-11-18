<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="triggerbox.aspx.cs" Inherits="FineUI.Examples.form.triggerbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" EnableBackgroundColor="true"
        ShowBorder="True" Title="Form" Width="350px" ShowHeader="True">
        <Items>
            <x:TriggerBox ID="tbxMyBox1" ShowLabel="false" Readonly="false" TriggerIcon="Search"
                OnTriggerClick="tbxMyBox1_TriggerClick" EmptyText="Open popup window" runat="server">
            </x:TriggerBox>
        </Items>
    </x:SimpleForm>
    <x:Window ID="Window1" Title="Popup Window" BodyPadding="10px" IsModal="true" Hidden="true"
        EnableMaximize="true" EnableResize="true" Target="Top" Width="450px" Height="300px"
        runat="server">
        <Items>
            <x:Button ID="btnCloseWindow" Text="Close current window" OnClick="btnCloseWindow_Click" runat="server">
            </x:Button>
        </Items>
    </x:Window>
    </form>
</body>
</html>
