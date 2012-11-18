<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="htmleditor.aspx.cs"
    Inherits="FineUI.Examples.form.htmleditor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" EnableBackgroundColor="true" runat="server"
        Title="Form" Width="750px">
        <Items>
            <x:HtmlEditor runat="server" Label="HtmlEditor" ID="HtmlEditor1" Height="250px">
            </x:HtmlEditor>
            <x:TextArea ID="TextArea1" Label="Multi-line TextArea" runat="server" Height="150px">
            </x:TextArea>
            <x:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get HtmlEditor's content"
                CssClass="inline">
            </x:Button>
            <x:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Set HtmlEditor's content">
            </x:Button>
        </Items>
    </x:SimpleForm>
    </form>
</body>
</html>
