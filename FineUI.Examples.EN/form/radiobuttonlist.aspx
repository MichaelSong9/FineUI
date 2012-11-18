<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="radiobuttonlist.aspx.cs"
    Inherits="FineUI.Examples.form.radiobuttonlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" Width="700px" runat="server" LabelWidth="160px"
        EnableBackgroundColor="true" BodyPadding="5px" ShowBorder="True" ShowHeader="True"
        Title="Simple Form">
        <Items>
            <x:RadioButtonList ID="RadioButtonList1" Label="List 1" runat="server">
                <x:RadioItem Text="Item 1" Value="value1" />
                <x:RadioItem Text="Item 2" Value="value2" />
                <x:RadioItem Text="Item 3" Value="value3" Selected="true" />
            </x:RadioButtonList>
            <x:Button ID="btnServerSetSelectedValue" CssClass="inline" Text="Select the first item of previous list" OnClick="btnServerSetSelectedValue_Click"
                runat="server">
            </x:Button>
            <x:Button ID="btnServerGetSelectedValue" CssClass="inline" Text="Get selected item of previous list" OnClick="btnServerGetSelectedValue_Click"
                runat="server">
            </x:Button>
            <x:Button ID="btnClientGetSelectedValue" Text="Get selected item of previous list (Via JavaScript)" EnablePostBack="false"
                OnClientClick="alertSelectedValue();" runat="server">
            </x:Button>
            <x:Label runat="server" Text="&nbsp;">
            </x:Label>
            <x:RadioButtonList ID="RadioButtonList2" Label="List 2 (One Column)" ColumnNumber="1" runat="server">
            </x:RadioButtonList>
            <x:Label ID="Label1" runat="server" Text="&nbsp;">
            </x:Label>
            <x:RadioButtonList ID="rblAutoPostBack" AutoPostBack="true" OnSelectedIndexChanged="rblAutoPostBack_SelectedIndexChanged"
                Label="List 3 (Auto PostBack)" ColumnNumber="3" runat="server" ShowRedStar="true" Required="true">
                <x:RadioItem Text="Item 1" Value="value1" />
                <x:RadioItem Text="Item 2" Value="value2" />
                <x:RadioItem Text="Item 3" Value="value3" />
                <x:RadioItem Text="Item 4" Value="value4" />
                <x:RadioItem Text="Item 5" Value="value5" />
                <x:RadioItem Text="Item 6" Value="value6" />
                <x:RadioItem Text="Item 7" Value="value7" />
                <x:RadioItem Text="Item 8" Value="value8" />
            </x:RadioButtonList>
            <x:Label ID="Label2" runat="server" Text="&nbsp;">
            </x:Label>
            <x:RadioButtonList ID="rblVertical" Label="List 4 (Vertical)" ColumnNumber="3" ColumnVertical="true"
                runat="server" ShowRedStar="true" Required="true">
                <x:RadioItem Text="Item 1" Value="value1" />
                <x:RadioItem Text="Item 2" Value="value2" />
                <x:RadioItem Text="Item 3" Value="value3" />
                <x:RadioItem Text="Item 4" Value="value4" />
                <x:RadioItem Text="Item 5" Value="value5" />
                <x:RadioItem Text="Item 6" Value="value6" />
                <x:RadioItem Text="Item 7" Value="value7" />
                <x:RadioItem Text="Item 8" Value="value8" />
            </x:RadioButtonList>
            <x:Button runat="server" ID="btnSubmit" ValidateForms="SimpleForm1" Text="Submit Form" OnClick="btnSubmit_Click">
            </x:Button>
        </Items>
    </x:SimpleForm>
    </form>
    <script type="text/javascript">

        function alertSelectedValue() {
            var list2 = Ext.getCmp('<%= RadioButtonList1.ClientID %>');
            var selectedRadio = list2.getValue();
            if (selectedRadio) {
                top.X.util.alert("Selected value of List 1: " + selectedRadio.getRawValue());
            } else {
                top.X.util.alert("No selection in List 1.");
            }
        }
    
    </script>
</body>
</html>
