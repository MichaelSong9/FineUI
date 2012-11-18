<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shengshixian.aspx.cs" Inherits="FineUI.Examples.data.shengshixian" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:SimpleForm ID="SimpleForm1" Width="450px" runat="server" BodyPadding="5px" EnableBackgroundColor="true"
        Title="Simple Form">
        <Items>
            <x:DropDownList ID="ddlSheng" Label="Province" ShowRedStar="true" CompareType="String"
                CompareValue="-1" CompareOperator="NotEqual" CompareMessage="Please select province!" runat="server"
                AutoPostBack="true" OnSelectedIndexChanged="ddlSheng_SelectedIndexChanged">
            </x:DropDownList>
            <x:DropDownList ID="ddlShi" Label="City" ShowRedStar="true" CompareType="String"
                CompareValue="-1" CompareOperator="NotEqual" CompareMessage="Please select city!" runat="server"
                AutoPostBack="true" OnSelectedIndexChanged="ddlShi_SelectedIndexChanged">
            </x:DropDownList>
            <x:DropDownList ID="ddlXian" ShowRedStar="true" CompareType="String" CompareValue="-1"
                CompareOperator="NotEqual" CompareMessage="Please select country!" Label="County" runat="server">
            </x:DropDownList>
            <x:Button ID="btnSubmit" runat="server" Text="Get selected items" ValidateForms="SimpleForm1"
                ValidateTarget="Top" OnClick="btnSubmit_Click">
            </x:Button>
            <x:Label ID="labResult" runat="server" ShowLabel="false" CssStyle="font-weight:bold;">
            </x:Label>
        </Items>
    </x:SimpleForm>
    <br />
    <br />
    </form>
</body>
</html>
