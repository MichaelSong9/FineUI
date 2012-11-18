using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FineUI.Examples.dropdownlist
{
    public partial class dropdownlist_compositelist : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindEnumrableToDropDownList();
            }
        }

        #region CustomClass

        public class CustomClass
        {
            private string _id;

            public string ID
            {
                get { return _id; }
                set { _id = value; }
            }
            private string _name;

            public string Name
            {
                get { return _name; }
                set { _name = value; }
            }

            public CustomClass(string id, string name)
            {
                _id = id;
                _name = name;
            }
        }
        #endregion

        #region BindEnumrableToDropDownList

        private void BindEnumrableToDropDownList()
        {
            List<CustomClass> myList = new List<CustomClass>();
            myList.Add(new CustomClass("1", "Item 1"));
            myList.Add(new CustomClass("2", "Item 2"));
            myList.Add(new CustomClass("3", "Item 3"));
            myList.Add(new CustomClass("4", "Item 4"));
            myList.Add(new CustomClass("5", "Item 5"));
            myList.Add(new CustomClass("6", "Item 6"));
            myList.Add(new CustomClass("7", "Item 7"));
            myList.Add(new CustomClass("8", "Item 8"));
            myList.Add(new CustomClass("9", "Item 9"));

            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "ID";
            DropDownList1.DataSource = myList;
            DropDownList1.DataBind();

        }

        #endregion

        #region Events

        protected void btnSelectItem6_Click(object sender, EventArgs e)
        {
            DropDownList1.SelectedValue = "6";
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
