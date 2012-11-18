<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_captcha.aspx.cs"
    Inherits="FineUI.Examples.basic.login_captcha" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    UserName: admin
    <br />
    Password: admin
    <br />
    <br />
    <x:Window ID="Window1" runat="server" Title="Login Form" IsModal="false" EnableClose="false"
        WindowPosition="GoldenSection" Width="350px">
        <Items>
            <x:SimpleForm ID="SimpleForm1" runat="server" ShowBorder="false" BodyPadding="10px"
                LabelWidth="60px" EnableBackgroundColor="true" ShowHeader="false">
                <Items>
                    <x:TextBox ID="tbxUserName" Label="UserName" Required="true" runat="server">
                    </x:TextBox>
                    <x:TextBox ID="tbxPassword" Label="Password" TextMode="Password" Required="true" runat="server">
                    </x:TextBox>
                    <x:Image ID="imgCaptcha" runat="server" ShowEmptyLabel="true" ImageUrl="~/basic/captcha/captcha.ashx?w=231&h=30">
                    </x:Image>
                    <x:TextBox ID="tbxCaptcha" Label="Verification" Required="true" runat="server">
                    </x:TextBox>
                    <x:Button ID="btnLogin" Text="Login" Type="Submit" ValidateForms="SimpleForm1" ValidateTarget="Top"
                        runat="server" OnClick="btnLogin_Click">
                    </x:Button>
                </Items>
            </x:SimpleForm>
        </Items>
    </x:Window>
    </form>
</body>
</html>
