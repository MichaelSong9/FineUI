<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_summary2.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_summary2" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .x-grid-row-summary .x-grid-cell-inner {
            font-weight: bold;
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <x:PageManager ID="PageManager1" runat="server" />
        <x:Grid ID="Grid1" Title="表格" EnableFrame="true" EnableCollapse="true" Width="800px" Height="350px" PageSize="5" ShowBorder="true"
            ShowHeader="true" AllowPaging="true" runat="server" EnableCheckBoxSelect="True"
            DataKeyNames="Id,Name" IsDatabasePaging="true" OnPageIndexChange="Grid1_PageIndexChange"
            EnableSummary="true">
            <Columns>
                <x:RowNumberField />
                <x:BoundField Width="100px" ColumnID="name" DataField="Name" DataFormatString="{0}"
                    HeaderText="姓名" />
                <x:TemplateField Width="80px" HeaderText="性别">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                    </ItemTemplate>
                </x:TemplateField>
                <x:BoundField Width="80px" DataField="EntranceYear" HeaderText="入学年份" />
                <x:CheckBoxField Width="80px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="是否在校" />
                <x:HyperLinkField HeaderText="所学专业" ColumnID="major" DataToolTipField="Major" DataTextField="Major"
                    DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                    DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
                <x:BoundField Width="100px" DataField="Fee" ColumnID="fee" HeaderText="学费" />
                <x:BoundField Width="100px" DataField="Donate" ColumnID="donate" HeaderText="捐赠金额" />
            </Columns>
        </x:Grid>
        <x:HiddenField runat="server" ID="hfGrid1Summary"></x:HiddenField>
        <br />
        <x:Button ID="Button1" runat="server" Text="选中了哪些行" OnClick="Button1_Click">
        </x:Button>
        <br />
        <x:Label ID="labResult" EncodeText="false" runat="server">
        </x:Label>
    </form>
</body>
</html>
