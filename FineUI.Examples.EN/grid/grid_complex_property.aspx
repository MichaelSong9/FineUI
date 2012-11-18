<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_complex_property.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_complex_property" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="Table" PageSize="3" ShowBorder="true" AutoHeight="true"
        Width="800px" ShowHeader="true" runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Year"
        EnableRowNumber="True">
        <Columns>
            <x:BoundField DataField="MyText" SortField="MyText" DataFormatString="{0}" HeaderText="Name" />
            <x:BoundField Width="60px" DataField="Year" HeaderText="Entrance Year" />
            <x:CheckBoxField Width="60px" DataField="MyCheckBox" HeaderText="At School" />
            <x:TemplateField HeaderText="At School (Template Column)">
                <ItemTemplate>
                    <%-- Container.DataItem should be System.Data.DataRowView or Custom Class --%>
                    <%-- <%# DataBinder.Eval(Container.DataItem, "MyText") %> --%>
                    <%# GetInSchool(Eval("MyCheckBox")) %>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField ExpandUnusedSpace="True" DataField="Info.UserName" DataFormatString="{0}"
                HeaderText="Teacher (Composite Property)" />
        </Columns>
    </x:Grid>
    </form>
</body>
</html>
