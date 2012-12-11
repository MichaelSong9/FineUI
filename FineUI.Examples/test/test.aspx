<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="test.aspx.cs"
    Inherits="FineUI.Examples.test.test" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Panel ID="anel1" runat="server" BodyPadding="0px" EnableBackgroundColor="true"
        ShowBorder="true" ShowHeader="true" Layout="Fit" Height="500px" Title="anel">
        <Items>
            <x:Form ID="Form2" runat="server" BodyPadding="0px 0px 2px 0px" EnableBackgroundColor="true"
                LabelWidth="50px" Title="Form">
                <Rows>
                    <%--<x:FormRow ID="FormRow1" runat="server">
                        <Items>
                            <x:FileUpload ID="FileUpload4" runat="server" Label="上传">
                            </x:FileUpload>
                            <x:Button ID="Button4" runat="server" Text="上传">
                            </x:Button>
                        </Items>
                    </x:FormRow>
                    <x:FormRow ID="FormRow2" runat="server">
                        <Items>
                            <x:FileUpload ID="FileUpload1" runat="server" Label="上传">
                            </x:FileUpload>
                            <x:Button ID="Button1" runat="server" Text="上传">
                            </x:Button>
                        </Items>
                    </x:FormRow>
                    <x:FormRow ID="FormRow3" runat="server">
                        <Items>
                            <x:FileUpload ID="FileUpload2" runat="server" Label="上传">
                            </x:FileUpload>
                            <x:Button ID="Button2" runat="server" Text="上传">
                            </x:Button>
                        </Items>
                    </x:FormRow>
                    <x:FormRow ID="FormRow4" runat="server">
                        <Items>
                            <x:FileUpload ID="FileUpload3" runat="server" Label="上传">
                            </x:FileUpload>
                            <x:Button ID="Button3" runat="server" Text="上传">
                            </x:Button>
                        </Items>
                    </x:FormRow>--%>
                    <x:FormRow ID="FormRow5" runat="server">
                        <Items>
                            <x:TextBox runat="server"></x:TextBox>
                            <x:TextBox ID="TextBox7" runat="server"></x:TextBox>
                        </Items>
                    </x:FormRow>
                     <x:FormRow ID="FormRow6" runat="server">
                        <Items>
                            <x:TextBox ID="TextBox1" runat="server"></x:TextBox>
                            <x:TextBox ID="TextBox6" runat="server"></x:TextBox>
                        </Items>
                    </x:FormRow>
                     <x:FormRow ID="FormRow7" runat="server">
                        <Items>
                            <x:TextBox ID="TextBox2" runat="server"></x:TextBox>
                           <x:Button ID="Button1" CssClass="x-form-item" runat="server" Text="上传">
                            </x:Button>
                        </Items>
                    </x:FormRow>
                     <x:FormRow ID="FormRow8" runat="server">
                        <Items>
                            <x:TextBox ID="TextBox3" runat="server"></x:TextBox>
                            <x:Button ID="Button2" CssClass="x-form-item inline" runat="server" Text="上传">
                            </x:Button>
                        </Items>
                    </x:FormRow>
                </Rows>
            </x:Form>
        </Items>
    </x:Panel>
    </form>
</body>
</html>
