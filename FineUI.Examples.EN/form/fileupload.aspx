<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileupload.aspx.cs" Inherits="FineUI.Examples.form.fileupload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .result img
        {
            border: 1px solid #CCCCCC;
            max-width: 550px;
            padding: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" EnableBackgroundColor="true"
        ShowBorder="True" Title="Form" Width="350px" ShowHeader="True">
        <Items>
            <x:TextBox runat="server" Label="UserName" ID="tbxUseraName" Required="true" ShowRedStar="true">
            </x:TextBox>
            <x:FileUpload runat="server" ID="filePhoto" EmptyText="Please select a photo" Label="User Photo" Required="true"
                ShowRedStar="true">
            </x:FileUpload>
            <x:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" ValidateForms="SimpleForm1"
                Text="Submit">
            </x:Button>
        </Items>
    </x:SimpleForm>
    <x:Label ID="labResult" CssClass="result" EncodeText="false" runat="server">
    </x:Label>
    </form>
</body>
</html>
