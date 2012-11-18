using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FineUI.Examples.data
{
    public partial class dropdownlist_simulate_tree : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindEnumrable();
            }
        }

        #region JQueryFeature

        public class JQueryFeature
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

            private int _level;

            public int Level
            {
                get { return _level; }
                set { _level = value; }
            }

            private bool _enableSelect;

            public bool EnableSelect
            {
                get { return _enableSelect; }
                set { _enableSelect = value; }
            }

            public JQueryFeature(string id, string name, int level, bool enableSelect)
            {
                _id = id;
                _name = name;
                _level = level;
                _enableSelect = enableSelect;
            }

            public override string ToString()
            {
                return String.Format("Name:{0}+Id:{1}", Name, Id);
            }
        }
        #endregion

        #region BindEnumrable

        private void BindEnumrable()
        {
            List<JQueryFeature> myList = new List<JQueryFeature>();
            myList.Add(new JQueryFeature("0", "jQuery", 0, false));
            myList.Add(new JQueryFeature("1", "Core", 1, false));
            myList.Add(new JQueryFeature("2", "Selector", 1, false));
            myList.Add(new JQueryFeature("3", "Basic Selector", 2, true));
            myList.Add(new JQueryFeature("4", "Content Selector", 2, true));
            myList.Add(new JQueryFeature("5", "Property Selector", 2, true));
            myList.Add(new JQueryFeature("6", "Filter", 1, false));
            myList.Add(new JQueryFeature("7", "Basic Filter", 2, true));
            myList.Add(new JQueryFeature("8", "Find", 2, true));
            myList.Add(new JQueryFeature("9", "Event", 1, false));
            myList.Add(new JQueryFeature("10", "Page Load", 2, true));
            myList.Add(new JQueryFeature("11", "Event Handle", 2, true));
            myList.Add(new JQueryFeature("12", "Event Delegate", 2, true));

            ddlBox.DataTextField = "Name";
            ddlBox.DataValueField = "Id";
            ddlBox.DataSimulateTreeLevelField = "Level";
            ddlBox.DataEnableSelectField = "EnableSelect";
            ddlBox.DataSource = myList;
            ddlBox.DataBind();

            ddlBox.SelectedValue = "3";
        } 
        #endregion

        #region Events

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ddlBox.SelectedItem != null)
            {
                labResult.Text = String.Format("Selected Item: {0} (Value: {1})", ddlBox.SelectedText, ddlBox.SelectedValue);
            }
        } 
        #endregion

    }
}
