<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="window2_iframe.aspx.cs"
    Inherits="FineUI.Examples.iframe.window2_iframe" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        body, body.x-body {
            padding: 0;
        }

        .steps {
            border: solid 1px red;
            margin: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <x:PageManager ID="PageManager1" AutoSizePanelID="formPanel" runat="server" />
        <x:Panel ID="formPanel" ShowBorder="false" ShowHeader="false" Layout="Fit" BodyPadding="5px"
            runat="server">
            <Items>
                <x:SimpleForm ID="SimpleForm1" ShowBorder="false"
                    ShowHeader="false" AutoScroll="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                    <Items>
                        <x:Label ID="Label2" EncodeText="false" CssClass="steps" ShowEmptyLabel="false" Text="按照如下步骤操作来观察“确认关闭”对话框：<ul><li>编辑本表单（比如选中复选框、修改日期）</li><li>点击窗体右上角关闭图标、点击关闭按钮或者按下ESC键</li><li>弹出确认关闭窗体的对话框</li></ul>" runat="server" />
                        <x:NumberBox ID="NumberBox1" Label="数字输入框" Required="true" ShowRedStar="true" runat="server" />
                        <x:CheckBox ID="CheckBox1" runat="server" Label="复选框">
                        </x:CheckBox>
                        <x:TextBox ID="TextBox1" Label="文本输入框" runat="server" ShowRedStar="true" Required="True">
                        </x:TextBox>
                        <x:DatePicker ID="DatePicker1" runat="server" SelectedDate="2008-05-09" Label="日期选择器"
                            Text="2008-05-09">
                        </x:DatePicker>
                    </Items>
                </x:SimpleForm>
            </Items>
        </x:Panel>
    </form>
</body>
</html>
