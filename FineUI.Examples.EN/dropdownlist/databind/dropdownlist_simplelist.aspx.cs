using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FineUI.Examples.dropdownlist
{
    public partial class dropdownlist_simplelist : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStringListToDropDownList();
            }
        }

        #region BindStringListToDropDownList

        private void BindStringListToDropDownList()
        {
            List<string> strList = new List<string>();
            strList.Add("Item 1");
            strList.Add("Item 2");
            strList.Add("Item 3");
            strList.Add("Item 4");
            strList.Add("Item 5");
            strList.Add("Item 6");
            strList.Add("Item 7");
            strList.Add("Item 8");
            strList.Add("Item 9");
            strList.Add("This is a very long long long long long long item");

            DropDownList1.DataSource = strList;
            DropDownList1.DataBind();

        }
        #endregion

        #region Events

        protected void btnSelectItem6_Click(object sender, EventArgs e)
        {
            DropDownList1.SelectedValue = "Item 6";
        }

        protected void btnGetSelection_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem != null)
            {
                labResult.Text = String.Format("Selected Item: {0} (Value: {1})", DropDownList1.SelectedItem.Text, DropDownList1.SelectedValue);
            }
        } 

        #endregion

    }
}
