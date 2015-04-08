<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="empty.aspx.cs" Inherits="FineUI.Examples.test.empty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <asp:Literal runat="server" ID="testLit"></asp:Literal>
</head>
<body>
    <form id="form1" runat="server">

        <f:PageManager ID="PageManager1" AutoSizePanelID="regionPanel"
            runat="server" />
        <f:RegionPanel ID="regionPanel" ShowBorder="false" runat="server">
            <Regions>
                <f:Region ID="regionTop" Height="60px" ShowBorder="false" ShowHeader="false" Position="Top"
                    Layout="Fit" runat="server">
                    <Toolbars>
                        <f:Toolbar ID="Toolbar1" Position="Bottom" runat="server">
                            <Items>
                                <f:ToolbarText ID="txtUser" runat="server">
                                </f:ToolbarText>
                                <f:ToolbarSeparator ID="ToolbarSeparator1" runat="server" />
                                <f:ToolbarText ID="txtOnlineUserCount" runat="server">
                                </f:ToolbarText>
                                <f:ToolbarSeparator ID="ToolbarSeparator2" runat="server" />
                                <f:ToolbarText ID="txtCurrentTime" runat="server">
                                </f:ToolbarText>
                                <f:ToolbarFill ID="ToolbarFill1" runat="server" />
                                <f:Button ID="btnShowHideHeader" runat="server" Icon="SectionExpanded" ToolTip="隐藏标题栏"
                                    EnablePostBack="false">
                                </f:Button>
                                <f:ToolbarSeparator ID="ToolbarSeparator4" runat="server" />
                                <f:Button ID="btnHelp" EnablePostBack="false" Icon="Help" Text="帮助" runat="server">
                                </f:Button>
                                <f:ToolbarSeparator ID="ToolbarSeparator5" runat="server" />

                            </Items>
                        </f:Toolbar>
                    </Toolbars>
                    <Items>
                        <f:ContentPanel ShowBorder="false" ShowHeader="false" BodyStyle="background-color:#1C3E7E;"
                            ID="ContentPanel1" runat="server">
                            <div style="font-size: 20px; color: White; font-weight: bold; padding: 5px 10px;">
                                <a style="color: White; text-decoration: none;">后台管理</a>
                                <asp:Image runat="server" ID="imgLogo" align="absmiddle" />
                                <asp:Literal ID="litProductVersion" runat="server"></asp:Literal>
                            </div>
                        </f:ContentPanel>
                    </Items>
                </f:Region>
                <f:Region ID="regionLeft" Split="true"
                    Icon="Outline" EnableCollapse="true" Width="200px"
                    CssStyle=" margin:0 auto" ShowHeader="true" Title="系统菜单" Layout="Fit" Position="Left"
                    runat="server">
                    <Items>
                        <f:Accordion ID="accordionMenu" runat="server" ShowBorder="false" ShowHeader="false"
                            ShowCollapseTool="true">
                            <Panes>
                                <f:AccordionPane ID="AccordionPane1" runat="server" Title="aaaaa" IconUrl="~/images/16/1.png"
                                    Layout="Fit" ShowBorder="false">
                                    <Items>
                                    </Items>
                                </f:AccordionPane>
                            </Panes>
                        </f:Accordion>
                    </Items>
                </f:Region>
                <f:Region ID="mainRegion" ShowHeader="false" Layout="Fit" Position="Center"
                    runat="server">
                    <Items>
                        <f:RegionPanel ID="regionPanel1" ShowBorder="false" runat="server">
                            <Regions>
                                <f:Region ID="RegionCenter" ShowHeader="false" Layout="Fit" Position="Center"
                                    runat="server">
                                    <Items>
                                        <f:TabStrip ID="mainTabStrip" EnableTabCloseMenu="true" ShowBorder="false" runat="server">
                                            <Tabs>
                                                <f:Tab ID="Tab1" Title="首页" Icon="House" runat="server">
                                                    <Items>
                                                        <f:ContentPanel ID="contenPanelDiv" runat="server"
                                                            BodyPadding="0px" BodyStyle="height:100%" ShowHeader="false">
                                                            <div id="divBig" style="display: none" ondblclick="HideImage();">
                                                                <img id="imgBig" width="100%" height="100%" />
                                                            </div>
                                                            <div id="center2" style="height: 650px; width: 100%">
                                                            </div>
                                                        </f:ContentPanel>
                                                    </Items>
                                                </f:Tab>
                                            </Tabs>
                                        </f:TabStrip>
                                    </Items>
                                </f:Region>
                            </Regions>
                        </f:RegionPanel>
                    </Items>
                </f:Region>
            </Regions>
        </f:RegionPanel>




    </form>

    <script type="text/javascript" src="http://ditu.google.cn/maps/api/js?sensor=false&libraries=drawing"></script>
   
    <script type="text/javascript" src="HulinY.js"></script>
    <script>

        F.ready(function () {
            setupMap2();
        });


    </script>
</body>
</html>
