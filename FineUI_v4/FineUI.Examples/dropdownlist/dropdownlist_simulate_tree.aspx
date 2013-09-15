﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist_simulate_tree.aspx.cs"
    Inherits="FineUI.Examples.data.dropdownlist_simulate_tree" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <x:PageManager ID="PageManager1" runat="server" />
        <x:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" Width="550px" EnableFrame="true" EnableCollapse="true"
            ShowBorder="True" Title="简单表单" ShowHeader="True">
            <Items>
                <x:DropDownList Label="DropDownList" AutoPostBack="false" Required="true" EnableSimulateTree="true"
                    ShowRedStar="true" runat="server" ID="ddlBox">
                </x:DropDownList>

                <x:Button ID="Button1" Text="获取选中项" runat="server" OnClick="Button1_Click">
                </x:Button>

                <x:Label runat="server" ID="labResult">
                </x:Label>
            </Items>
        </x:SimpleForm>
        <br />
        <br />
    </form>
</body>
</html>
