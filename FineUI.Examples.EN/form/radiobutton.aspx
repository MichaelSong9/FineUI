<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="radiobutton.aspx.cs" Inherits="FineUI.Examples.form.radiobutton" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" Width="700px" runat="server" Title="Simple Form"
        EnableBackgroundColor="true" BodyPadding="5px" ShowBorder="True" LabelWidth="150px"
        ShowHeader="True">
        <Items>
            <x:RadioButton ID="rbtnSingleRadio" Label="Radio Button" Text="Item" runat="server">
            </x:RadioButton>
            <x:Button ID="btnSelectSingleRadio" Text="Select/Unselect previous RadioButton"
                OnClick="btnSelectSingleRadio_Click" runat="server">
            </x:Button>
            <x:Label runat="server" Label="&nbsp;" LabelSeparator="">
            </x:Label>
            <x:RadioButton ID="rbtnFirst" Label="RadioButton (Group)" Checked="true" GroupName="MyRadioGroup1"
                Text="Item 1" runat="server">
            </x:RadioButton>
            <%-- Label="&nbsp;" LabelSeparator="" are to make sure these three RadioButtons have the same height  --%>
            <x:RadioButton ID="rbtnSecond" GroupName="MyRadioGroup1" Label="&nbsp;" LabelSeparator=""
                Text="Item 2" runat="server">
            </x:RadioButton>
            <x:RadioButton ID="rbtnThird" GroupName="MyRadioGroup1" Label="&nbsp;" LabelSeparator=""
                Text="Item 3" runat="server">
            </x:RadioButton>
            <x:Button ID="btnSelectSecondRadio" Text="Select next button in previous group"
                OnClick="btnSelectSecondRadio_Click" runat="server">
            </x:Button>
        </Items>
    </x:SimpleForm>
    </form>
</body>
</html>
