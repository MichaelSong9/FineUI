using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace FineUI.Examples.form
{
    public partial class radiobuttonlist_update : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InitRadioButtonList2();
            }
        }

        private void InitRadioButtonList2()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("value1", "Item 1"));
            myList.Add(new TestClass("value2", "Item 2"));
            myList.Add(new TestClass("value3", "Item 3"));
            myList.Add(new TestClass("value4", "Item 4"));
            myList.Add(new TestClass("value5", "Item 5"));
            myList.Add(new TestClass("value6", "Item 6"));

            RadioButtonList2.DataTextField = "Name";
            RadioButtonList2.DataValueField = "Id";
            RadioButtonList2.DataSource = myList;
            RadioButtonList2.DataBind();

            RadioButtonList2.SelectedValue = "value1";

        }

        #region TestClass

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


        #endregion

        #region Events

        #region RadioButtonList1

        protected void btnUpdateList1_Click(object sender, EventArgs e)
        {
            BindRadioButtonList1();
        }

        private void BindRadioButtonList1()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("value1", "DataBind Item 1"));
            myList.Add(new TestClass("value2", "DataBind Item 2"));
            myList.Add(new TestClass("value3", "DataBind Item 3"));
            myList.Add(new TestClass("value4", "DataBind Item 4"));

            RadioButtonList1.DataTextField = "Name";
            RadioButtonList1.DataValueField = "Id";
            RadioButtonList1.DataSource = myList;
            RadioButtonList1.DataBind();

            RadioButtonList1.SelectedValue = "value3";

        }

        protected void btnCheckedItemsList1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("Selected item of list 1: " + GetCheckedValuesString(RadioButtonList1.SelectedValue));
        }


        #endregion

        #region RadioButtonList2

        protected void btnUpdateList2_Click(object sender, EventArgs e)
        {
            BindRadioButtonList2();
        }

        private void BindRadioButtonList2()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("value1", "DataBind Item 1"));
            myList.Add(new TestClass("value2", "DataBind Item 2"));
            myList.Add(new TestClass("value3", "DataBind Item 3"));
            myList.Add(new TestClass("value4", "DataBind Item 4"));
            myList.Add(new TestClass("value5", "DataBind Item 5"));
            myList.Add(new TestClass("value6", "DataBind Item 6"));

            RadioButtonList2.DataTextField = "Name";
            RadioButtonList2.DataValueField = "Id";
            RadioButtonList2.DataSource = myList;
            RadioButtonList2.DataBind();

            RadioButtonList2.SelectedValue = "value6";

        }

        protected void btnCheckedItemsList2_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("Selected item of list 2: " + GetCheckedValuesString(RadioButtonList2.SelectedValue));
        }

        #endregion

        #region RadioButtonList3

        protected void btnUpdateList3_Click(object sender, EventArgs e)
        {
            BindRadioButtonList3();
        }

        private void BindRadioButtonList3()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("value1", "DataBind Item 1"));
            myList.Add(new TestClass("value2", "DataBind Item 2"));
            myList.Add(new TestClass("value3", "DataBind Item 3"));
            myList.Add(new TestClass("value4", "DataBind Item 4"));
            myList.Add(new TestClass("value5", "DataBind Item 5"));
            myList.Add(new TestClass("value6", "DataBind Item 6"));
            myList.Add(new TestClass("value7", "DataBind Item 7"));
            myList.Add(new TestClass("value8", "DataBind Item 8"));
            myList.Add(new TestClass("value9", "DataBind Item 9"));

            RadioButtonList3.DataTextField = "Name";
            RadioButtonList3.DataValueField = "Id";
            RadioButtonList3.DataSource = myList;
            RadioButtonList3.DataBind();

            RadioButtonList3.SelectedValue = "value7";

        }

        protected void btnCheckedItemsList3_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("Selected item of list 3: " + GetCheckedValuesString(RadioButtonList3.SelectedValue));
        }

        #endregion

        #region RadioButtonList4

        protected void btnUpdateList4_Click(object sender, EventArgs e)
        {
            BindRadioButtonList4();
        }

        private void BindRadioButtonList4()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("value1", "DataBind Item 1"));
            myList.Add(new TestClass("value2", "DataBind Item 2"));
            myList.Add(new TestClass("value3", "DataBind Item 3"));
            myList.Add(new TestClass("value4", "DataBind Item 4"));
            myList.Add(new TestClass("value5", "DataBind Item 5"));
            myList.Add(new TestClass("value6", "DataBind Item 6"));

            RadioButtonList4.DataTextField = "Name";
            RadioButtonList4.DataValueField = "Id";
            RadioButtonList4.DataSource = myList;
            RadioButtonList4.DataBind();

            RadioButtonList4.SelectedValue = "value2";

        }

        protected void btnCheckedItemsList4_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("Selected item of list 4: " + GetCheckedValuesString(RadioButtonList4.SelectedValue));
        }

        #endregion

        private string GetCheckedValuesString(string selectedValue)
        {
            if (String.IsNullOrEmpty(selectedValue))
            {
                return "None";
            }

            return selectedValue;
        }

        #endregion


    }
}
