<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajax.aspx.cs" Inherits="FineUI.Examples.ajax" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body
        {
            font-size: 13px;
        }
        table td
        {
            vertical-align: top;
            width: 180px;
            padding: 0 2px 20px 0;
        }
        table td .head
        {
            border-top: solid 1px #8DB2E3;
            background-color: #D6E3F2;
            padding: 5px;
            font-weight: bold;
        }
        table ul
        {
            margin: 0px;
            list-style-type: none;
            padding: 5px;
            min-height: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    FineUI has native AJAX support, that's to say, you don't need any configuration
    to own this feature. Any change of control's properties in server-side will affect
    UI display using AJAX.
    <br />
    <br />
    But, not all properties support AJAX, the following list show which property of
    each control support AJAX.
    <br />
    <br />
    <asp:Literal ID="litResult" runat="server"></asp:Literal>
    </form>
</body>
</html>
