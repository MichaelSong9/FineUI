<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist.aspx.cs" Inherits="FineUI.Examples.dropdownlist.dropdownlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:DropDownList runat="server" ID="DropDownList1">
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
    <script type="text/javascript">
        function onReady() {

            //X.util.setHiddenFieldValue('X_STATE', JSON.stringify(X.ajax.getXState()));
           // document.write(Ext.get("X_STATE").dom.value);

            //document.write(JSON.stringify(X.ajax.getXState()));
            //document.write(Ext.encode(X.ajax.getXState()));

            //X.util.setHiddenFieldValue("TestNode1", '{"X_Items":[["Value1","Item 1",1],["Value2","Item 2 (Unselectable)",0],["Value3","Item 3 (Unselectable)",0],["Value4","Item 4",1],["Value5","Item 5",1],["Value6","Item 6",1],["Value7","Item 7",1],["Value8","Item 8",1],["Value9","Item 9",1]],"SelectedValue":"Value1"}');
            //var nodeValue = Ext.get("TestNode1").dom.value;
            //document.write("nodeValue:" + nodeValue + " encodeURIComponent(nodeValue):" + encodeURIComponent(nodeValue));

            // 
           
           // document.write(Ext.lib.Ajax.serializeForm('form1')); //encodeURIComponent('\u9009')
            //document.write(encodeURIComponent('Value1","Item 1",1],["Value2"'));
            //document.write(encodeURIComponent('{"X_Items":[["Value1","Item 1",1],["Value2","Item 2 (Unselectable)",0],["Value3","Item 3 (Unselectable)",0],["Value4","Item 4",1],["Value5","Item 5",1],["Value6","Item 6",1],["Value7","Item 7",1],["Value8","Item 8",1],["Value9","Item 9",1]],"SelectedValue":"Value1"}'));
        }
    </script>
</body>
</html>
