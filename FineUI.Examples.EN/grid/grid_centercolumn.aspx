<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_centercolumn.aspx.cs"
    Inherits="FineUI.Examples.data.grid_centercolumn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        /* .x-grid3-hd-ct4
        {
            text-align: center;
        }
        .x-grid3-col-ct4 
        {
            text-align: center;
        }*/
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="Table" ShowBorder="true" ShowHeader="true" Width="900px"
        runat="server" EnableCheckBoxSelect="true" DataKeyNames="Id,Name" EnableRowNumber="True">
        <Columns>
            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="Name" />
            <x:TemplateField Width="60px" HeaderText="Gender">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="Entrance Year" />
            <x:CheckBoxField Width="150px" TextAlign="Center" RenderAsStaticField="true" DataField="AtSchool"
                HeaderText="At School (Align Center)" />
            <x:HyperLinkField HeaderText="Major (Align Center)" TextAlign="Center" DataToolTipField="Major"
                DataTextField="Major" DataTextFormatString="{0}" DataNavigateUrlFields="Major"
                DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}" DataNavigateUrlFieldsEncode="true"
                Target="_blank" ExpandUnusedSpace="True" />
            <x:ImageField Width="150px" TextAlign="Right" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="Group (Align Right)"></x:ImageField>
        </Columns>
    </x:Grid>
    <br />
    <br />
    <br />
    <x:HiddenField ID="highlightRows" runat="server">
    </x:HiddenField>
    </form>
</body>
</html>
