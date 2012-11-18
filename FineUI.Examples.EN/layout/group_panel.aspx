<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="group_panel.aspx.cs" Inherits="FineUI.Examples.layout.group_panel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ID="Panel1" BodyPadding="5px" runat="server" EnableBackgroundColor="true"
        EnableCollapse="True" Title="Panel" Width="600px">
        <Items>
            <x:GroupPanel runat="server" AutoHeight="true" Title="Group Panel 1" ID="GroupPanel1"
                EnableCollapse="True">
                <Items>
                    <x:SimpleForm ID="SimpleForm1" runat="server" EnableBackgroundColor="true" ShowBorder="False"
                        ShowHeader="False">
                        <Items>
                            <x:TextBox ID="TextBox1" Label="Name" runat="server">
                            </x:TextBox>
                            <x:TextArea ID="TextArea1" Label="Desc" runat="server">
                            </x:TextArea>
                        </Items>
                    </x:SimpleForm>
                </Items>
            </x:GroupPanel>
            <x:GroupPanel ID="GroupPanel2" EnableBackgroundColor="true" AutoHeight="true" Title="Group Panel 2"
                runat="server" EnableCollapse="True">
                <Items>
                    <x:ContentPanel ID="ContentPanel1" ShowBorder="false" ShowHeader="false" EnableBackgroundColor="true"
                        runat="server">
                        <a href="http://tech.163.com/special/jobsdead/" rel="&amp;a=7"
                            style="font-size: 18px" target="_blank"><b>Steve Jobs</b></a><br />
                        <div>
                            <p>
                            Steven Paul "Steve" Jobs was an American businessman, designer and inventor. He is best known as the co-founder, chairman, and chief executive officer of Apple Inc.
                            </p>
                        </div>
                    </x:ContentPanel>
                </Items>
            </x:GroupPanel>
        </Items>
    </x:Panel>
    <br />
    <x:Button ID="Button2" Text="Expand/Collapse Group Panel 2" OnClick="Button2_Click"
        runat="server">
    </x:Button>
    </form>
</body>
</html>
