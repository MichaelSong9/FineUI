<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist_forceselection.aspx.cs"
    Inherits="FineUI.Examples.dropdownlist.dropdownlist_forceselection" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:DropDownList runat="server" ID="DropDownList1" EnableEdit="true" ForceSelection="false">
        <x:ListItem Text="Item 1" Value="Value1" Selected="true" />
        <x:ListItem Text="Item 2 (Unselectable)" Value="Value2" EnableSelect="false" />
        <x:ListItem Text="Item 3 (Unselectable)" Value="Value3" EnableSelect="false" />
        <x:ListItem Text="Item 4" Value="Value4" />
        <x:ListItem Text="Item 5" Value="Value5" />
        <x:ListItem Text="Item 6" Value="Value6" />
        <x:ListItem Text="Item 7" Value="Value7" />
        <x:ListItem Text="Item 8" Value="Value8" />
        <x:ListItem Text="Item 9" Value="Value9" />
        <x:ListItem Text="Another Item < L > 1.5" Value="Another Item < L > 1.5" />
    </x:DropDownList>
    <br />
    <x:Button ID="btnSelectItem6" Text="Select Item 6" runat="server" OnClick="btnSelectItem6_Click"
        CssClass="inline">
    </x:Button>
    <x:Button ID="btnGetSelection" Text="Get selected item of this list" runat="server" OnClick="btnGetSelection_Click">
    </x:Button>
    <br />
    <x:Label runat="server" ID="labResult">
    </x:Label>
    <br />
    <br />
    </form>
</body>
</html>
