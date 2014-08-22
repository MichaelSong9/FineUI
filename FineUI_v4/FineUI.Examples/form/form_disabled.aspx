﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_disabled.aspx.cs" Inherits="FineUI.Examples.form.form_disabled" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../res/css/main.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="_form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Form Width="600px" LabelWidth="100px" LabelSeparator="："
            BodyPadding="5px" EnableCollapse="true" ID="Form1" runat="server" Title="表单">
            <Rows>
                <f:FormRow>
                    <Items>
                        <f:Label ID="Label3" Label="电话" Text="0551-1234567" runat="server" />
                        <f:Label ID="Label16" runat="server" Label="申请人" Text="admin">
                        </f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:Label ID="Label4" Label="编号" Text="200804170006" runat="server" />
                        <f:TextBox ID="TextBox2" Required="true" ShowRedStar="true" Label="电子邮箱" RegexPattern="EMAIL"
                            RegexMessage="请输入有效的邮箱地址！" runat="server">
                        </f:TextBox>
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:DropDownList ID="DropDownList3" Label="审批人" runat="server"
                            Required="true" ShowRedStar="True" AutoSelectFirstItem="false">
                            <f:ListItem Text="老大甲" Value="0"></f:ListItem>
                            <f:ListItem Text="老大乙" Value="1"></f:ListItem>
                            <f:ListItem Text="老大丙" Value="2"></f:ListItem>
                        </f:DropDownList>
                        <f:NumberBox ID="NumberBox1" Label="申请数量" MaxValue="1000" Required="true" runat="server"
                            ShowRedStar="True" />
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:DatePicker runat="server" Required="true" Label="日期" EmptyText="请选择日期"
                            ID="DatePicker1" SelectedDate="2014-07-10" ShowRedStar="True">
                        </f:DatePicker>
                        <f:TimePicker ID="TimePicker1" ShowRedStar="True" Label="时间" Increment="30"
                            Required="true" Text="08:30" EmptyText="请选择时间" runat="server">
                        </f:TimePicker>
                    </Items>
                </f:FormRow>

                <f:FormRow>
                    <Items>
                        <f:FileUpload runat="server" ID="filePhoto" EmptyText="请选择一张照片" Label="个人头像" Required="true"
                            ShowRedStar="true">
                        </f:FileUpload>
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:TextArea ID="TextArea1" runat="server" Label="描述" ShowRedStar="True" Required="True">
                        </f:TextArea>
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:CheckBoxList ID="CheckBoxList1" Label="复选框列表" ColumnNumber="3" runat="server">
                            <f:CheckItem Text="可选项 1" Value="value1" />
                            <f:CheckItem Text="可选项 2" Value="value2" Selected="true" />
                            <f:CheckItem Text="可选项 3" Value="value3" Selected="true" />
                            <f:CheckItem Text="可选项 4" Value="value4" Selected="true" />
                            <f:CheckItem Text="可选项 5" Value="value5" Selected="true" />
                        </f:CheckBoxList>
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:RadioButtonList ID="RadioButtonList2" Label="单选框列表" ColumnNumber="3" runat="server">
                            <f:RadioItem Text="可选项 1" Value="value1" />
                            <f:RadioItem Text="可选项 2" Value="value2" />
                            <f:RadioItem Text="可选项 3" Value="value3" Selected="true" />
                            <f:RadioItem Text="可选项 4" Value="value4" />
                            <f:RadioItem Text="可选项 5" Value="value5" />
                        </f:RadioButtonList>
                    </Items>
                </f:FormRow>
            </Rows>
        </f:Form>
        <br />
        <f:Button ID="btnDisableAll" Text="全部禁用" CssClass="marginr" runat="server" OnClick="btnDisableAll_Click">
        </f:Button>
        <f:Button ID="btnEnableAll" Text="全部启用" CssClass="marginr" runat="server" OnClick="btnEnableAll_Click">
        </f:Button>
        <f:Button ID="btnReadOnlyAll" Text="全部只读" CssClass="marginr" runat="server" OnClick="btnReadOnlyAll_Click">
        </f:Button>
        <f:Button ID="btnCancelReadOnlyAll" Text="取消只读" CssClass="marginr" runat="server" OnClick="btnCancelReadOnlyAll_Click">
        </f:Button>
        <br />
        <br />
        <f:Button ID="btnMarkInvalid" Text="设置无效标识" CssClass="marginr" runat="server" OnClick="btnMarkInvalid_Click">
        </f:Button>
        <f:Button ID="btnClearInvalid" Text="取消无效标识" CssClass="marginr" runat="server" OnClick="btnClearInvalid_Click">
        </f:Button>
    </form>
</body>
</html>
