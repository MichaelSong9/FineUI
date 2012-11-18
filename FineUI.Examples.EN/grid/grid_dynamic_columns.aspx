<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_dynamic_columns.aspx.cs"
    Inherits="FineUI.Examples.data.grid_dynamic_columns" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" runat="server" Width="650px" EnableCheckBoxSelect="true" EnableRowNumber="true"
        Title="Table (Dynamic created columns)">
    </x:Grid>
    <br />
    <x:Button ID="Button1" runat="server" Text="Check Selected Rows" OnClick="Button1_Click">
    </x:Button>
    <br />
    <x:Label ID="labResult" EncodeText="false" runat="server">
    </x:Label>
    </form>
</body>
</html>
