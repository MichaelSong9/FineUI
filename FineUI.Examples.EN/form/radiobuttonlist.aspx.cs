using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class radiobuttonlist : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRadioButtonList();
            }
        }


        #region BindRadioButtonList

        public class TestClass
        {
            private string _id;

            public string Id
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

            public TestClass(string id, string name)
            {
                _id = id;
                _name = name;
            }

        }

        private void BindRadioButtonList()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("1", "DataBind Value 1"));
            myList.Add(new TestClass("2", "DataBind Value 2"));
            myList.Add(new TestClass("3", "DataBind Value 3"));
            myList.Add(new TestClass("4", "DataBind Value 4"));

            RadioButtonList2.DataTextField = "Name";
            RadioButtonList2.DataValueField = "Id";
            RadioButtonList2.DataSource = myList;
            RadioButtonList2.DataBind();

            RadioButtonList2.SelectedValue = "3";
        }
        #endregion

        #region Events

        protected void btnServerSetSelectedValue_Click(object sender, EventArgs e)
        {
            RadioButtonList1.SelectedValue = "value1";
        }

        protected void btnServerGetSelectedValue_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem != null)
            {
                Alert.ShowInTop(String.Format("Selected value of List 1: {0}", RadioButtonList1.SelectedValue));
            }
            else
            {
                Alert.ShowInTop(String.Format("No selection in List 1."));
            }
        }

        protected void rblAutoPostBack_SelectedIndexChanged(object sender, EventArgs e)
        {
            Alert.ShowInTop("Selected value of List 3: " + rblAutoPostBack.SelectedValue);
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("Selected value of List 2: " + RadioButtonList2.SelectedValue + "<br/>Selected value of List 3: " + rblAutoPostBack.SelectedValue + "<br/>Selected value of List 4: " + rblVertical.SelectedValue);
        }

        #endregion


    }
}
