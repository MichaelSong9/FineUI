<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_dynamic.aspx.cs" Inherits="FineUI.Examples.form.form_dynamic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Form Width="650px" BodyPadding="5px" ID="Form2" EnableBackgroundColor="true"
        Title="Form" LabelWidth="150px" runat="server">
        <Rows>
            <x:FormRow>
                <Items>
                    <x:Label ID="Label1" runat="server" ShowLabel="false" Text="This is a label">
                    </x:Label>
                </Items>
            </x:FormRow>
        </Rows>
    </x:Form>
    <br />
    Note: UserName and gender control are created dynamically!
    <br />
    <br />
    <x:Button ID="Button1" runat="server" ValidateForms="Form2" ValidateTarget="Top"
        Text="Validate form and then submit" OnClick="Button1_Click">
    </x:Button>
    </form>
</body>
</html>
