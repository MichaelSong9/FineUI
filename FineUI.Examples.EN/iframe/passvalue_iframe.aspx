<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passvalue_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.passvalue_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" Title="Form" EnableBackgroundColor="true" BodyPadding="5px"
        runat="server" Width="500px" EnableCollapse="True">
        <Items>
            <x:TextBox Label="Your province" ID="TextBox1" runat="server">
            </x:TextBox>
            <x:Button ID="Button1" EnablePostBack="false" runat="server" Text="Select from list">
            </x:Button>
        </Items>
    </x:SimpleForm>
    <x:Window ID="Window1" Title="Edit" Popup="false" EnableIFrame="true" runat="server"
        EnableMaximize="true" EnableResize="true" Target="Parent" OnClose="Window1_Close"
        IsModal="True" Width="750px" Height="450px">
    </x:Window>
    <x:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
    </x:Label>
    <br />
    </form>
</body>
</html>
