<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tooltip.aspx.cs" Inherits="FineUI.Examples.form.tooltip" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Label ID="Label1" Text="University of Science and Technology of China" ToolTipTitle="University of Science and Technology of China" ToolTip="The University of Science and Technology of China (USTC) is under the jurisdiction of the Chinese Academy of Sciences (CAS). As a key university of the nation, it is noted for its advanced science and high technology programs, unique management studies and well-tailored disciplines in the humanities."
        runat="server">
    </x:Label>
    <br />
    <x:HyperLink ID="HyperLink1" Text="University of Science and Technology of China" ToolTip="USTC was established in Beijing in September, 1958 under the presidential leadership of Guo Moruo. The establishment was hailed as “a major event in the history of Chinese science and education”."
        ToolTipTitle="University of Science and Technology of China" Target="_blank" NavigateUrl="http://www.ustc.edu.cn/"
        runat="server">
    </x:HyperLink>
    <br />
    <x:Image ID="Image1" runat="server" Icon="World" ToolTip="This is a picture stand for the earth.">
    </x:Image>
    <br />
    <x:Image ID="Image2" runat="server" ImageWidth="32" ImageHeight="32" ImageCssStyle="border:solid 1px #ccc;padding:5px;"
        ImageUrl="../images/logo/favicon.gif" ToolTipAutoHide="false" ToolTipTitle="Tooltip title"
        ToolTip="This tooltip will not disappear automatically, click other place can hide this tip.">
    </x:Image>
    </form>
</body>
</html>
