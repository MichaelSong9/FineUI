<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="Com.UMall.Presentation.Order.Demo" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="Panel7" runat="server" />
        <f:Panel ID="Panel7" runat="server" Layout="Fit">
            <Items>
                <f:Grid ForceFit="true" ID="gridDemo" ShowBorder="false" ShowHeader="true" Title="表格（ForceFit=true）" runat="server"
                    DataKeyNames="Id_Order"
                    BoxFlex="1">
                    <Columns>
                        <f:TemplateField HeaderText="订单号/时间/状态" Width="200px">
                            <ItemTemplate>
                                <div class="expander">
                                    <p>
                                        预订时间： <%# Eval("ID")%>
                                    </p>
                                </div>
                            </ItemTemplate>
                        </f:TemplateField>
                        <f:TemplateField HeaderText="出团时间/价格" Width="200px">
                            <ItemTemplate>
                                <div class="expander">
                                    <p>
                                        预订时间： <%# Eval("ID")%>
                                    </p>
                                </div>
                            </ItemTemplate>
                        </f:TemplateField>
                    </Columns>
                </f:Grid>
            </Items>
        </f:Panel>
    </form>
    <script>

        var gridClientID = '<%= gridDemo.ClientID %>';

        /*
        F.ready(function () {
            F(gridClientID).doLayout();
        });
        */

    </script>
</body>
</html>
