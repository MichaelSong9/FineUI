<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="empty.aspx.cs" Inherits="FineUI.Examples.test.empty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <asp:Literal runat="server" ID="testLit"></asp:Literal>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager AutoSizePanelID="rpNew" runat="server"></f:PageManager>
      <%--  <f:DropDownList runat="server" Width="100" MatchFieldWidth="false" ID="ddlTest" OnSelectedIndexChanged="ddlTest_SelectedIndexChanged">
            <f:ListItem Text="ddlTest_Sele tedIn dexChangedddlTest_Sel ectedIndexChanged" Value="1" />
            <f:ListItem Text="Text2" Value="2" />
            <f:ListItem Text="Text3" Value="3" />
            <f:ListItem Text="Text4" Value="4" />
            <f:ListItem Text="ddlTest_SelectedInde xChangedddlTe st_SelectedI ndexChanged" Value="1" />
            <f:ListItem Text="Text2" Value="2" />
            <f:ListItem Text="Text3" Value="3" />
            <f:ListItem Text="Text4" Value="4" />
            <f:ListItem Text="ddlTest_Sele ctedIndexChangeddd Test_Select edIndexChanged" Value="1" />
            <f:ListItem Text="Text2" Value="2" />
            <f:ListItem Text="Text3" Value="3" />
            <f:ListItem Text="ddlTest_SelectedInd exChangedddlTest_Se lectedI ndexChanged" Value="1" />
            <f:ListItem Text="Text2" Value="2" />
            <f:ListItem Text="Text3" Value="3" />
            <f:ListItem Text="Text4" Value="4" />

            <f:ListItem Text="Text4" Value="4" />
        </f:DropDownList>--%>
        <%--<f:Button runat="server" ID="toggleDdl" Text="启用/禁用下拉列表" OnClick="toggleDdl_Click" />--%>


         <f:RegionPanel ID="rpNew" runat="server" ShowBorder="false">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server" Position="Top" RegionPosition="Left">
                    <Items>
                        <f:SimpleForm ID="SimpleForm1" BodyPadding="5px" runat="server" ShowHeader="false" Width="310px">
                            <Items>
                                <f:TextBox ID="txtOperaterName" runat="server" Label="操作人">
                                </f:TextBox>
                                <f:TextBox ID="txtOperateDate" runat="server" Label="操作时间">
                                </f:TextBox>
                                <f:Button ID="btnDataSave" runat="server" Text="新建" ValidateForms="FormNew" Icon="SystemSave" Size="Large">
                                </f:Button>
                            </Items>
                        </f:SimpleForm>
                        <f:TextArea ID="txtRemark" runat="server" Label="操作意见" EmptyText="如果有处理意见，请填入以便下一处理人能及时知晓"
                            Width="550px">
                        </f:TextArea>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Regions>
                <f:Region ID="Region1" runat="server" ShowHeader="false" AutoScroll="true">
                    <Items>
                        <f:SimpleForm ID="SimpleForm2" BodyPadding="5px" runat="server" ShowHeader="false" Width="310px">
                            <Items>
                                <f:TextBox ID="TextBox1" runat="server" Label="操作人">
                                </f:TextBox>
                                <f:TextBox ID="TextBox2" runat="server" Label="操作时间">
                                </f:TextBox>
                                <f:Button ID="Button1" runat="server" Text="新建" ValidateForms="FormNew" Icon="SystemSave" Size="Large">
                                </f:Button>
                            </Items>
                        </f:SimpleForm>
                        <f:TextArea ID="TextArea1" runat="server" Label="操作意见" EmptyText="如果有处理意见，请填入以便下一处理人能及时知晓"
                            Width="550px">
                        </f:TextArea>
                    </Items>
                </f:Region>
            </Regions>
        </f:RegionPanel>

    </form>
</body>
</html>
