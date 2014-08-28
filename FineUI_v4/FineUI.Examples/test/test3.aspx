<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3.aspx.cs" Inherits="FineUI.Examples.test3" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../res/css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="RegionPanel1" runat="server"></f:PageManager>

        <f:ContentPanel ID="ContentPanel1" runat="server" AutoScroll="true" ShowBorder="true" ShowHeader="true" Width="600px">
            <div class="zc-form auto">
                <div class="form-group">
                    <table class="fieldset">
                        <tbody>
                            <tr>
                                <th class="label" style="width: 100px;">备注：</th>
                                <td class="field" colspan="3">
                                    <f:TextArea ID="XXRemarks" EmptyText="请输入备注" runat="server" Height="30px"></f:TextArea>
                                </td>
                            </tr>
                            <tr>
                                <th class="label">企业类型：</th>
                                <td class="field" colspan="3">
                                    <f:RadioButtonList ID="RadioButtonList1" ColumnNumber="4" runat="server" ShowRedStar="true" Required="true">
                                        <f:RadioItem Text="可选项 1" Value="value1" />
                                        <f:RadioItem Text="可选项 2" Value="value2" />
                                        <f:RadioItem Text="可选项 3" Value="value3" />
                                        <f:RadioItem Text="可选项 4" Value="value4" />
                                        <f:RadioItem Text="可选项 5" Value="value5" />
                                        <f:RadioItem Text="可选项 6" Value="value6" />
                                        <f:RadioItem Text="可选项 7" Value="value7" />
                                        <f:RadioItem Text="可选项 8" Value="value8" />
                                    </f:RadioButtonList>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </f:ContentPanel>

    </form>
</body>
</html>
