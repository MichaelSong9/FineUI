<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="FineUI.Examples.test2" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <style>
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="Grid1" runat="server" />

        <f:Grid ID="Grid1" runat="server" Title="搜索结果" BodyPadding="5px"
            DataKeyNames="DeviceID" EnableColumnLines="True" Height="100px" ForceFit="true" >

            <Columns>
                <f:RenderField DataField="DeviceName" ColumnID="DeviceName" HeaderText="设备名称" Width="170px">
                    <Editor>
                        <f:TextBox ID="TextBox1" runat="server"></f:TextBox>
                    </Editor>
                </f:RenderField>
                <f:RenderField DataField="DeviceModel" ColumnID="DeviceModel" HeaderText="设备型号">
                    <Editor>
                        <f:TextBox ID="TextBox3" runat="server"></f:TextBox>
                    </Editor>
                </f:RenderField>
                <f:CheckBoxField ColumnID="DeviceStatus" DataField="DeviceStatus" HeaderText="设备可用状态" Width="60px" TextAlign="Center" />
                <f:RenderField ColumnID="PA_US_ChineseName" DataField="PA_US_ChineseName" HeaderText="设备管理员" Width="60px">
                    <Editor>
                        <f:DropDownList runat="server" ID="adminID"></f:DropDownList>
                    </Editor>
                </f:RenderField>
                <f:RenderField ColumnID="DeviceVender" DataField="DeviceVender" HeaderText="厂商">
                    <Editor>
                        <f:TextBox ID="TextBox2" runat="server"></f:TextBox>
                    </Editor>
                </f:RenderField>
                <f:RenderField ColumnID="VenderName" DataField="VenderName" HeaderText="厂商联系人" Width="60px">
                    <Editor>
                        <f:TextBox ID="TextBox4" runat="server"></f:TextBox>
                    </Editor>
                </f:RenderField>
                <f:RenderField ColumnID="VenderTel" DataField="VenderTel" HeaderText="厂商联系电话">
                    <Editor>
                        <f:TextBox ID="TextBox5" runat="server"></f:TextBox>
                    </Editor>
                </f:RenderField>
                <f:RenderField ColumnID="DeviceUseTime" DataField="DeviceUseTime" HeaderText="每天使用时间(小时)">
                    <Editor>
                        <f:NumberBox ID="NumberBox1" runat="server" MinValue="0" MaxValue="24"></f:NumberBox>
                    </Editor>
                </f:RenderField>
                <f:RenderField ColumnID="DeviceBaoYangZhouQi" DataField="DeviceBaoYangZhouQi" HeaderText="设备保养周期(天)">
                    <Editor>
                        <f:NumberBox ID="NumberBox2" runat="server" MinValue="0" MaxValue="366"></f:NumberBox>
                    </Editor>
                </f:RenderField>
                <f:RenderField ColumnID="DeviceJiaoYanYouXiaoQi" DataField="DeviceJiaoYanYouXiaoQi" HeaderText="设备校验周期(天)">
                    <Editor>
                        <f:NumberBox ID="NumberBox3" runat="server" MinValue="0" MaxValue="366" EmptyText="单位(天)"></f:NumberBox>
                    </Editor>
                </f:RenderField>
                <f:BoundField ColumnID="DeviceDate" DataField="DeviceDate" HeaderText="设备使用日期" ExpandUnusedSpace="true" />

            </Columns>
        </f:Grid>

    </form>
</body>
</html>
