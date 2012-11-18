<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3.aspx.cs" Inherits="FineUI.Examples.test3" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Accordion ID="Accordion1" Title="手风琴控件" runat="server" Width="300px" Height="450px"
        EnableFill="true" ShowBorder="True">
        <Panes>
            <x:AccordionPane ID="AccordionPane1" runat="server" Collapsed="true" Title="面板一" IconUrl="../images/16/1.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Items>
                    <x:Label ID="Label1" Text="面板一中的文本" runat="server">
                    </x:Label>
                </Items>
            </x:AccordionPane>
            <x:AccordionPane ID="AccordionPane2" runat="server" Collapsed="false" Title="面板二" IconUrl="../images/16/4.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Items>
                    <x:Label ID="Label2" Text="面板二中的文本" runat="server">
                    </x:Label>
                </Items>
            </x:AccordionPane>
            <x:AccordionPane ID="AccordionPane3" runat="server" Collapsed="true" Title="面板三" IconUrl="../images/16/7.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Items>
                    <x:Label ID="Label3" Text="面板三中的文本" runat="server">
                    </x:Label>
                </Items>
            </x:AccordionPane>
        </Panes>
    </x:Accordion>
    <br />
    </form>
</body>
</html>
