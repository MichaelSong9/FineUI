<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="custom_postback.aspx.cs"
    Inherits="FineUI.Examples.other.custom_postback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" runat="server" Width="600px" BodyPadding="5px" EnableBackgroundColor="true"
        Title="Simple Form">
        <Items>
            <x:TextBox ID="TextBox1" runat="server" ShowLabel="false" EmptyText="Input some text and press ENTER key">
            </x:TextBox>
            <x:TextBox ID="TextBox2" runat="server" ShowLabel="false">
            </x:TextBox>
        </Items>
    </x:SimpleForm>
    </form>
    <script type="text/javascript">

        function onReady() {
            var textbox1ID = '<%= TextBox1.ClientID %>';
            var textbox1 = Ext.getCmp(textbox1ID);
            textbox1.on("specialkey", function (box, e) {
                if (e.getKey() == e.ENTER) {
                    __doPostBack(textbox1ID, 'specialkey');
                }
            });
        }
    
    </script>
</body>
</html>
