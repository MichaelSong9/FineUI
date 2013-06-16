<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FineUI.Examples._default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FineUI Online Examples - ExtJS based ASP.NET Controls with native AJAX support and rich UI effects</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
    <meta name="Title" content="ExtJS based ASP.NET Controls with native AJAX Support and rich UI effects" />
    <meta name="Description" content="FineUI Mission: Create No JavaScript, No CSS, No UpdatePanel, No ViewState and No WebServices web application." />
    <meta name="Keywords" content="extjs,ext,asp.net,control,asp.net 2.0,ajax,web2.0" />
    <link href="css/default.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="RegionPanel1" runat="server">
    </x:PageManager>
    <x:RegionPanel ID="RegionPanel1" ShowBorder="false" runat="server">
        <Regions>
            <x:Region ID="Region1" Margins="0 0 0 0" Height="62px" ShowBorder="false" ShowHeader="false"
                Position="Top" Layout="Fit" runat="server">
                <Toolbars>
                    <x:Toolbar ID="Toolbar1" Position="Bottom" runat="server">
                        <Items>
                            <x:Button ID="btnExpandAll" IconUrl="~/images/expand-all.gif" Text="Expand All" EnablePostBack="false"
                                runat="server">
                            </x:Button>
                            <x:Button ID="btnCollapseAll" IconUrl="~/images/collapse-all.gif" Text="Collapse All" EnablePostBack="false"
                                runat="server">
                            </x:Button>
                            <x:ToolbarFill ID="ToolbarFill1" runat="server">
                            </x:ToolbarFill>
                             <x:ToolbarText ID="ToolbarText1" Text="Menu:" runat="server">
                            </x:ToolbarText>
                            <x:DropDownList ID="ddlMenu" Resizable="true" Width="120px" AutoPostBack="true" OnSelectedIndexChanged="ddlMenu_SelectedIndexChanged"
                                runat="server">
                                <x:ListItem Text="Tree Menu" Value="tree" />
                                <x:ListItem Text="Accordion+Tree Menu" Value="accordion" />
                            </x:DropDownList>
                            <x:ToolbarText ID="ToolbarText4" Text="&nbsp;&nbsp;Language:" runat="server">
                            </x:ToolbarText>
                            <x:DropDownList ID="ddlLanguage" Width="120px" AutoPostBack="true" OnSelectedIndexChanged="ddlLanguage_SelectedIndexChanged"
                                runat="server">
                                <x:ListItem Text="English" Value="en" />
                                <x:ListItem Text="简体中文" Value="zh_cn" />
                                <x:ListItem Text="繁體中文" Value="zh_tw" />
                            </x:DropDownList>
                            <x:ToolbarText ID="ToolbarText3" Text="&nbsp;&nbsp;Theme:" runat="server">
                            </x:ToolbarText>
                            <x:DropDownList ID="ddlTheme" Width="120px" AutoPostBack="true" OnSelectedIndexChanged="ddlTheme_SelectedIndexChanged"
                                runat="server">
                                <x:ListItem Text="Blue" Selected="true" Value="blue" />
                                <x:ListItem Text="Gray" Value="gray" />
                                <x:ListItem Text="Access" Value="access" />
                                <x:ListItem Text="Blueen(Custom)" Value="blueen" />
                                <x:ListItem Text="First(Custom)" Value="first" />
                                <x:ListItem Text="Second(Custom)" Value="second" />
                                <x:ListItem Text="Fourth(Custom)" Value="fourth" />
                            </x:DropDownList>
                        </Items>
                    </x:Toolbar>
                </Toolbars>
                <Items>
                    <x:ContentPanel ShowBorder="false" CssClass="header" ShowHeader="false" BodyStyle="background-color:#1C3E7E;"
                        ID="ContentPanel1" runat="server">
                        <div class="title">
                            <a href="./default.aspx" style="color:#fff;">FineUI Online Examples</a>
                        </div>
                        <div class="version">
                            <a href="http://fineui.com/demo/" target="_blank" style="color:#fff;">中文版</a>
                        </div>
                    </x:ContentPanel>
                </Items>
            </x:Region>
            <x:Region ID="Region2" Split="true" EnableSplitTip="true" CollapseMode="Mini" Width="200px"
                Margins="0 0 0 0" ShowHeader="true" Title="Examples" EnableLargeHeader="false" Icon="Outline"
                EnableCollapse="true" Layout="Fit" Position="Left" runat="server">
            </x:Region>
            <x:Region ID="mainRegion" ShowHeader="false" Layout="Fit" Margins="0 0 0 0" Position="Center"
                runat="server">
                <Items>
                    <x:TabStrip ID="mainTabStrip" EnableTabCloseMenu="true" ShowBorder="false" runat="server">
                        <Tabs>
                            <x:Tab Title="Home" Layout="Fit" Icon="House" runat="server">
                                <Toolbars>
                                    <x:Toolbar runat="server">
                                        <Items>
                                            <x:ToolbarFill ID="ToolbarFill2" runat="server">
                                            </x:ToolbarFill>
                                            <x:Button ID="btnSourceCode" Icon="PageWhiteCode" Text="Source Code" EnablePostBack="false"
                                                runat="server">
                                            </x:Button>
                                            <x:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                                            </x:ToolbarSeparator>
                                            <x:Button ID="Button1" Icon="TabGo" Text="Download" OnClientClick="window.open('http://extaspnet.codeplex.com/', '_blank');"
                                                EnablePostBack="false" runat="server">
                                            </x:Button>
                                        </Items>
                                    </x:Toolbar>
                                </Toolbars>
                                <Items>
                                    <x:ContentPanel ShowBorder="false" BodyPadding="10px" ShowHeader="false" AutoScroll="true"
                                        CssClass="intro" runat="server">
                                        <h2>About FineUI</h2>
                                        ExtJS based ASP.NET Controls with native AJAX support and rich UI effects.
                                        <br />
                                        <br />
                                        <h2>FineUI Mission</h2>
                                           Create No JavaScript, No CSS, No UpdatePanel, No ViewState and No WebServices web application.
                                        <br />
                                        <br />
                                        <h2>Support Browsers</h2>
                                            IE 7.0+、Firefox 3.6+、Chrome 3.0+、Opera 10.5+、Safari 3.0+
                                        <br />
                                        <br />
                                        <h2>License</h2>
                                            Apache License 2.0 (Apache)
                                        <br />
                                            Note: ExtJS is released under GPL v3 license (http://www.sencha.com/license).
                                        <br />
                                        <br />
                                        <h2>Links</h2>
                                            Demo: <a target="_blank" href="http://fineui.com/demo/en/">http://fineui.com/demo/en/</a>
                                        <br />
                                            Download: <a target="_blank" href="http://fineui.codeplex.com/">http://fineui.codeplex.com/</a>
                                        <br />
                                            Blog: <a target="_blank" href="http://sanshi.cnblogs.com/">http://sanshi.cnblogs.com/</a>
                                        <br />
                                        <br />
                                       
                                    </x:ContentPanel>
                                </Items>
                            </x:Tab>
                        </Tabs>
                    </x:TabStrip>
                </Items>
            </x:Region>
        </Regions>
    </x:RegionPanel>
    <x:Window ID="windowSourceCode" Icon="PageWhiteCode" Title="Source Code" Popup="false"
        EnableIFrame="true" runat="server" IsModal="true" Width="900px" Height="550px"
        EnableClose="true" EnableMaximize="true" EnableResize="true">
    </x:Window>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/menu.xml"></asp:XmlDataSource>
    </form>
    <img src="images/logo/logo3.png" alt="FineUI Icon" id="logo" />
    <script src="./js/default.js" type="text/javascript"></script>
</body>
</html>
