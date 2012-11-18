<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fckeditor.aspx.cs" ValidateRequest="false"
    Inherits="FineUI.Examples.aspnet.fckeditor2" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AjaxAspnetControls="FCKeditor1" runat="server" />
    <x:ContentPanel ID="ContentPanel1" runat="server" Width="800px" BodyPadding="5px"
        EnableBackgroundColor="true" ShowBorder="true" ShowHeader="true" Title="Content Panel">
        <FCKeditorV2:FCKeditor ID="FCKeditor1" BasePath="../fckeditor/" runat="server">
        </FCKeditorV2:FCKeditor>
    </x:ContentPanel>
    <br />
    <br />
    <x:Button ID="Button2" runat="server" CssClass="inline" Text="Set FCKEditor's value"
        OnClick="Button2_Click">
    </x:Button>
    <x:Button ID="Button1" runat="server" Text="Get FCKEditor's value" OnClick="Button1_Click">
    </x:Button>
    </form>
</body>
</html>
