<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="triggerbox_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.triggerbox_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" Title="Popup Window in Parent Page" EnableBackgroundColor="true" BodyPadding="5px"
        runat="server" Width="600px" EnableCollapse="True">
        <Items>
            <x:TriggerBox ID="TriggerBox1" EnableEdit="false" Text="This trigger box is readonly" EnablePostBack="false"
                TriggerIcon="Search" Label="Trigger box" runat="server">
            </x:TriggerBox>
            <x:DatePicker ID="DatePicker1" Label="Date picker" Required="true" runat="server">
            </x:DatePicker>
            <x:Button ID="Button1" runat="server" OnClick="Button1_Click" ValidateForms="SimpleForm1"
                TabIndex="3" Text="Submit">
            </x:Button>
            <x:HiddenField ID="HiddenField1" runat="server">
            </x:HiddenField>
        </Items>
    </x:SimpleForm>
    <x:Window ID="Window1" Title="Edit" Popup="false" EnableIFrame="true" runat="server"
        EnableMaximize="true" EnableResize="true" Target="Parent" OnClose="Window1_Close"
        IsModal="True" Width="650px" Height="450px">
    </x:Window>
    <br />
    <x:SimpleForm ID="SimpleForm2" Title="Popup Window in This Page" EnableBackgroundColor="true" BodyPadding="5px"
        runat="server" Width="600px" EnableCollapse="True">
        <Items>
            <x:HiddenField ID="HiddenField2" runat="server">
            </x:HiddenField>
            <x:TriggerBox ID="TriggerBox2" EnableEdit="false" Text="This trigger box is readonly" EnablePostBack="false"
                TriggerIcon="Search" Label="Trigger box" runat="server">
            </x:TriggerBox>
            <x:Button ID="Button2" runat="server" OnClick="Button2_Click" TabIndex="3" Text="Submit">
            </x:Button>
        </Items>
    </x:SimpleForm>
    <x:Window ID="Window2" Title="Edit" Popup="false" EnableIFrame="true" runat="server"
        EnableMaximize="true" EnableResize="true" Target="Self" OnClose="Window2_Close"
        IsModal="True" Width="650px" Height="450px">
    </x:Window>
    <br />
    <x:Label ID="labResult" CssStyle="font-weight:bold;" runat="server">
    </x:Label>
    <br />
    </form>
</body>
</html>
