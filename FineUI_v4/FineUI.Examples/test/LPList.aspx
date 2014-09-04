<%@ Page Title="" Language="C#" MasterPageFile="~/test/SingleGrid.Master" AutoEventWireup="true" CodeBehind="LPList.aspx.cs" Inherits="FineUI.Examples.test.LPList" %>

<%@ MasterType VirtualPath="~/test/SingleGrid.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphForm" runat="server">
    <f:Grid ID="Grid1" runat="server" ShowHeader="false" ShowBorder="false"
        DataKeyNames="ID,HDHSP_ID" SortField="HDHSP_ID" AllowSorting="true"
        AllowPaging="true" IsDatabasePaging="true" EnableCheckBoxSelect="true">
        <Toolbars>
            <f:Toolbar ID="Toolbar1" runat="server">
                <Items>
                    <f:Button ID="btnDR" runat="server" Text="导入" OnClick="btnDR_Click"></f:Button>
                    <f:Button ID="btnMB" runat="server" Text="模板下载" OnClientClick="document.getElementById('aMBXZ').click()"></f:Button>
                </Items>
            </f:Toolbar>
        </Toolbars>
        <Columns>
            <f:RowNumberField Width="35px" EnablePagingNumber="true" />
            <f:BoundField DataField="HDHSP_ID" SortField="HDHSP_ID" HeaderText="编码" Width="80px" />
            <f:BoundField DataField="HDHSP_XH" SortField="HDHSP_XH" HeaderText="型号" Width="200px" />
            <f:BoundField DataField="HDHSP_GPJ" SortField="HDHSP_GPJ" HeaderText="挂牌价" Width="80px" />
        </Columns>
    </f:Grid>
    <f:Window ID="Window1" runat="server" IsModal="true" Hidden="true" Target="Top" EnableResize="true"
        EnableMaximize="true" EnableIFrame="true" IFrameUrl="about:blank" Width="650px"
        Height="450px" OnClose="Window1_Close">
    </f:Window>
</asp:Content>
