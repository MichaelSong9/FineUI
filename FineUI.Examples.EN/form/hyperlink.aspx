<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hyperlink.aspx.cs" Inherits="FineUI.Examples.form.hyperlink" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:HyperLink ID="HyperLink3" Text="Open Baidu in a new window" Target="_blank" NavigateUrl="http://www.baidu.com/"
        runat="server">
    </x:HyperLink>
    <br />
    <x:HyperLink ID="HyperLink1" EncodeText="false" Text="Open <span style='color:red;'>Google</span> in a new window"
        Target="_blank" NavigateUrl="http://www.google.com/" runat="server">
    </x:HyperLink>
    <br />
    <x:HyperLink ID="HyperLink2" Enabled="true" Text="Click to popup a alert dialog" NavigateUrl="javascript:;" runat="server">
    </x:HyperLink>
    <br />
    <x:Button ID="btnChangeEnable" Text="Enable/Disable the last link" runat="server" OnClick="btnChangeEnable_Click" />
    </form>
</body>
</html>
