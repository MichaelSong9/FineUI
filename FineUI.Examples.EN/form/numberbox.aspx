<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="numberbox.aspx.cs" Inherits="FineUI.Examples.form.numberbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="450px" EnableBackgroundColor="true"
        Title="Simple Form" runat="server" LabelWidth="150px">
        <Items>
            <x:NumberBox Label="Integer from 0 to 9" ID="NumberBox1" runat="server" MaxValue="9" MinValue="0"
                NoDecimal="true" NoNegative="True" Required="True" EmptyText="比如 8" ShowRedStar="True" />
            <x:NumberBox Label="Integer above 100" ID="NumberBox3" runat="server" EmptyText="比如 99"
                MinValue="100" NoDecimal="True" DecimalPrecision="4" NoNegative="True" Required="True"
                ShowRedStar="True" />
            <x:NumberBox ID="NumberBox4" runat="server" EmptyText="Precision is 2, for example: 1.35" Label="Decimal from 0 to 1"
                MaxValue="1" MinValue="0" NoNegative="True" Required="True" ShowRedStar="True">
            </x:NumberBox>
            <x:Button ID="btnSubmit" runat="server" ValidateForms="SimpleForm1" Text="Submit Form"
                OnClick="btnSubmit_Click">
            </x:Button>
        </Items>
    </x:SimpleForm>
    </form>
</body>
</html>
