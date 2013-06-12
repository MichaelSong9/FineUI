using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;

namespace FineUI.Examples.grid
{
    public partial class grid_editor_cell_renderfunction : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();

            }
        }

        #region BindGrid

        private void BindGrid()
        {
            DataTable table = GetSourceData();

            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        
        #endregion

        #region Events

        protected void Button2_Click(object sender, EventArgs e)
        {
            Dictionary<int, Dictionary<int, string>> modifiedDict = Grid1.GetModifiedDict();

            for (int i = 0, count = Grid1.Rows.Count; i < count; i++)
            {
                if (modifiedDict.ContainsKey(i))
                {
                    Dictionary<int, string> rowDict = modifiedDict[i];

                    // 更新数据源
                    DataRow rowData = FindDataRowByIndex(i);
                    // 姓名
                    if (rowDict.ContainsKey(1))
                    {
                        rowData["Name"] = rowDict[1];
                    }
                    // 性别
                    if (rowDict.ContainsKey(2))
                    {
                        rowData["Gender"] = Convert.ToInt32(rowDict[2]);
                    }
                    // 入学年份
                    if (rowDict.ContainsKey(3))
                    {
                        rowData["EntranceYear"] = rowDict[3];
                    }
                    // 入学日期
                    if (rowDict.ContainsKey(4))
                    {
                        rowData["EntranceDate"] = DateTime.Parse(rowDict[4]).ToString("yyyy-MM-dd");
                    }
                    // 是否在校
                    if (rowDict.ContainsKey(5))
                    {
                        rowData["AtSchool"] = Convert.ToBoolean(rowDict[5]);
                    }
                    // 所学专业
                    if (rowDict.ContainsKey(6))
                    {
                        rowData["Major"] = rowDict[6];
                    }

                }
            }

            Grid1.CommitChanges();

            labResult.Text = "用户修改的数据：" + Grid1.GetModifiedData().ToString();

            Alert.Show("数据保存成功！现在可以刷新页面观察更改后的数据");
        }




        #endregion

        #region Data

        private static readonly string KEY_FOR_DATASOURCE_SESSION = "datatable_for_grid_editor_cell";

        // 模拟在服务器端保存数据
        // 特别注意：在真实的开发环境中，不要在Session放置大量数据，否则会严重影响服务器性能
        private DataTable GetSourceData()
        {
            if (Session[KEY_FOR_DATASOURCE_SESSION] == null)
            {
                Session[KEY_FOR_DATASOURCE_SESSION] = GetDataTable();
            }
            return (DataTable)Session[KEY_FOR_DATASOURCE_SESSION];
        }

        private DataRow FindDataRowByIndex(int rowIndex)
        {
            DataTable table = GetSourceData();

            return table.Rows[rowIndex];
        }

        
        #endregion
    }
}
