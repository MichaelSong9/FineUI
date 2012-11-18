<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkboxlist.aspx.cs" Inherits="FineUI.Examples.form.checkboxlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" Width="750px" runat="server" LabelWidth="150px"
        EnableBackgroundColor="true" BodyPadding="5px" ShowBorder="True" ShowHeader="True"
        Title="Simple Form">
        <items>
            <x:CheckBoxList ID="CheckBoxList1" Label="List 1" runat="server">
                <x:CheckItem Text="Item 1" Value="value1" />
                <x:CheckItem Text="Item 2" Value="value2" Selected="true" />
                <x:CheckItem Text="Item 3" Value="value3" Selected="true" />
            </x:CheckBoxList>
            <x:Button ID="btnServerSetSelectedValue" CssClass="inline" Text="Select the first&amp;third item of previous list" OnClick="btnServerSetSelectedValue_Click"
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
            <x:CheckBoxList ID="CheckBoxList2" Label="List 2 (One Column)" ColumnNumber="1" runat="server">
            </x:CheckBoxList>
            <x:Label ID="Label1" runat="server" Text="&nbsp;">
            </x:Label>
            <x:CheckBoxList ID="rblAutoPostBack" AutoPostBack="true" OnSelectedIndexChanged="rblAutoPostBack_SelectedIndexChanged"
                Label="List 3 (Auto PostBack)" ColumnNumber="3" runat="server" ShowRedStar="true" Required="true">
                <x:CheckItem Text="Item 1" Value="value1" />
                <x:CheckItem Text="Item 2" Value="value2" />
                <x:CheckItem Text="Item 3" Value="value3" />
                <x:CheckItem Text="Item 4" Value="value4" />
                <x:CheckItem Text="Item 5" Value="value5" />
                <x:CheckItem Text="Item 6" Value="value6" />
                <x:CheckItem Text="Item 7" Value="value7" />
                <x:CheckItem Text="Item 8" Value="value8" />
            </x:CheckBoxList>
            <x:Label ID="Label2" runat="server" Text="&nbsp;">
            </x:Label>
            <x:CheckBoxList ID="rblVertical" Label="List 4 (Vertical)" ColumnNumber="3" ColumnVertical="true"
                runat="server" ShowRedStar="true" Required="true">
                <x:CheckItem Text="Item 1" Value="value1" />
                <x:CheckItem Text="Item 2" Value="value2" />
                <x:CheckItem Text="Item 3" Value="value3" />
                <x:CheckItem Text="Item 4" Value="value4" />
                <x:CheckItem Text="Item 5" Value="value5" />
                <x:CheckItem Text="Item 6" Value="value6" />
                <x:CheckItem Text="Item 7" Value="value7" />
                <x:CheckItem Text="Item 8" Value="value8" />
            </x:CheckBoxList>
            <x:Button runat="server" ID="btnSubmit" ValidateForms="SimpleForm1" Text="Submit Form"
                OnClick="btnSubmit_Click">
            </x:Button>
        </items>
    </x:SimpleForm>
    </form>
    <script type="text/javascript">

        function alertSelectedValue() {
            var list2 = Ext.getCmp('<%= CheckBoxList1.ClientID %>');
            var selectedCheckboxs = list2.getValue(), selectedValues, i;

            if (selectedCheckboxs.length) {
                selectedValues = [];
                for (i = 0; i < selectedCheckboxs.length; i++) {
                    selectedValues.push(selectedCheckboxs[i].getRawValue());
                }
                top.X.util.alert("Selected value of List 1: " + selectedValues.join(','));
            } else {
                top.X.util.alert("No selection in List 1.");
            }
        }
    
    </script>
</body>
</html>
