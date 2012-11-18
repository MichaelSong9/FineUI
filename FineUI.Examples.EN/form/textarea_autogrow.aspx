<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="textarea_autogrow.aspx.cs"
    Inherits="FineUI.Examples.form.textarea_autogrow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:TextArea runat="server" ID="TextArea1" EmptyText="TextArea's height will be auto expanded" Height="50"
        Width="200" AutoGrowHeight="true" AutoGrowHeightMin="50" AutoGrowHeightMax="200">
    </x:TextArea>
    <br />
    <x:Label ID="labResult" runat="server">
    </x:Label>
    </form>
</body>
</html>
