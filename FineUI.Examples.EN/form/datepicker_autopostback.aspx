<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datepicker_autopostback.aspx.cs"
    Inherits="FineUI.Examples.form.datepicker_autopostback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="350px" EnableBackgroundColor="true"
        Title="Simple Form (DatePicker-AutoPostBack)" runat="server">
        <Items>
            <x:DatePicker runat="server" Required="true" AutoPostBack="true" OnTextChanged="DatePicker1_TextChanged"
                Label="Start date" EmptyText="Please select start date" ID="DatePicker1" ShowRedStar="True">
            </x:DatePicker>
            <x:DatePicker ID="DatePicker2" Required="true" Readonly="false" CompareControl="DatePicker1"
                DateFormatString="yyyy-MM-dd" CompareOperator="GreaterThanEqual" CompareMessage="End date should greater than start date"
                Label="End date" runat="server" ShowRedStar="True">
            </x:DatePicker>
            <x:Button ID="Button1" runat="server" ValidateForms="SimpleForm1" Text="Submit Form"
                OnClick="Button1_Click">
            </x:Button>
            <x:Label ID="labResult" ShowLabel="false" runat="server">
            </x:Label>
        </Items>
    </x:SimpleForm>
    <br />
    <x:SimpleForm ID="SimpleForm2" BodyPadding="5px" Width="350px" EnableBackgroundColor="true"
        Title="Simple Form (DatePicker-EnableDateSelect)" runat="server">
        <Items>
            <x:DatePicker runat="server" Required="true" EnableDateSelect="true" OnDateSelect="DatePicker3_DateSelect"
                Label="Start date" EmptyText="Please select start date" ID="DatePicker3" ShowRedStar="True">
            </x:DatePicker>
            <x:DatePicker ID="DatePicker4" Required="true" Readonly="false" CompareControl="DatePicker3"
                DateFormatString="yyyy-MM-dd" CompareOperator="GreaterThanEqual" CompareMessage="End date should greater than start date"
                Label="End date" runat="server" ShowRedStar="True">
            </x:DatePicker>
            <x:Button ID="Button2" runat="server" ValidateForms="SimpleForm1" Text="Submit Form" OnClick="Button2_Click">
            </x:Button>
            <x:Label ID="labResult2" ShowLabel="false" runat="server">
            </x:Label>
        </Items>
    </x:SimpleForm>
    </form>
</body>
</html>
