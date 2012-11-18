<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_twogrid.aspx.cs" Inherits="FineUI.Examples.grid.grid_twogrid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" AutoSizePanelID="RegionPanel1" />
    <x:RegionPanel ID="RegionPanel1" ShowBorder="false" runat="server">
        <Regions>
            <x:Region ID="Region1" ShowBorder="false" ShowHeader="false" Split="true" EnableSplitTip="true"
                CollapseMode="Mini" Margins="0 0 0 0" Width="200px" Position="Left" Layout="Fit"
                runat="server">
                <Items>
                    <x:Grid ID="Grid2" ShowBorder="true" ShowHeader="true" Title="Table (Class)" runat="server"
                        DataKeyNames="Id,Name" EnableMultiSelect="false" EnableRowClick="true" OnRowClick="Grid2_RowClick">
                        <Columns>
                            <x:TemplateField Width="60px">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                </ItemTemplate>
                            </x:TemplateField>
                            <x:BoundField ExpandUnusedSpace="true" DataField="Name" DataFormatString="{0}"
                                HeaderText="Name" />
                        </Columns>
                    </x:Grid>
                </Items>
            </x:Region>
            <x:Region ID="Region2" ShowBorder="false" ShowHeader="false" Position="Center"
                Layout="VBox" BoxConfigAlign="Stretch" BoxConfigPosition="Left" runat="server">
                <Items>
                    <x:Panel Height="80px" EnableBackgroundColor="true" ShowHeader="false" BodyPadding="10px"
                        ShowBorder="false" runat="server">
                        <Items>
                            <x:Label ID="Label4" runat="server" CssStyle="font-weight:bold;" Text="Class description: ">
                            </x:Label>
                            <x:Label ID="labelClassDesc" runat="server">
                            </x:Label>
                        </Items>
                    </x:Panel>
                    <x:Grid ID="Grid1" BoxFlex="1" ShowBorder="true" ShowHeader="true" Title="Table (Student)"
                        runat="server" DataKeyNames="Id,Name">
                        <Columns>
                            <x:TemplateField Width="60px">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                </ItemTemplate>
                            </x:TemplateField>
                            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="Name" />
                            <x:TemplateField Width="60px" HeaderText="Gender">
                                <ItemTemplate>
                                    <%-- Container.DataItem's type is System.Data.DataRowView or user-defined custom type --%>
                                    <%--<asp:Label ID="Label2" runat="server" Text='<%# GetGender(DataBinder.Eval(Container.DataItem, "Gender")) %>'></asp:Label>--%>
                                    <asp:Label ID="Label3" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                                </ItemTemplate>
                            </x:TemplateField>
                            <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="Entrance Year" />
                            <x:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="At School" />
                            <x:HyperLinkField HeaderText="Major" DataToolTipField="Major" DataTextField="Major"
                                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                        </Columns>
                    </x:Grid>
                </Items>
            </x:Region>
        </Regions>
    </x:RegionPanel>
    <br />
    <br />
    </form>
</body>
</html>
