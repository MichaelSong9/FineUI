<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addtab.aspx.cs" Inherits="FineUI.Examples.other.addtab" %>

<!DOCTYPE html>
<html>
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
                text: "你好 FineUI",
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
        Text="打开示例《你好 FineUI》">
    </x:Button>
    </form>
</body>
</html>
