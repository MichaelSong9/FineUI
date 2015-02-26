<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="FineUI.Examples.test.test" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../res/css/main.css" rel="stylesheet" type="text/css" />
    <style>
        .margin_right {
            margin-right: 10px;
        }

        .type {
            border: 1px solid blue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <f:PageManager ID="PageManager1" AutoSizePanelID="Panel2" runat="server" />
        <f:Panel ID="Panel2" runat="server" ShowBorder="false" Layout="HBox" BoxConfigAlign="Stretch"
            BoxConfigPosition="Start" BodyPadding="2px" ShowHeader="false">
            <Items>
                <f:Form Width="620px" LabelWidth="100px" LabelSeparator="："  AutoScroll="true"
                    BodyPadding="5px" EnableCollapse="true" ID="Form2" runat="server" Title="考生详细信息">
                    <Toolbars>
                        <f:Toolbar ID="Toolbar3" Position="Top" ToolbarAlign="Right" runat="server">
                            <Items>
                                <f:Button runat="server"  ID="btnNew" Text="新增考生"  />
                                <f:ToolbarSeparator ID="ToolbarSeparator1" runat="server"></f:ToolbarSeparator>
                                <f:Button runat="server"  ID="btnImport" Text="批量导入"  />
                                <f:ToolbarFill ID="ToolbarFill1" runat="server"></f:ToolbarFill>
                                <f:Button runat="server"  ID="btnSubmit" 
                                    ValidateForms="Form2" Text="保存信息">
                                </f:Button>
                            </Items>
                        </f:Toolbar>
                    </Toolbars>
                    <Rows>
                        <f:FormRow>
                            <Items>
                                <f:GroupPanel ID="GroupPanel1" Title="初二会考成绩" runat="server">
                                    <Items>
                                        <f:Panel ID="Panel1" Layout="HBox" BoxConfigAlign="Stretch" ShowHeader="false" ShowBorder="false" runat="server">
                                            <Items>
                                                <f:TextBox ID="tbxHuikaohao" LabelWidth="80px" Label="会考证号" CssClass="margin_right" NextFocusControl="tbxBaominghao"
                                                    BoxFlex="1" Required="true" ShowRedStar="true" runat="server" FocusOnPageLoad="true"
                                                    MaxLength="9" MaxLengthMessage="会考证号必须是9位长度" MinLengthMessage="会考证号必须是9位长度" MinLength="9">
                                                </f:TextBox>
                                                <f:CheckBox ID="cbWaidi" ShowLabel="false" runat="server" Text="外地或未参加初二会考考生" 
                                                    Checked="False" AutoPostBack="True" BoxFlex="1" />
                                            </Items>
                                        </f:Panel>
                                        <f:Panel ID="Panel3" Layout="HBox" BoxConfigAlign="Stretch" ShowHeader="false" ShowBorder="false" runat="server">
                                            <Items>
                                                <f:TextBox ID="tbxHuikaoxingming" LabelWidth="75px" Label="会考姓名" CssClass="margin_right" BoxFlex="2" Required="true" runat="server" Enabled="false" />
                                                <f:TextBox ID="tbxDili" LabelWidth="80px" Label="地理成绩" CssClass="margin_right" BoxFlex="1" runat="server" Enabled="false" />
                                                <f:TextBox ID="tbxShengwu" LabelWidth="75px" Label="生物成绩" BoxFlex="1" runat="server" Enabled="false" />
                                            </Items>
                                        </f:Panel>
                                    </Items>
                                </f:GroupPanel>
                            </Items>
                        </f:FormRow>
                        <f:FormRow>
                            <Items>
                                <f:GroupPanel ID="GroupPanel2" Title="考生基本信息" runat="server">
                                    <Items>
                                        <f:Panel ID="Panel5" Layout="HBox" BoxConfigAlign="Stretch" ShowHeader="false" ShowBorder="false" runat="server">
                                            <Items>
                                                <f:DropDownList runat="server" ID="ddbChuzhongForm" Label="报考单位" EmptyText="请选择报考单位"
                                                    EnableMultiSelect="false"  LabelWidth="80px"
                                                      BoxFlex="1" CssClass="margin_right">
                                                    
                                                </f:DropDownList>
                                                <f:DropDownList runat="server" ID="ddbBanji" Label="所在班级" EmptyText="请选择所在班级"
                                                    EnableMultiSelect="false"  LabelWidth="80px"
                                                      BoxFlex="1">
                                                    
                                                </f:DropDownList>
                                            </Items>
                                        </f:Panel>
                                        <f:Panel ID="Panel4" Layout="HBox" BoxConfigAlign="Stretch" ShowHeader="false" ShowBorder="false" runat="server">
                                            <Items>
                                                <f:TextBox ID="tbxBaominghao" LabelWidth="80px" Label="报名序号" CssClass="margin_right"
                                                    BoxFlex="1" Required="true" ShowRedStar="true" runat="server" NextFocusControl="tbxXingming"
                                                    MaxLength="9" MaxLengthMessage="会考证号必须是9位长度" MinLengthMessage="会考证号必须是9位长度" MinLength="9">
                                                </f:TextBox>
                                                <f:RadioButtonList ID="rblType" ShowLabel="false" runat="server" ColumnNumber="2" BoxFlex="1">
                                                    <f:RadioItem Text="自动生成" Value="auto" Selected="true" />
                                                    <f:RadioItem Text="手工输入" Value="manual" />
                                                </f:RadioButtonList>
                                            </Items>
                                        </f:Panel>
                                        <f:Panel ID="Panel6" Layout="HBox" BoxConfigAlign="Stretch" ShowHeader="false" ShowBorder="false" runat="server">
                                            <Items>
                                                <f:TextBox ID="tbxXingming" LabelWidth="80px" Label="姓名" CssClass="margin_right"
                                                    BoxFlex="1" Required="true" ShowRedStar="true" runat="server" NextFocusControl="tbxChushengriqi">
                                                </f:TextBox>
                                                <f:DropDownList runat="server" ID="ddbXingbie" Label="性别" EmptyText="请选择性别"
                                                    EnableMultiSelect="false"  LabelWidth="80px"
                                                      BoxFlex="1">
                                                   
                                                </f:DropDownList>
                                            </Items>
                                        </f:Panel>
                                        <f:Panel ID="Panel7" Layout="HBox" BoxConfigAlign="Stretch" ShowHeader="false" ShowBorder="false" runat="server">
                                            <Items>
                                                <f:TextBox ID="tbxChushengriqi" LabelWidth="80px" Label="出生日期" CssClass="margin_right"
                                                    BoxFlex="1" Required="true" ShowRedStar="true" runat="server" NextFocusControl="tbxJiazhang">
                                                </f:TextBox>
                                                <f:DropDownList runat="server" ID="ddbMinzu" Label="民族" EmptyText="请选择民族" Required="true" ShowRedStar="true"
                                                    EnableMultiSelect="false"  LabelWidth="80px"
                                                      BoxFlex="1">
                                                   
                                                </f:DropDownList>
                                            </Items>
                                        </f:Panel>
                                        <f:Panel ID="Panel8" Layout="HBox" BoxConfigAlign="Stretch" ShowHeader="false" ShowBorder="false" runat="server">
                                            <Items>
                                                <f:DropDownList runat="server" ID="ddbLeibie" Label="考生类别" EmptyText="请选择考生类别" Required="true" ShowRedStar="true"
                                                    EnableMultiSelect="false"  LabelWidth="80px"
                                                      BoxFlex="1" CssClass="margin_right">
                                                    
                                                </f:DropDownList>
                                                <f:DropDownList runat="server" ID="ddbZhengzhi" Label="政治面貌" EmptyText="请选择政治面貌"
                                                    EnableMultiSelect="false"  LabelWidth="80px" Required="true" ShowRedStar="true"
                                                      BoxFlex="1">
                                                   
                                                </f:DropDownList>
                                            </Items>
                                        </f:Panel>
                                    </Items>
                                </f:GroupPanel>
                            </Items>
                        </f:FormRow>
                        <f:FormRow>
                            <Items>
                                <f:GroupPanel ID="GroupPanel3" Title="加分项目" runat="server">
                                    <Items>
                                        <f:Panel ID="Panel9" Layout="HBox" BoxConfigAlign="Stretch" ShowHeader="false" ShowBorder="false" runat="server">
                                            <Items>
                                                <f:CheckBoxList ID="rblVertical" runat="server" ColumnNumber="5">
                                                    <f:CheckItem Text="地市级优秀生" Value="youxiu" />
                                                    <f:CheckItem Text="地市级优干生" Value="yougan" />
                                                    <f:CheckItem Text="地市级体优生" Value="dishitiyou" />
                                                    <f:CheckItem Text="农村计生子女" Value="jisheng" />
                                                    <f:CheckItem Text="军烈属子女" Value="junlie" />
                                                    <f:CheckItem Text="三侨生" Value="sanqiao" />
                                                    <f:CheckItem Text="残疾生" Value="canji" />
                                                    <f:CheckItem Text="创新奖" Value="chuangxin" />
                                                </f:CheckBoxList>
                                            </Items>
                                        </f:Panel>
                                    </Items>
                                </f:GroupPanel>
                            </Items>
                        </f:FormRow>
                        <f:FormRow>
                            <Items>
                                <f:GroupPanel ID="GroupPanel4" Title="户籍信息" runat="server">
                                    <Items>
                                        <f:Panel ID="Panel10" Layout="HBox" BoxConfigAlign="Stretch" ShowHeader="false" ShowBorder="false" runat="server">
                                            <Items>
                                                <f:DropDownList runat="server" ID="ddbHuji" Label="户籍所在地" EmptyText="请选择户籍所在地"
                                                    EnableMultiSelect="false" MatchFieldWidth="true" LabelWidth="95px" Required="true" ShowRedStar="true"
                                                      BoxFlex="1" CssClass="margin_right">
                                                   
                                                </f:DropDownList>
                                                <f:TextBox ID="tbxJiazhang" Required="true" ShowRedStar="true" Label="家长姓名" LabelWidth="80px"
                                                    EmptyText="请输入家长姓名" runat="server" BoxFlex="1" NextFocusControl="tbxYoubian" />
                                            </Items>
                                        </f:Panel>
                                        <f:Panel ID="Panel11" Layout="HBox" BoxConfigAlign="Stretch" ShowHeader="false" ShowBorder="false" runat="server">
                                            <Items>
                                                <f:TextBox ID="tbxYoubian" Required="true" ShowRedStar="true" Label="邮政编码" EmptyText="请输入邮政编码"
                                                    runat="server" BoxFlex="1" CssClass="margin_right" NextFocusControl="tbxDianhua" />
                                                <f:TextBox ID="tbxDianhua" Required="true" ShowRedStar="true" Label="联系电话" LabelWidth="80px"
                                                    EmptyText="请输入联系电话" runat="server" BoxFlex="1" NextFocusControl="tbxDizhi" />
                                            </Items>
                                        </f:Panel>
                                        <f:Panel ID="Panel12" Layout="HBox" BoxConfigAlign="Stretch" ShowHeader="false" ShowBorder="false" runat="server">
                                            <Items>
                                                <f:TextBox ID="tbxDizhi" Required="true" ShowRedStar="true" Label="通信地址"
                                                    EmptyText="请输入通信地址" runat="server" BoxFlex="1" NextFocusControl="btnSubmit" />
                                            </Items>
                                        </f:Panel>
                                    </Items>
                                </f:GroupPanel>
                            </Items>
                        </f:FormRow>
                    </Rows>
                </f:Form>
                <f:Grid ID="Grid1" ShowBorder="true" BoxFlex="1" ShowHeader="true" Title="考生列表" runat="server" EnableCollapse="true"
                    DataKeyNames="ID,baominghao" EnableMultiSelect="false" Margin="0 5 0 0" SortDirection="ASC" SortField="baominghao"
                    AllowPaging="true" IsDatabasePaging="true" EnableCheckBoxSelect="true" EnableRowClickEvent="true">
                    <Toolbars>
                        <f:Toolbar ID="Toolbar1" runat="server">
                            <Items>
                                <f:DropDownList runat="server" ID="ddbXianqu1" Label="一级县区" ShowLabel="false" EmptyText="请选择一级县区"
                                    EnableMultiSelect="false"  Required="true" ShowRedStar="true" AutoPostBack="true"
                                      >
                                   
                                </f:DropDownList>
                                <f:ToolbarSeparator ID="ToolbarSeparator2" runat="server"></f:ToolbarSeparator>
                                <f:DropDownList runat="server" ID="ddbKaodian" Label="所属考点" ShowLabel="false" EmptyText="请选择考点"
                                    EnableMultiSelect="false"  Required="true" ShowRedStar="true" AutoPostBack="true"
                                     >
                                   
                                </f:DropDownList>
                                <f:ToolbarSeparator ID="ToolbarSeparator5" runat="server"></f:ToolbarSeparator>
                                <f:DropDownList runat="server" ID="ddlBanji" EnableMultiSelect="true" AutoPostBack="true" >
                                    <f:ListItem Text="01班" Value="01" Selected="true" />
                                </f:DropDownList>
                            </Items>
                        </f:Toolbar>
                        <f:Toolbar runat="server" ID="Toolbar2">
                            <Items>
                                <f:DropDownList runat="server" ID="ddbChuzhongGrid" Label="所属初中" ShowLabel="false" EmptyText="请选择初中"
                                    EnableMultiSelect="false"  Required="true" ShowRedStar="true"
                                      >
                                    
                                </f:DropDownList>
                                <f:ToolbarSeparator ID="ToolbarSeparator3" runat="server"></f:ToolbarSeparator>
                                <f:TwinTriggerBox ID="ttbSearchMessage" runat="server" ShowLabel="false" EmptyText="在报名号或姓名中搜索"
                                    Trigger1Icon="Clear" Trigger2Icon="Search" ShowTrigger1="false" 
                                    >
                                </f:TwinTriggerBox>
                                <f:ToolbarSeparator ID="ToolbarSeparator4" runat="server"></f:ToolbarSeparator>
                                <f:Button ID="btnExport" runat="server" Icon="NoteGo" EnableAjax="false" DisableControlBeforePostBack="false" Text="导出考生"  />
                                <f:Button ID="btnPrint" runat="server" Icon="Printer" EnableAjax="false" DisableControlBeforePostBack="false" Text="打印名册" />
                            </Items>
                        </f:Toolbar>
                    </Toolbars>
                    <Columns>
                        <f:RowNumberField Width="60px" TextAlign="center"></f:RowNumberField>
                        <f:BoundField Width="150px" DataField="baominghao" HeaderText="报名序号" TextAlign="center" />
                        <f:BoundField Width="100px" DataField="xingming" HeaderText="姓名" TextAlign="center" />
                        <f:BoundField Width="100px" DataField="banji" HeaderText="班级" TextAlign="center" />
                        <f:BoundField Width="150px" DataField="dongzuoshijian" HeaderText="更新时间" TextAlign="center" />
                    </Columns>
                    <PageItems>
                        <f:ToolbarSeparator ID="ToolbarSeparator6" runat="server">
                        </f:ToolbarSeparator>
                        <f:ToolbarText ID="ToolbarText1" runat="server" Text="每页记录数：">
                        </f:ToolbarText>
                        <f:DropDownList ID="ddlGridPageSize" Width="80px" AutoPostBack="true" 
                            runat="server">
                            <f:ListItem Text="10" Value="10" />
                            <f:ListItem Text="20" Value="20" />
                            <f:ListItem Text="50" Value="50" />
                            <f:ListItem Text="100" Value="100" />
                        </f:DropDownList>
                    </PageItems>
                </f:Grid>
            </Items>
        </f:Panel>

    </form>
</body>
</html>
