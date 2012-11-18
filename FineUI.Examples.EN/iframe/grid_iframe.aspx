<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_iframe.aspx.cs" Inherits="FineUI.Examples.iframe.grid_iframe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="Panel7" runat="server" />
    <x:Panel ID="Panel7" runat="server" EnableBackgroundColor="true" BodyPadding="3px"
        EnableLargeHeader="true" Title="Panel" ShowBorder="false" ShowHeader="True" Layout="VBox"
        BoxConfigAlign="Stretch">
        <Items>
            <x:Form ID="Form5" ShowBorder="False" BodyPadding="5px" EnableBackgroundColor="true"
                ShowHeader="False" runat="server">
                <Rows>
                    <x:FormRow>
                        <Items>
                            <x:TwinTriggerBox runat="server" EmptyText="Input search keyword" ShowLabel="false" ID="ttbSearch"
                                ShowTrigger1="false" OnTrigger1Click="ttbSearch_Trigger1Click" OnTrigger2Click="ttbSearch_Trigger2Click"
                                Trigger1Icon="Clear" Trigger2Icon="Search">
                            </x:TwinTriggerBox>
                            <x:DropDownList ID="DropDownList1" ShowLabel="false" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                runat="server">
                                <x:ListItem Text="Filter 1" Value="filter1" />
                                <x:ListItem Text="Filter 2" Value="filter2" />
                                <x:ListItem Text="Filter 3" Value="filter3" />
                            </x:DropDownList>
                        </Items>
                    </x:FormRow>
                </Rows>
            </x:Form>
            <x:Panel ID="Panel8" ShowBorder="True" ShowHeader="false" BoxFlex="1" Layout="Fit"
                runat="server">
                <Toolbars>
                    <x:Toolbar ID="Toolbar2" runat="server">
                        <Items>
                            <x:Button ID="btnPopupWindow" Text="Popup Window" runat="server">
                            </x:Button>
                            <x:ToolbarSeparator runat="server">
                            </x:ToolbarSeparator>
                            <x:Button ID="btnCheckSelection" Text="Check selection status" runat="server">
                            </x:Button>
                            <x:ToolbarSeparator runat="server">
                            </x:ToolbarSeparator>
                            <x:Button ID="btnConfirmButton" Text="Delete selected items" runat="server">
                            </x:Button>
                        </Items>
                    </x:Toolbar>
                </Toolbars>
                <Items>
                    <x:Grid ID="Grid2" Title="Grid2" PageSize="80" ShowBorder="false" AllowPaging="true"
                        OnPageIndexChange="Grid2_PageIndexChange" ShowHeader="False" runat="server" EnableCheckBoxSelect="True"
                        DataKeyNames="Id,Name" OnSort="Grid2_Sort" EnableRowNumber="True">
                        <Columns>
                            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="Name" />
                            <x:TemplateField Width="60px" HeaderText="Gender">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                                </ItemTemplate>
                            </x:TemplateField>
                            <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="Entrance Year" />
                            <x:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="At School" />
                            <x:HyperLinkField HeaderText="Major" DataToolTipField="Major" DataTextField="Major"
                                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                            <x:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                                HeaderText="Group"></x:ImageField>
                            <x:WindowField TextAlign="Center" Width="60px" WindowID="Window1" Icon="Pencil"
                                ToolTip="Edit" DataIFrameUrlFields="Id,Name" DataIFrameUrlFormatString="../grid/grid_iframe_window.aspx?id={0}&name={1}"
                                Title="Edit" IFrameUrl="~/alert.aspx" />
                            <x:LinkButtonField TextAlign="Center" Width="60px" Icon="Delete" ToolTip="Delete" ConfirmText="Delete? (Not implement)"
                                CommandName="LinkButtonMyText" />
                        </Columns>
                    </x:Grid>
                </Items>
            </x:Panel>
        </Items>
    </x:Panel>
    <x:Window ID="Window1" Title="Window" Popup="false" EnableIFrame="true" IFrameUrl="about:blank"
        EnableMaximize="true" Target="Top" EnableResize="true" runat="server" OnClose="Window1_Close"
        IsModal="true" Width="750px" EnableConfirmOnClose="true" Height="550px">
    </x:Window>
    </form>
</body>
</html>
