<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test4.aspx.cs" Inherits="FineUI.Examples.test4" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager2" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="550px" LabelWidth="180px"
        runat="server" EnableBackgroundColor="true" ShowBorder="True" ShowHeader="True"
        Title="简单表单">
        <Items>
            <x:TextBox ID="tbxSfzhm" runat="server" Label="身份证号码" RegexPattern="EMAIL"
                RegexMessage="请输入有效的身份证号码！">
            </x:TextBox>
            <x:Button ID="btnReset" Text="重置表单" ValidateForms="SimpleForm1" runat="server">
            </x:Button>
        </Items>
    </x:SimpleForm>
    </form>
</body>
</html>
