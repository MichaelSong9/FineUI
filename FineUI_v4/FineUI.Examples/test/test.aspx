<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="test.aspx.cs"
    Inherits="FineUI.Examples.test.test" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
         <x:PageManager ID="PageManager1" runat="server" />
        <x:SimpleForm ID="SimpleForm1" runat="server">
            <Items>
                <x:DropDownList ID="ddlStartMonth" runat="server" Label="起始月份" CompareControl="ddlEndMonth" CompareOperator="LessThanEqual" CompareType="Int">
                    <x:ListItem Text="1月" Value="1" Selected="true" />
                    <x:ListItem Text="2月" Value="2" />
                    <x:ListItem Text="3月" Value="3" />
                    <x:ListItem Text="4月" Value="4" />
                    <x:ListItem Text="5月" Value="5" />
                    <x:ListItem Text="6月" Value="6" />
                    <x:ListItem Text="7月" Value="7" />
                    <x:ListItem Text="8月" Value="8" />
                    <x:ListItem Text="9月" Value="9" />
                    <x:ListItem Text="10月" Value="10" />
                    <x:ListItem Text="11月" Value="11" />
                    <x:ListItem Text="12月" Value="12" />
                </x:DropDownList>
                <x:DropDownList ID="ddlEndMonth" runat="server" Label="截止月份">
                    <x:ListItem Text="1月" Value="1" />
                    <x:ListItem Text="2月" Value="2" Selected="true" />
                    <x:ListItem Text="3月" Value="3" />
                    <x:ListItem Text="4月" Value="4" />
                    <x:ListItem Text="5月" Value="5" />
                    <x:ListItem Text="6月" Value="6" />
                    <x:ListItem Text="7月" Value="7" />
                    <x:ListItem Text="8月" Value="8" />
                    <x:ListItem Text="9月" Value="9" />
                    <x:ListItem Text="10月" Value="10" />
                    <x:ListItem Text="11月" Value="11" />
                    <x:ListItem Text="12月" Value="12" />
                </x:DropDownList>
            </Items>

        </x:SimpleForm>
    </form>
</body>
</html>
