<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajax_loading.aspx.cs" Inherits="FineUI.Examples.other.ajax_loading" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AjaxLoadingType="Mask" runat="server" />
    <x:Button Text="No AJAX loading" EnableAjaxLoading="false" runat="server" ID="Button1"
        OnClick="Button1_Click">
    </x:Button>
    <br />
    <x:Button Text="Use PageManager-defined AJAX loading style" runat="server" ID="Button2" OnClick="Button2_Click">
    </x:Button>
    <br />
    <x:Button Text="Default AJAX loading style" AjaxLoadingType="Default" runat="server" ID="Button3"
        OnClick="Button3_Click">
    </x:Button>
    <br />
    <x:Button Text="Mask AJAX loading style" AjaxLoadingType="Mask" runat="server" ID="Button4"
        OnClick="Button4_Click">
    </x:Button>
    <br />
    </form>
</body>
</html>
