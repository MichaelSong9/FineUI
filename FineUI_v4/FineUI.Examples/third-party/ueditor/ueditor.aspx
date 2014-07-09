<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ueditor.aspx.cs" ValidateRequest="false"
    Inherits="FineUI.Examples.aspnet.ueditor" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../../res/css/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../res/ueditor/themes/default/css/ueditor.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:ContentPanel ID="ContentPanel1" runat="server" BodyPadding="5px" Width="900px" EnableCollapse="true"
            ShowBorder="true" ShowHeader="true" Title="内容面板">
            <script type="text/plain" name="UEditor1" id="UEditor1"></script>
        </f:ContentPanel>
        <br />
        <f:Button ID="Button2" runat="server" CssClass="marginr" Text="设置编辑器的值" OnClick="Button2_Click">
        </f:Button>
        <f:Button ID="Button1" runat="server" Text="获取编辑器的值" OnClick="Button1_Click">
        </f:Button>
        <br />
        <f:HiddenField runat="server" ID="hfEditorInitContent"></f:HiddenField>
        <br />
        注：本示例不支持文件上传，请根据UEditor官网文档自行配置。
    </form>
    <script type="text/javascript">
        window.UEDITOR_HOME_URL = '<%= ResolveUrl("~/third-party/res/ueditor/") %>';
    </script>
    <script type="text/javascript" src="../../res/js/jquery.min.js"></script>
    <script type="text/javascript" src="../res/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="../res/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript">
        
        var containerClientID = '<%= ContentPanel1.ClientID %>';
        var hfEditorInitContentClientID = '<%= hfEditorInitContent.ClientID %>';

        var editor;
        F.ready(function () {
            // 初始化
            editor = new UE.getEditor('UEditor1', {
                initialFrameWidth: '100%',
                initialFrameHeight: 200,
                autoHeightEnabled: false,
                autoFloatEnabled: false,
                initialContent: F(hfEditorInitContentClientID).getValue(),
                focus: true
            });
            
            // 编辑器渲染完毕事件处理
            editor.ready(function () {
                // 重新布局外部容器
                F(containerClientID).updateLayout();
            });

        });

        // 更新编辑器内容
        function updateUEditor(content) {
            if (editor && editor.isReady) {
                editor.setContent(content);
            }
        }
    </script>
</body>
</html>
