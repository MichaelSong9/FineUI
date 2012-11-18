using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.grid
{
    public partial class grid_rowcheckall : PageBase
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
            DataTable table = GetDataTable();

            Grid1.DataSource = table;
            Grid1.DataBind();

        }

        #endregion


        #region Events

        protected void Grid1_RowClick(object sender, FineUI.GridRowClickEventArgs e)
        {
            bool checkedState = false;
            if (new List<int>(Grid1.SelectedRowIndexArray).Contains(e.RowIndex))
            {
                checkedState = true;
            }

            CheckBoxField field1 = (CheckBoxField)Grid1.FindColumn("CheckBoxField1");
            CheckBoxField field2 = (CheckBoxField)Grid1.FindColumn("CheckBoxField2"); 
            CheckBoxField field3 = (CheckBoxField)Grid1.FindColumn("CheckBoxField3");
            
            // Grid1.Rows[e.RowIndex].States[field1.ColumnIndex] = true;
            field1.SetCheckedState(e.RowIndex, checkedState);
            field2.SetCheckedState(e.RowIndex, checkedState);
            field3.SetCheckedState(e.RowIndex, checkedState);
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            CheckBoxField field1 = (CheckBoxField)Grid1.FindColumn("CheckBoxField1");
            CheckBoxField field2 = (CheckBoxField)Grid1.FindColumn("CheckBoxField2");
            CheckBoxField field3 = (CheckBoxField)Grid1.FindColumn("CheckBoxField3");

            StringBuilder sb = new StringBuilder();
            int selectedCount = Grid1.SelectedRowIndexArray.Length;
            if (selectedCount > 0)
            {
                sb.AppendFormat("Totally select {0} rows: ", selectedCount);
                sb.Append("<ol class=\"result\">");
                for (int i = 0; i < selectedCount; i++)
                {
                    int rowIndex = Grid1.SelectedRowIndexArray[i];
                    sb.Append("<li><ul>");

                    sb.AppendFormat("<li>Row Number: {0}</li>", rowIndex + 1);
                    // Grid1.Rows[rowIndex].States[field1.ColumnIndex] is the same as field1.GetCheckedState(rowIndex)
                    sb.AppendFormat("<li>At School 1: {0}</li>", field1.GetCheckedState(rowIndex));
                    sb.AppendFormat("<li>At School 2: {0}</li>", field2.GetCheckedState(rowIndex));
                    sb.AppendFormat("<li>At School 3: {0}</li>", field3.GetCheckedState(rowIndex));

                    sb.Append("</ul></li>");
                }
                sb.Append("</ol>");
            }
            else
            {
                sb.Append("<strong>No selection!</strong>");
            }

            labResult.Text = sb.ToString();
        }


        #endregion


    }
}
