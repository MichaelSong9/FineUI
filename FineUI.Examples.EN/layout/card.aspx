<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="card.aspx.cs" Inherits="FineUI.Examples.layout.card" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ID="Panel2" runat="server" Height="250px" Width="750px" ShowBorder="True"
        Layout="Card" ShowHeader="True" EnableBackgroundColor="true" Title="Height=250px Width=750px Layout=Card">
        <Items>
            <x:Panel ID="Panel1" EnableBackgroundColor="true" runat="server" ShowBorder="True"
                ShowHeader="false">
                <Items>
                    <x:Label ID="Label3" Text="Width=150px" runat="server">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Panel ID="Panel4" EnableBackgroundColor="true" runat="server" ShowBorder="True"
                ShowHeader="false">
                <Items>
                    <x:Label ID="Label4" Text="ColumnWidth=30%" runat="server">
                    </x:Label>
                </Items>
            </x:Panel>
            <x:Form ID="Form2" EnableBackgroundColor="true" runat="server" ShowBorder="True"
                ShowHeader="false">
                <Rows>
                    <x:FormRow>
                        <Items>
                            <x:Label ID="Label1" Text="ColumnWidth=70%" ShowLabel="false" runat="server">
                            </x:Label>
                        </Items>
                    </x:FormRow>
                    <x:FormRow>
                        <Items>
                            <x:TextBox ID="TextBox1" Label="TextBox1" runat="server">
                            </x:TextBox>
                            <x:Label ID="Label2" runat="server">
                            </x:Label>
                        </Items>
                    </x:FormRow>
                </Rows>
            </x:Form>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
