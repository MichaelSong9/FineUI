<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userinfo.aspx.cs" Inherits="FineUI.Examples.usercontrol.userinfo" %>

<%@ Register Src="UserInfoControl.ascx" TagName="UserInfoControl" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server"></x:PageManager>
    <x:ContentPanel runat="server" ID="Panel1" EnableBackgroundColor="true" Width="600px"
        Height="150px" Title="Page/Panel1（ContentPanel->UserInfoControl）">
        <uc1:UserInfoControl ID="UserInfoControl1" UserName="Pingping Chen" UserAge="20" UserCountry="Hefei"
            runat="server" />
    </x:ContentPanel>
    <br />
    <x:Panel runat="server" ID="Panel2" EnableBackgroundColor="true" Width="600px"
        Height="150px" Title="Page/Panel2（Panel->UserControlConnector->UserInfoControl）">
        <Items>
            <x:UserControlConnector runat="server">
                <uc1:UserInfoControl ID="UserInfoControl2" UserName="Pingping Chen" UserAge="20" UserCountry="Hefei"
                    runat="server" />
            </x:UserControlConnector>
        </Items>
    </x:Panel>
    <br />
    <x:Panel runat="server" ID="Panel3" EnableBackgroundColor="true" Width="600px"
        Height="150px" Layout="Fit" Title="Page/Panel3（Layout=Fit, Panel->UserControlConnector->UserInfoControl）">
        <Items>
            <x:UserControlConnector runat="server">
                <uc1:UserInfoControl ID="UserInfoControl3" UserName="Pingping Chen" UserAge="20" UserCountry="Hefei"
                    runat="server" />
            </x:UserControlConnector>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
