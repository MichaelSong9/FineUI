using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace FineUI.Examples.form
{
    public partial class checkboxlist_update : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InitCheckBoxList2();
            }
        }

        private void InitCheckBoxList2()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("value1", "Item 1"));
            myList.Add(new TestClass("value2", "Item 2"));
            myList.Add(new TestClass("value3", "Item 3"));
            myList.Add(new TestClass("value4", "Item 4"));
            myList.Add(new TestClass("value5", "Item 5"));
            myList.Add(new TestClass("value6", "Item 6"));

            CheckBoxList2.DataTextField = "Name";
            CheckBoxList2.DataValueField = "Id";
            CheckBoxList2.DataSource = myList;
            CheckBoxList2.DataBind();

            CheckBoxList2.SelectedValueArray = new string[] { "value1", "value2", "value3" };

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

        #region CheckBoxList1

        protected void btnUpdateList1_Click(object sender, EventArgs e)
        {
            BindCheckBoxList1();
        }

        private void BindCheckBoxList1()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("value1", "DataBind Item 1"));
            myList.Add(new TestClass("value2", "DataBind Item 2"));
            myList.Add(new TestClass("value3", "DataBind Item 3"));
            myList.Add(new TestClass("value4", "DataBind Item 4"));

            CheckBoxList1.DataTextField = "Name";
            CheckBoxList1.DataValueField = "Id";
            CheckBoxList1.DataSource = myList;
            CheckBoxList1.DataBind();

            CheckBoxList1.SelectedValueArray = new string[] { "value1", "value3" };

        }

        protected void btnCheckedItemsList1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("Selected items of list 1: " + GetCheckedValuesString(CheckBoxList1.SelectedValueArray));
        }


        #endregion

        #region CheckBoxList2

        protected void btnUpdateList2_Click(object sender, EventArgs e)
        {
            BindCheckBoxList2();
        }

        private void BindCheckBoxList2()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("value1", "DataBind Item 1"));
            myList.Add(new TestClass("value2", "DataBind Item 2"));
            myList.Add(new TestClass("value3", "DataBind Item 3"));
            myList.Add(new TestClass("value4", "DataBind Item 4"));
            myList.Add(new TestClass("value5", "DataBind Item 5"));
            myList.Add(new TestClass("value6", "DataBind Item 6"));

            CheckBoxList2.DataTextField = "Name";
            CheckBoxList2.DataValueField = "Id";
            CheckBoxList2.DataSource = myList;
            CheckBoxList2.DataBind();

            CheckBoxList2.SelectedValueArray = new string[] { "value1", "value3", "value6" };

        }

        protected void btnCheckedItemsList2_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("Selected items of list 2: " + GetCheckedValuesString(CheckBoxList2.SelectedValueArray));
        }

        #endregion

        #region CheckBoxList3

        protected void btnUpdateList3_Click(object sender, EventArgs e)
        {
            BindCheckBoxList3();
        }

        private void BindCheckBoxList3()
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

            CheckBoxList3.DataTextField = "Name";
            CheckBoxList3.DataValueField = "Id";
            CheckBoxList3.DataSource = myList;
            CheckBoxList3.DataBind();

            CheckBoxList3.SelectedValueArray = new string[] { "value1", "value2", "value6", "value7" };

        }

        protected void btnCheckedItemsList3_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("Selected items of list 3: " + GetCheckedValuesString(CheckBoxList3.SelectedValueArray));
        }

        #endregion

        #region CheckBoxList4

        protected void btnUpdateList4_Click(object sender, EventArgs e)
        {
            BindCheckBoxList4();
        }

        private void BindCheckBoxList4()
        {
            List<TestClass> myList = new List<TestClass>();
            myList.Add(new TestClass("value1", "DataBind Item 1"));
            myList.Add(new TestClass("value2", "DataBind Item 2"));
            myList.Add(new TestClass("value3", "DataBind Item 3"));
            myList.Add(new TestClass("value4", "DataBind Item 4"));
            myList.Add(new TestClass("value5", "DataBind Item 5"));
            myList.Add(new TestClass("value6", "DataBind Item 6"));

            CheckBoxList4.DataTextField = "Name";
            CheckBoxList4.DataValueField = "Id";
            CheckBoxList4.DataSource = myList;
            CheckBoxList4.DataBind();

            CheckBoxList4.SelectedValueArray = new string[] { "value1", "value2" };

        }

        protected void btnCheckedItemsList4_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("Selected items of list 4: " + GetCheckedValuesString(CheckBoxList4.SelectedValueArray));
        }

        #endregion

        private string GetCheckedValuesString(string[] array)
        {
            if (array.Length == 0)
            {
                return "None";
            }

            StringBuilder sb = new StringBuilder();
            foreach (string item in array)
            {
                sb.Append(item);
                sb.Append(",");
            }
            return sb.ToString().TrimEnd(',');
        }

        #endregion


    }
}
