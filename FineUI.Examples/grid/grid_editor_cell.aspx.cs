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
    public partial class grid_editor_cell : PageBase
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

        private DataRow FindDataRowById(int dataId)
        {
            DataTable table = GetSourceData();

            foreach (DataRow row in table.Rows)
            {
                if (Convert.ToInt32(row["Id"]) == dataId)
                {
                    return row;
                }
            }
            return null;
        }

        private void SetDataRow(int dataId, int chineseScore, int mathScore)
        {
            DataRow row = FindDataRowById(dataId);
            row["ChineseScore"] = chineseScore;
            row["MathScore"] = mathScore;
            row["TotalScore"] = chineseScore + mathScore;
        }

        #endregion
    }
}
