using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;
using AspNet = System.Web.UI.WebControls;

namespace FineUI.Examples.data
{

    public class GenderTemplate : ITemplate
    {

        public void InstantiateIn(System.Web.UI.Control container)
        {
            AspNet.Label labGender = new AspNet.Label();
            labGender.DataBinding += new EventHandler(labGender_DataBinding);
            container.Controls.Add(labGender);
        }

        private void labGender_DataBinding(object sender, EventArgs e)
        {
            AspNet.Label labGender = (AspNet.Label)sender;

            IDataItemContainer dataItemContainer = (IDataItemContainer)labGender.NamingContainer;

            int gender = Convert.ToInt32(((DataRowView)dataItemContainer.DataItem)["Gender"]);
           
            labGender.Text = (gender == 1) ? "Man" : "Woman";
        }

    }

    public partial class grid_dynamic_columns2 : PageBase
    {
        #region Page_Init

        protected void Page_Init(object sender, EventArgs e)
        {
            InitGrid();
        }

        private void InitGrid()
        {
            FineUI.BoundField bf;

            bf = new FineUI.BoundField();
            bf.DataField = "Id";
            bf.DataFormatString = "{0}";
            bf.HeaderText = "No.";
            Grid1.Columns.Add(bf);

            bf = new FineUI.BoundField();
            bf.DataField = "Name";
            bf.DataFormatString = "{0}";
            bf.HeaderText = "Name";
            Grid1.Columns.Add(bf);

            bf = new FineUI.BoundField();
            bf.DataField = "EntranceYear";
            bf.DataFormatString = "{0}";
            bf.HeaderText = "Entrance Year";
            Grid1.Columns.Add(bf);

            bf = new FineUI.BoundField();
            bf.DataToolTipField = "Major";
            bf.DataField = "Major";
            bf.DataFormatString = "{0}";
            bf.HeaderText = "Major";
            bf.ExpandUnusedSpace = true;
            Grid1.Columns.Add(bf);

            FineUI.TemplateField tf = new TemplateField();
            tf.Width = Unit.Pixel(100);
            tf.HeaderText = "Gender (Template Column)";
            tf.ItemTemplate = new GenderTemplate();
            Grid1.Columns.Add(tf);

            
            Grid1.DataKeyNames = new string[] { "Id", "Name" };
        }

        #endregion

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
            DataTable table = GetDataTable();

            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        #endregion

        protected void Button1_Click(object sender, EventArgs e)
        {
            labResult.Text = HowManyRowsAreSelected(Grid1);
        }

    }
}
