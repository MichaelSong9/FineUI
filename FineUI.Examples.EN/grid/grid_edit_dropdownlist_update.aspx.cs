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
    public partial class grid_edit_dropdownlist_update : PageBase
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
            ViewState["UseDataSource1"] = true;

            DataTable table = GetDataTable();

            Grid1.DataSource = table;
            Grid1.DataBind();

        }



        #endregion

        #region Events


        protected void Button2_Click(object sender, EventArgs e)
        {
            DataTable table;
            if (Convert.ToBoolean(ViewState["UseDataSource1"]))
            {
                ViewState["UseDataSource1"] = false;
                table = GetDataTable2();
            }
            else
            {
                ViewState["UseDataSource1"] = true;
                table = GetDataTable();
            }

            Grid1.DataSource = table;
            Grid1.DataBind();
        }




        protected void Grid1_RowDataBound(object sender, FineUI.GridRowEventArgs e)
        {
            System.Web.UI.WebControls.DropDownList ddlGender = (System.Web.UI.WebControls.DropDownList)Grid1.Rows[e.RowIndex].FindControl("ddlGender");

            List<string> genderList = new List<string>();
            genderList.Add("Man");
            genderList.Add("Woman");
            ddlGender.DataSource = genderList;
            ddlGender.DataBind();


            DataRowView row = e.DataItem as DataRowView;

            int gender = Convert.ToInt32(row["Gender"]);
            if (gender == 1)
            {
                ddlGender.SelectedValue = "Man";
            }
            else
            {
                ddlGender.SelectedValue = "Woman";
            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int i = 0, count = Grid1.Rows.Count; i < count; i++)
            {
                GridRow row = Grid1.Rows[i];
                System.Web.UI.WebControls.DropDownList ddlGender = (System.Web.UI.WebControls.DropDownList)row.FindControl("ddlGender");
                System.Web.UI.WebControls.TextBox tbxGroupName = (System.Web.UI.WebControls.TextBox)row.FindControl("tbxGroupName");

                tbxGroupName.Text = (Convert.ToInt32(tbxGroupName.Text) + 1).ToString();

            }

            // If there is no rebind, we should invoke UpdateTemplateFields to update all changes from templates.
            Grid1.UpdateTemplateFields();
        }

        #endregion

    }
}
