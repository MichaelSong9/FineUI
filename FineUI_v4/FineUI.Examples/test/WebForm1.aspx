<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EmptyProjectNet40_FineUI.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />


        <f:Grid ID="Grid1" runat="server" Title="Grid" EnableTextSelection="true" Height="600px" EnableCollapse="true"
            ShowHeader="false" DataKeyNames="myid" AllowCellEditing="true" ClicksToEdit="1" EnableCheckBoxSelect="true">
            <Columns>
                <f:BoundField DataField="id" ID="ctl25" ColumnID="Grid1_ctl25" HeaderText="FInterID" Hidden="true" />
                <f:BoundField DataField="Cusname" ID="BoundField1" ColumnID="Cusname" HeaderText="客户名称" Width="150px" />
                <f:RenderField Width="300px" ColumnID="type" DataField="type" FieldType="String" HeaderText="类型">
                    <Editor>
                        <f:TextBox ID="TextBox4" runat="server"></f:TextBox>
                    </Editor>
                </f:RenderField>
                <f:HyperLinkField HeaderText="所学专业"></f:HyperLinkField>
            </Columns>
        </f:Grid>
    </form>
</body>
</html>


<%--错误现象：不断上下点击客户名称就会报错，如果去掉所学专业或类型列前面不能有显示列就会正常。
--%>