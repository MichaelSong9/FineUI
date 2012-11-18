<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist_datatable.aspx.cs"
    Inherits="FineUI.Examples.dropdownlist.dropdownlist_datatable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:DropDownList runat="server" ID="DropDownList1" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </x:DropDownList>
    <br />
    <x:Button ID="btnSelectItem6" Text="Select Item 6" runat="server" OnClick="btnSelectItem6_Click">
    </x:Button>
    <br />
    <x:Label runat="server" ID="labResult">
    </x:Label>
    <br />
    </form>
</body>
</html>
