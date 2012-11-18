using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.grid
{
    public partial class grid_rowcommand : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        #region LoadData

        private void LoadData()
        {
            BindGrid();
        }

        private void BindGrid()
        {
            DataTable table = GetDataTable();

            Grid1.DataSource = table;
            Grid1.DataBind();

        }

        #endregion

        #region Events

        protected void Button1_Click(object sender, EventArgs e)
        {
            labResult.Text = HowManyRowsAreSelected(Grid1);
        }

        protected void Grid1_RowCommand(object sender, FineUI.GridCommandEventArgs e)
        {
            if (e.CommandName == "Action1" || e.CommandName == "Action2")
            {
                object[] keys = Grid1.DataKeys[e.RowIndex];
                labResult.Text = String.Format("You click row {0}, column {1}, row command name is  {2}", e.RowIndex + 1, e.ColumnIndex + 1, e.CommandName) +
                       "<br />" +
                       String.Format("Current row data - ID: {0}, Name: {1}", keys[0], keys[1]);
            }
        }

        #endregion
    }
}
