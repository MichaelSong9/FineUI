<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accordion.aspx.cs" Inherits="FineUI.Examples.accordion.accordion2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Accordion ID="Accordion1" Title="Accordion Control" runat="server" Width="300px" Height="450px"
        EnableFill="true" ShowBorder="True" ActiveIndex="1">
        <Panes>
            <x:AccordionPane ID="AccordionPane1" runat="server" Title="Panel 1" IconUrl="../images/16/1.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Items>
                    <x:Label ID="Label1" Text="Text in Panel 1" runat="server">
                    </x:Label>
                </Items>
            </x:AccordionPane>
            <x:AccordionPane ID="AccordionPane2" runat="server" Title="Panel 2" IconUrl="../images/16/4.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Items>
                    <x:Label ID="Label2" Text="Text in Panel 2" runat="server">
                    </x:Label>
                </Items>
            </x:AccordionPane>
            <x:AccordionPane ID="AccordionPane3" runat="server" Title="Panel 3" IconUrl="../images/16/7.png"
                BodyPadding="2px 5px" ShowBorder="false">
                <Items>
                    <x:Label ID="Label3" Text="Text in Panel 3" runat="server">
                    </x:Label>
                </Items>
            </x:AccordionPane>
        </Panes>
    </x:Accordion>
    <br />
    <x:Button ID="Button1" Text="Get expanded panel" runat="server" OnClick="Button1_Click">
    </x:Button>
    </form>
</body>
</html>
