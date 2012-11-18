<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="FineUI.Examples.form.form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .redcolor
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Form Width="600px" BodyPadding="5px" ID="extForm1" EnableBackgroundColor="true"
        LabelWidth="100px" runat="server" Title="Form 1">
        <Rows>
            <x:FormRow ColumnWidths="40% 60%">
                <Items>
                    <x:Label ID="Label1" runat="server" Label="Label" Text="Label's value">
                    </x:Label>
                    <x:CheckBox ID="CheckBox1" runat="server" Text="CheckBox" Label="CheckBox" CssClass="redcolor">
                    </x:CheckBox>
                </Items>
            </x:FormRow>
            <x:FormRow ColumnWidths="40% 60%">
                <Items>
                    <x:DropDownList ID="DropDownList1" runat="server" Label="DropDownList" Required="true"
                        ShowRedStar="True">
                        <x:ListItem Selected="true" Text="Item 1" Value="0"></x:ListItem>
                        <x:ListItem Text="Item 2" Value="1"></x:ListItem>
                    </x:DropDownList>
                    <x:TextBox ID="TextBox1" ShowRedStar="true" runat="server" Label="TextBox" Required="true"
                        Text="">
                    </x:TextBox>
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:Panel ID="Panel1" runat="server" EnableBackgroundColor="true" ShowBorder="false"
                        ShowHeader="false">
                        <Items>
                            <x:Button runat="server" Text="Validate this form and then submit" ValidateForms="extForm1" ID="btnSubmitForm1"
                                OnClick="btnSubmitForm1_Click">
                            </x:Button>
                        </Items>
                    </x:Panel>
                </Items>
            </x:FormRow>
        </Rows>
    </x:Form>
    <br />
    <x:Form Width="600px" LabelWidth="100px" EnableBackgroundColor="true" BodyPadding="5px"
        ID="extForm2" runat="server" Title="Form 2">
        <Rows>
            <x:FormRow>
                <Items>
                    <x:Label ID="Label3" Label="Phone" Text="0551-1234567" runat="server" />
                    <x:Label ID="Label16" runat="server" Label="Proposer" Text="admin">
                    </x:Label>
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:Label ID="Label4" Label="No." Text="200804170006" runat="server" />
                    <x:TextBox ID="TextBox2" Required="true" ShowRedStar="true" Label="Email" RegexPattern="EMAIL"
                        RegexMessage="Please input valid email address!" runat="server">
                    </x:TextBox>
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:DropDownList ID="DropDownList3" Label="Approver" Required="true" runat="server" ShowRedStar="True">
                        <x:ListItem Text="Boss A" Value="0"></x:ListItem>
                        <x:ListItem Text="Boss B" Value="1"></x:ListItem>
                        <x:ListItem Text="Boss C" Value="1"></x:ListItem>
                    </x:DropDownList>
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:NumberBox ID="NumberBox1" Label="Apply Number" MaxValue="1000" Required="true" runat="server"
                        ShowRedStar="True" />
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:TextArea ID="TextArea1" runat="server" Label="Description" ShowRedStar="True" Required="True">
                    </x:TextArea>
                </Items>
            </x:FormRow>
            <x:FormRow>
                <Items>
                    <x:Button ID="btnSubmitAll" Text="Validate these two form and then submit" runat="server" OnClick="btnSubmitAll_Click"
                        ValidateForms="extForm1,extForm2" />
                </Items>
            </x:FormRow>
        </Rows>
    </x:Form>
    </form>
</body>
</html>
