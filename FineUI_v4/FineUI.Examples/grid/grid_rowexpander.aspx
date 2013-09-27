﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_rowexpander.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_rowexpander" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .x-grid-row-body .expander {
            padding: 5px;
        }

            .x-grid-row-body .expander p {
                padding: 5px;
            }

            .x-grid-row-body .expander strong {
                font-weight: bold;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <x:PageManager ID="PageManager1" runat="server" />
        <x:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" EnableFrame="true" EnableCollapse="true" Width="800px"
            runat="server" DataKeyNames="Id,Name" EnableCheckBoxSelect="false">
            <Columns>
                <x:RowNumberField />

                <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="姓名" />
                <x:TemplateField Width="80px" HeaderText="性别">
                    <ItemTemplate>
                        <%-- Container.DataItem 的类型是 System.Data.DataRowView 或者用户自定义类型 --%>
                        <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                    </ItemTemplate>
                </x:TemplateField>
                <x:BoundField Width="80px" DataField="EntranceYear" HeaderText="入学年份" />
                <x:CheckBoxField Width="80px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                <x:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                    DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                    DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                <x:ImageField Width="80px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                    HeaderText="分组"></x:ImageField>
                <x:BoundField Width="100px" DataField="LogTime" DataFormatString="{0:yyyy-MM-dd}"
                    HeaderText="注册日期" />
                <x:TemplateField ColumnID="expander" RenderAsRowExpander="true">
                    <ItemTemplate>
                        <div class="expander">
                            <p>
                                <strong>姓名：</strong><%# Eval("Name") %>
                            </p>
                            <p>
                                <strong>简介：</strong><%# Eval("Desc") %>
                            </p>
                        </div>
                    </ItemTemplate>
                </x:TemplateField>
            </Columns>
        </x:Grid>
        <br />
        <br />
        <x:Button ID="Button3" runat="server" Text="显示/隐藏行扩展列" OnClick="Button3_Click">
        </x:Button>
        <br />
        注：隐藏后仍然可以通过选中行按ENTER键展开折叠行扩展列的内容区域。
    </form>
</body>
</html>
