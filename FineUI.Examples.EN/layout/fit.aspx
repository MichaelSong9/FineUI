<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fit.aspx.cs" Inherits="FineUI.Examples.layout.fit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ID="Panel3" Title="Panel 1 (No Layout)" runat="server" Height="200px" Width="750px"
        BodyPadding="5px" ShowBorder="True" EnableBackgroundColor="false" ShowHeader="True">
        <Items>
            <x:Form ID="Form3" runat="server" ShowBorder="True" EnableBackgroundColor="true"
                BodyPadding="5px" ShowHeader="true" Title="Form">
                <Rows>
                    <x:FormRow>
                        <Items>
                            <x:Label ID="Label2" Label="Label" Text="Label content" runat="server">
                            </x:Label>
                        </Items>
                    </x:FormRow>
                    <x:FormRow>
                        <Items>
                            <x:TextBox ID="TextBox2" Label="Text input box" runat="server">
                            </x:TextBox>
                            <x:Button ID="Button2" Text="Button" runat="server">
                            </x:Button>
                        </Items>
                    </x:FormRow>
                </Rows>
            </x:Form>
        </Items>
    </x:Panel>
    <br />
    <x:Panel ID="Panel1" Title="Panel 2 (Layout=Fit)" runat="server" Layout="Fit" Height="200px"
        BodyPadding="5px" Width="750px" ShowBorder="True" EnableBackgroundColor="false"
        ShowHeader="True">
        <Items>
            <x:Form ID="Form2" runat="server" EnableBackgroundColor="true" ShowBorder="True"
                BodyPadding="5px" ShowHeader="true" Title="Form">
                <Rows>
                    <x:FormRow>
                        <Items>
                            <x:Label ID="Label1" Label="Label" Text="Label content" runat="server">
                            </x:Label>
                        </Items>
                    </x:FormRow>
                    <x:FormRow>
                        <Items>
                            <x:TextBox ID="TextBox1" Label="Text input box" runat="server">
                            </x:TextBox>
                            <x:Button ID="Button1" Text="Button" runat="server">
                            </x:Button>
                        </Items>
                    </x:FormRow>
                </Rows>
            </x:Form></Items>
    </x:Panel>
    <br />
    <x:Panel ID="Panel2" Title="Panel 3 (Layout=Fit)" runat="server" Layout="Fit" Height="300px"
        EnableBackgroundColor="true" BodyPadding="5px" Width="750px" ShowBorder="True"
        ShowHeader="True">
        <Toolbars>
            <x:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <x:Button ID="Button4" Text="Button一" runat="server">
                    </x:Button>
                    <x:Button ID="Button5" Text="Button二" runat="server">
                    </x:Button>
                </Items>
            </x:Toolbar>
        </Toolbars>
        <Items>
            <x:Grid ID="Grid1" Title="Table" PageSize="4" ShowBorder="true" ShowHeader="False"
                runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name" EnableRowNumber="True">
                <Columns>
                    <x:TemplateField Width="60px">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                        </ItemTemplate>
                    </x:TemplateField>
                    <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="Name" />
                    <x:TemplateField Width="60px" HeaderText="Gender">
                        <ItemTemplate>
                            <%-- Container.DataItem's type is System.Data.DataRowView or user-defined custom type --%>
                            <asp:Label ID="Label4" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                        </ItemTemplate>
                    </x:TemplateField>
                    <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="Entrance Year" />
                    <x:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="At School" />
                    <x:HyperLinkField HeaderText="Major" DataToolTipField="Major" DataTextField="Major"
                        DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                        DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                    <x:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                        HeaderText="Group"></x:ImageField>
                </Columns>
            </x:Grid>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
