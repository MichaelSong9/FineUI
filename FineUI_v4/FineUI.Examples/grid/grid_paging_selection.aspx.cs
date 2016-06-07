using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace FineUI.Examples.grid
{
    public partial class grid_paging_selection : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        #region LoadData

        private void BindGrid()
        {
            DataTable table = DataSourceUtil.GetDataTable2();

            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        #endregion

        #region Events

        protected void Button1_Click(object sender, EventArgs e)
        {
            SyncSelectedRowIDArrayToHiddenField();

            labResult.Text = "选中行的ID列表为：" + hfSelectedIDS.Text.Trim();
        }


        protected void Grid1_PageIndexChange(object sender, GridPageEventArgs e)
        {
            SyncSelectedRowIDArrayToHiddenField(e.OldPageIndex);

            BindGrid();

            UpdateSelectedRowIDArray();
        }

        private List<string> GetSelectedRowIDArrayFromHiddenField()
        {
            JArray idsArray = new JArray();

            string currentIDS = hfSelectedIDS.Text.Trim();
            if (!String.IsNullOrEmpty(currentIDS))
            {
                idsArray = JArray.Parse(currentIDS);
            }
            else
            {
                idsArray = new JArray();
            }
            return new List<string>(idsArray.ToObject<string[]>());
        }

        private void SyncSelectedRowIDArrayToHiddenField()
        {
            SyncSelectedRowIDArrayToHiddenField(Grid1.PageIndex);
        }

        private void SyncSelectedRowIDArrayToHiddenField(int pageIndex)
        {
            List<string> ids = GetSelectedRowIDArrayFromHiddenField();

            List<string> selectedRowIDs = new List<string>(Grid1.SelectedRowIDArray);
            int startPageIndex = pageIndex * Grid1.PageSize;
            for (int i = startPageIndex, count = Math.Min(startPageIndex + Grid1.PageSize, Grid1.RecordCount); i < count; i++)
            {
                string rowID = Grid1.Rows[i].RowID;
                if (selectedRowIDs.Contains(rowID))
                {
                    if (!ids.Contains(rowID))
                    {
                        ids.Add(rowID);
                    }
                }
                else
                {
                    if (ids.Contains(rowID))
                    {
                        ids.Remove(rowID);
                    }
                }
            }
            
            hfSelectedIDS.Text = new JArray(ids).ToString(Formatting.None);
        }

        private void UpdateSelectedRowIDArray()
        {
            List<string> ids = GetSelectedRowIDArrayFromHiddenField();

            List<string> selectedRowIDs = new List<string>();
            foreach (GridRow row in Grid1.Rows)
            {
                if (ids.Contains(row.RowID))
                {
                    selectedRowIDs.Add(row.RowID);
                }
            }

            Grid1.SelectedRowIDArray = selectedRowIDs.ToArray();
        }
        #endregion
    }
}
