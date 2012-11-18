<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addtab.aspx.cs" Inherits="FineUI.Examples.other.addtab" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        if (top == window) {
            window.location.href = "../default.aspx#/other/addtab.aspx";
        }

        function openHelloFineUI() {
            var node = {
                attributes: {
                    href: "/basic/hello.aspx"
                },
                text: "Hello FineUI",
                id: "hello_fineui_example"
            };

            //window.parent.addExampleTab(node);
            parent.addExampleTab.apply(parent, [node]);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Button ID="Button1" runat="server" EnablePostBack="false" OnClientClick="openHelloFineUI();"
        Text="Open “Hello FineUI”">
    </x:Button>
    </form>
</body>
</html>
