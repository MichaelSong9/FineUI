<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_compare.aspx.cs" Inherits="FineUI.Examples.form.form_compare" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" Width="600px" LabelWidth="220px"
        runat="server" EnableBackgroundColor="true" ShowBorder="True" ShowHeader="True"
        Title="Simple Form">
        <Items>
            <x:DatePicker ID="DatePicker1" Label="Start date" Required="true" runat="server">
            </x:DatePicker>
            <x:DatePicker ID="DatePicker2" Label="End date (Greater than Start date)" Required="true" CompareControl="DatePicker1"
                CompareOperator="GreaterThan" CompareMessage="End date should greater than Start date！" runat="server">
            </x:DatePicker>
            <x:Label Text="&nbsp;" runat="server">
            </x:Label>
            <x:TextBox ID="TextBox1" Required="true" Label="TextBox 1" runat="server">
            </x:TextBox>
            <x:TextBox ID="TextBox2" Required="true" Label="TextBox 2 (Equal to TextBox 1)" CompareControl="TextBox1"
                CompareOperator="Equal" CompareMessage="TextBox 2 should be equal to TextBox 1！" runat="server">
            </x:TextBox>
            <x:Label Text="&nbsp;" runat="server">
            </x:Label>
            <x:NumberBox ID="NumberBox1" Required="true" Label="Number Box 1" runat="server">
            </x:NumberBox>
            <x:NumberBox ID="NumberBox2" Required="true" Label="Number Box 2 (Greater than or equal to Number Box 1)" CompareControl="NumberBox1"
                CompareOperator="GreaterThanEqual" CompareMessage="Number Box 2 should be greater than or equal to Number Box 1!" runat="server">
            </x:NumberBox>
            <x:Label Text="&nbsp;" runat="server">
            </x:Label>
            <x:Label ID="Label1" runat="server" Label="Label 1" Text="88">
            </x:Label>
            <x:TextBox ID="TextBox3" Required="true" Label="TextBox 3 (Greater than or equal to Label 1)" CompareControl="Label1"
                CompareOperator="GreaterThanEqual" CompareType="Int" CompareMessage="TextBox 3 should be greater than or equal to Label 1！"
                runat="server">
            </x:TextBox>
            <x:Label runat="server">
            </x:Label>
            <x:Button ID="btnSubmit" ValidateForms="SimpleForm1" Text="Submit Form" runat="server">
            </x:Button>
        </Items>
    </x:SimpleForm>
    </form>
</body>
</html>
