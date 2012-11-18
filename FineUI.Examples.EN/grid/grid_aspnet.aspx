<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_aspnet.aspx.cs" Inherits="FineUI.Examples.grid.grid_aspnet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" Width="800px" DataKeyNames="Id,Name" AutoGenerateColumns="False"
        runat="server">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:TemplateField HeaderText="Gender">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="EntranceYear" HeaderText="Entrance Year" />
            <asp:CheckBoxField DataField="AtSchool" HeaderText="At School" />
            <asp:HyperLinkField HeaderText="Major" DataTextField="Major" DataTextFormatString="{0}"
                DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                Target="_blank" />
            <asp:ImageField DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="Group">
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
