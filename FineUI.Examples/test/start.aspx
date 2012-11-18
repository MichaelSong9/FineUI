<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="start.aspx.cs"
    Inherits="DotNetOA.Web.task.start" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Form ID="Form2" runat="server" BodyPadding="5px" EnableBackgroundColor="true"
        Title="发起新任务" LabelWidth="100px">
        <Rows>
            <x:FormRow ID="FormRow1" runat="server">
                <Items>
                    <x:CheckBoxList ID="CheckBoxList1" runat="server" Label="执行人" Required="true" ColumnNumber="6">
                    </x:CheckBoxList>
                </Items>
            </x:FormRow>
        </Rows>
    </x:Form>
    <x:Button ID="Button1" runat="server" OnClick="btn_Submit_Click"></x:Button>
    </form>
</body>
</html>
