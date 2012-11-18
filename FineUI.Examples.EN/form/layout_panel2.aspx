<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="layout_panel2.aspx.cs"
    Inherits="FineUI.Examples.form.layout_panel2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .mright
        {
            margin-right: 5px;
        }
        .datecontainer .x-form-field-trigger-wrap
        {
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm Width="600px" BodyPadding="5px" LabelAlign="Right" Title="Form" runat="server">
        <Items>
            <x:Panel ID="Panel2" ShowHeader="false" CssClass="x-form-item" ShowBorder="false"
                Layout="Column" runat="server">
                <Items>
                    <x:Label ID="Label2" Width="100px" runat="server" CssClass="inline" ShowLabel="false"
                        Text="UserName: ">
                    </x:Label>
                    <x:TextBox ID="TextBox2" Label="UserName" CssClass="mright" Required="true" runat="server">
                    </x:TextBox>
                    <x:Button ID="Button3" Text="Button 1" CssClass="mright" runat="server">
                    </x:Button>
                    <x:Button ID="Button4" Text="Button 2" runat="server">
                    </x:Button>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel1" ShowHeader="false" ShowBorder="false" Layout="Column" CssClass="x-form-item datecontainer"
                runat="server">
                <Items>
                    <x:Label ID="Label1" runat="server" Width="100px" CssClass="inline" ShowLabel="false"
                        Text="Start/End date: ">
                    </x:Label>
                    <x:DatePicker ID="DatePicker1" Width="150px" runat="server">
                    </x:DatePicker>
                    <x:DatePicker ID="DatePicker2" Width="150px" runat="server">
                    </x:DatePicker>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel3" ShowHeader="false" ShowBorder="false" Layout="Column" CssClass="x-form-item datecontainer"
                runat="server">
                <Items>
                    <x:Label ID="Label3" runat="server" Width="100px" CssClass="inline" ShowLabel="false"
                        Text="Start/End date: ">
                    </x:Label>
                    <x:DatePicker ID="DatePicker3" ColumnWidth="50%" runat="server">
                    </x:DatePicker>
                    <x:DatePicker ID="DatePicker4" ColumnWidth="50%" runat="server">
                    </x:DatePicker>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel4" ShowHeader="false" ShowBorder="false" Layout="Column" CssClass="x-form-item datecontainer"
                runat="server">
                <Items>
                    <x:Label ID="Label4" runat="server" Width="100px" CssClass="inline" ShowLabel="false"
                        Text="Work time: ">
                    </x:Label>
                    <x:TextBox Width="40px" runat="server">
                    </x:TextBox>
                    <x:Label runat="server" Text="&nbsp;hours&nbsp;">
                    </x:Label>
                    <x:TextBox Width="40px" ID="TextBox1" runat="server">
                    </x:TextBox>
                    <x:Label ID="Label5" runat="server" Text="&nbsp;minutes">
                    </x:Label>
                </Items>
            </x:Panel>
        </Items>
    </x:SimpleForm>
    </form>
</body>
</html>
