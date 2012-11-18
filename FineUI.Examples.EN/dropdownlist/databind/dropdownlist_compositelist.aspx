<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist_compositelist.aspx.cs"
    Inherits="FineUI.Examples.dropdownlist.dropdownlist_compositelist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:DropDownList runat="server" ID="DropDownList1">
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
