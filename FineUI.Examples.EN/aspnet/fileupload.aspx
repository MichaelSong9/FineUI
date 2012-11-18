<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="fileupload.aspx.cs"
    Inherits="FineUI.Examples.aspnet.fileupload2" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" EnableAjax="false" />
    <x:ContentPanel ID="ContentPanel1" runat="server" Width="800px" BodyPadding="5px"
        EnableBackgroundColor="true" ShowHeader="true" Title="Content Panel">
        Asp.Net FileUpload control:
        <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
        <br />
        <br />
        <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" BasePath="~/fckeditor/" Height="300px">
        </FCKeditorV2:FCKeditor>
        <br />
        <asp:Button ID="btnCloseWindow2" runat="server" Text="Upload file and get FCKEditor's value" 
        OnClick="btnCloseWindow2_Click"></asp:Button>
        <br />
        <br />
        Note: When use asp:FileUpload on page, you must set PageManager's EnableAjax property be false.
        <br />
        <br />
        <div style="color:Red; font-weight: bold;">
            FineUI's FileUpload control is recommended, so that you don't need to set EnableAjax be false.
        </div>
    </x:ContentPanel>
    </form>
</body>
</html>
