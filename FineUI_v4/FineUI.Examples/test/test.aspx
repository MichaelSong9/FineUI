<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="test.aspx.cs"
    Inherits="FineUI.Examples.test.test" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
         <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" runat="server">
            <Items>
                <f:DropDownList ID="ddlStartMonth" runat="server" Label="起始月份" CompareControl="ddlEndMonth" CompareOperator="LessThanEqual" CompareType="Int">
                    <f:ListItem Text="1月" Value="1" Selected="true" />
                    <f:ListItem Text="2月" Value="2" />
                    <f:ListItem Text="3月" Value="3" />
                    <f:ListItem Text="4月" Value="4" />
                    <f:ListItem Text="5月" Value="5" />
                    <f:ListItem Text="6月" Value="6" />
                    <f:ListItem Text="7月" Value="7" />
                    <f:ListItem Text="8月" Value="8" />
                    <f:ListItem Text="9月" Value="9" />
                    <f:ListItem Text="10月" Value="10" />
                    <f:ListItem Text="11月" Value="11" />
                    <f:ListItem Text="12月" Value="12" />
                </f:DropDownList>
                <f:DropDownList ID="ddlEndMonth" runat="server" Label="截止月份">
                    <f:ListItem Text="1月" Value="1" />
                    <f:ListItem Text="2月" Value="2" Selected="true" />
                    <f:ListItem Text="3月" Value="3" />
                    <f:ListItem Text="4月" Value="4" />
                    <f:ListItem Text="5月" Value="5" />
                    <f:ListItem Text="6月" Value="6" />
                    <f:ListItem Text="7月" Value="7" />
                    <f:ListItem Text="8月" Value="8" />
                    <f:ListItem Text="9月" Value="9" />
                    <f:ListItem Text="10月" Value="10" />
                    <f:ListItem Text="11月" Value="11" />
                    <f:ListItem Text="12月" Value="12" />
                </f:DropDownList>
            </Items>

        </f:SimpleForm>
    </form>
</body>
</html>
