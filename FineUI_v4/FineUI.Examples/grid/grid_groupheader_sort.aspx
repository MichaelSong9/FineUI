<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_groupheader_sort.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_groupheader_sort" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <x:PageManager ID="PageManager1" runat="server" />
        <x:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="表格" EnableFrame="true" EnableCollapse="true" Width="900px" runat="server"
            DataKeyNames="Guid" AllowSorting="true" SortField="HZData1"
            SortDirection="ASC" OnSort="Grid1_Sort" ForceFitAllTime="true">
            <Columns>
                <x:RowNumberField />
                <x:GroupField HeaderText="河南省" TextAlign="Center">
                    <Columns>
                        <x:GroupField HeaderText="驻马店市" TextAlign="Center">
                            <Columns>
                                <x:BoundField Width="100px" DataField="HZData1" SortField="HZData1" ColumnID="HZData1"
                                    HeaderText="数据一" TextAlign="Center" />
                                <x:BoundField Width="100px" DataField="HZData2" SortField="HZData2" HeaderText="数据二"
                                    TextAlign="Center" />
                            </Columns>
                        </x:GroupField>
                        <x:GroupField HeaderText="漯河市" TextAlign="Center">
                            <Columns>
                                <x:BoundField Width="100px" DataField="HLData1" SortField="HLData1" HeaderText="数据一"
                                    TextAlign="Center" />
                                <x:BoundField Width="100px" DataField="HLData2" SortField="HLData2" HeaderText="数据二"
                                    TextAlign="Center" />
                            </Columns>
                        </x:GroupField>
                    </Columns>
                </x:GroupField>
                <x:GroupField HeaderText="安徽省" TextAlign="Center">
                    <Columns>
                        <x:GroupField HeaderText="合肥市" TextAlign="Center">
                            <Columns>
                                <x:BoundField Width="100px" DataField="AHData1" SortField="AHData1" HeaderText="数据一"
                                    TextAlign="Center" />
                                <x:BoundField Width="100px" DataField="AHData2" SortField="AHData2" HeaderText="数据二"
                                    TextAlign="Center" />
                            </Columns>
                        </x:GroupField>
                        <x:GroupField HeaderText="六安市" TextAlign="Center">
                            <Columns>
                                <x:BoundField Width="100px" DataField="ALData1" SortField="ALData1" HeaderText="数据一"
                                    TextAlign="Center" />
                                <x:BoundField Width="100px" DataField="ALData2" SortField="ALData2" HeaderText="数据二"
                                    TextAlign="Center" />
                            </Columns>
                        </x:GroupField>
                    </Columns>
                </x:GroupField>
            </Columns>
        </x:Grid>
        <br />
        <br />
    </form>
</body>
</html>
