<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkboxlist_update.aspx.cs"
    Inherits="FineUI.Examples.form.checkboxlist_update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" Width="700px" runat="server" LabelWidth="120px"
        EnableBackgroundColor="true" BodyPadding="5px" ShowBorder="True" ShowHeader="True"
        Title="Simple Form">
        <Items>
            <x:CheckBoxList ID="CheckBoxList1" Label="List 1" runat="server">
                <x:CheckItem Text="Item 1" Value="value1" />
                <x:CheckItem Text="Item 2" Value="value2" Selected="true" />
                <x:CheckItem Text="Item 3" Value="value3" Selected="true" />
            </x:CheckBoxList>
            <x:Button ID="btnUpdateList1" CssClass="inline" Text="Update list 1" OnClick="btnUpdateList1_Click"
                runat="server">
            </x:Button>
            <x:Button ID="btnCheckedItemsList1" Text="Get selected items of list 1" OnClick="btnCheckedItemsList1_Click"
                runat="server">
            </x:Button>
            <x:Label runat="server" Text="&nbsp;">
            </x:Label>
            <x:CheckBoxList ID="CheckBoxList2" Label="List 2 (Vertical)" ColumnNumber="3" ColumnVertical="true"
                runat="server">
            </x:CheckBoxList>
            <x:Button ID="btnUpdateList2" CssClass="inline" Text="Update list 2" OnClick="btnUpdateList2_Click"
                runat="server">
            </x:Button>
            <x:Button ID="btnCheckedItemsList2" Text="Get selected items of list 2" OnClick="btnCheckedItemsList2_Click"
                runat="server">
            </x:Button>
            <x:Label ID="Label1" runat="server" Text="&nbsp;">
            </x:Label>
            <x:CheckBoxList ID="CheckBoxList4" Label="List 4 (Empty list)" ColumnNumber="3" ColumnVertical="false"
                runat="server">
            </x:CheckBoxList>
            <x:Button ID="btnUpdateList4" CssClass="inline" Text="Update list 4" OnClick="btnUpdateList4_Click"
                runat="server">
            </x:Button>
            <x:Button ID="btnCheckedItemsList4" Text="Get selected items of list 4" OnClick="btnCheckedItemsList4_Click"
                runat="server">
            </x:Button>
        </Items>
    </x:SimpleForm>
    <br />
    <x:CheckBoxList ID="CheckBoxList3" Width="700px" Label="List 3" ColumnNumber="3" ColumnVertical="false"
        runat="server">
        <x:CheckItem Text="Item 1" Value="value1" />
        <x:CheckItem Text="Item 2" Value="value2" />
        <x:CheckItem Text="Item 3" Value="value3" />
        <x:CheckItem Text="Item 4" Value="value4" />
        <x:CheckItem Text="Item 5" Value="value5" Selected="true" />
        <x:CheckItem Text="Item 6" Value="value6" Selected="true" />
        <x:CheckItem Text="Item 7" Value="value7" Selected="true" />
        <x:CheckItem Text="Item 8" Value="value8" />
    </x:CheckBoxList>
    <x:Button ID="btnUpdateList3" CssClass="inline" Text="Update list 3" OnClick="btnUpdateList3_Click"
        runat="server">
    </x:Button>
    <x:Button ID="btnCheckedItemsList3" Text="Get selected items of list 3" OnClick="btnCheckedItemsList3_Click"
        runat="server">
    </x:Button>
    <br />
    </form>
</body>
</html>
