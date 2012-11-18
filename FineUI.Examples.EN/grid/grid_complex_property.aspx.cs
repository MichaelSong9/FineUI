using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.grid
{
    public partial class grid_complex_property : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindList();
            }
        }

        #region MyClass/UserInfo

        public class UserInfo
        {
            private string _userName;

            public string UserName
            {
                get { return _userName; }
                set { _userName = value; }
            }

            private string _id;

            public string ID
            {
                get { return _id; }
                set { _id = value; }
            }

            public UserInfo(string userName, string id)
            {
                _userName = userName;
                _id = id;
            }
        }

        public class MyClass
        {
            private string _myText;

            public string MyText
            {
                get { return _myText; }
                set { _myText = value; }
            }

            private string _year;

            public string Year
            {
                get { return _year; }
                set { _year = value; }
            }

            private int _id;

            public int Id
            {
                get { return _id; }
                set { _id = value; }
            }

            private bool _myCheckBox;

            public bool MyCheckBox
            {
                get { return _myCheckBox; }
                set { _myCheckBox = value; }
            }

            private UserInfo _info;

            public UserInfo Info
            {
                get { return _info; }
                set { _info = value; }
            }

            public MyClass(int id, string myText, string year, bool myCheckBox, UserInfo info)
            {
                _id = id;
                _myText = myText;
                _year = year;
                _myCheckBox = myCheckBox;
                _info = info;
            }
        }

        #endregion

        protected string GetInSchool(object myChecked)
        {
            if (Convert.ToBoolean(myChecked))
            {
                return "YES";
            }
            else
            {
                return "NO";
            }
        }

        #region BindList

        private void BindList()
        {
            List<MyClass> list = IniList();

            Grid1.DataSource = list;
            Grid1.DataBind();
        }


        private List<MyClass> IniList()
        {
            List<MyClass> list = new List<MyClass>();

            list.Add(new MyClass(101, "Pingping Chen", "2000", true, new UserInfo("Teacher Li", "111")));
            list.Add(new MyClass(102, "Fei Hu", "2008", false, new UserInfo("Teacher Shun", "222")));
            list.Add(new MyClass(103, "Tingting Jin", "2001", true, new UserInfo("Teacher Huang", "333")));
            list.Add(new MyClass(104, "Guo Pan", "2008", false, new UserInfo("Teacher Zhang", "444")));
            list.Add(new MyClass(105, "Yingying Wu", "2002", true, new UserInfo("Teacher Guo", "555")));

            return list;
        }

        #endregion


    }
}
