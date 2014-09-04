using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.test
{
    public partial class SingleGrid : System.Web.UI.MasterPage
    {
        public delegate void DeleteDataHandler();
        public DeleteDataHandler DeleteData { private get; set; }

        public delegate void BindGridHandler();
        public DeleteDataHandler BindGrid { private get; set; }

        public delegate void SetControlStateHandler();
        public SetControlStateHandler SetControlState { private get; set; }

        public string InfoPage { get; set; }
        public string ModelName { get; set; }
        public string InfoPageUrl { get; set; }

        public string InfoFormParam { get; set; }

        public Unit InfoWidth { get; set; }
        public Unit InfoHeight { get; set; }

        private Grid grid = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            grid = this.FindControl("form1").FindControl("Panel1").FindControl("cplForm").FindControl("cphForm").FindControl("Grid1") as Grid;
            grid.RowDoubleClick += grid_RowDoubleClick;
            grid.EnableRowDoubleClickEvent = true;
            grid.PageIndexChange += grid_PageIndexChange;
            grid.Sort += grid_Sort;

            SetToolBar();
            SetGridPageItems();
            Master_SetControlState();
        }

        private void SetGridPageItems()
        {
            ToolbarSeparator ToolbarSeparator1;
            ToolbarSeparator1 = new ToolbarSeparator();
            ToolbarSeparator1.ID = "ToolbarSeparator1";
            grid.PageItems.Add(ToolbarSeparator1);

            ToolbarText tbt;
            tbt = new ToolbarText();
            tbt.ID = "ToolbarText1";
            tbt.Text = "每页记录数";
            grid.PageItems.Add(tbt);

            FineUI.DropDownList ddlGridPageSize;
            ddlGridPageSize = new FineUI.DropDownList();
            ddlGridPageSize.ID = "ddlGridPageSize";
            ddlGridPageSize.AutoPostBack = true;
            ddlGridPageSize.Items.Add(new FineUI.ListItem("20", "20"));
            ddlGridPageSize.Items.Add(new FineUI.ListItem("50", "50"));
            ddlGridPageSize.Items.Add(new FineUI.ListItem("100", "100"));
            ddlGridPageSize.Items.Add(new FineUI.ListItem("500", "500"));
            ddlGridPageSize.Width = 80;
            ddlGridPageSize.SelectedIndexChanged += ddlGridPageSize_SelectedIndexChanged;
            grid.PageItems.Add(ddlGridPageSize);
        }

        private void SetToolBar()
        {
            FineUI.Button btnInsert = new FineUI.Button();
            btnInsert.ID = "btnInsert";
            btnInsert.Text = "新增";
            btnInsert.Icon = Icon.Add;

            FineUI.Button btnCopy = new FineUI.Button();
            btnCopy.ID = "btnCopy";
            btnCopy.Text = "复制";
            btnCopy.Icon = Icon.PageCopy;

            FineUI.Button btnEdit = new FineUI.Button();
            btnEdit.ID = "btnEdit";
            btnEdit.Text = "编辑";
            btnEdit.Icon = Icon.PageEdit;

            FineUI.Button btnView = new FineUI.Button();
            btnView.ID = "btnView";
            btnView.Text = "浏览";
            btnView.Icon = Icon.Page;

            FineUI.Button btnDelete = new FineUI.Button();
            btnDelete.ID = "btnDelete";
            btnDelete.Text = "删除";
            btnDelete.Icon = Icon.Delete;

            btnInsert.Click += btnInsert_Click;
            btnCopy.Click += btnCopy_Click;
            btnEdit.Click += btnEdit_Click;
            btnView.Click += btnView_Click;
            btnDelete.Click += btnDelete_Click;

            Toolbar tbToolBar;
            if (grid.Toolbars.Count > 0)
            {
                tbToolBar = grid.Toolbars[0];
            }
            else
            {
                tbToolBar = new Toolbar();
                grid.Toolbars.Add(tbToolBar);
            }
            tbToolBar.Items.Insert(0, btnDelete);
            tbToolBar.Items.Insert(0, btnView);
            tbToolBar.Items.Insert(0, btnEdit);
            tbToolBar.Items.Insert(0, btnCopy);
            tbToolBar.Items.Insert(0, btnInsert);

        }

        protected void ddlGridPageSize_SelectedIndexChanged(object sender, EventArgs e)
        {
            grid.PageSize = System.Convert.ToInt32(((FineUI.DropDownList)sender).SelectedValue);

            if (BindGrid != null) BindGrid();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(InfoPageUrl))
            {
                string sUrl = "";
                if (InfoPageUrl.IndexOf('?') != -1)
                    sUrl = String.Format("{0}&STATE=INSERT", InfoPageUrl);
                else
                    sUrl = String.Format("{0}?STATE=INSERT", InfoPageUrl);

                if (!string.IsNullOrEmpty(InfoFormParam)) sUrl = string.Format("{0}&{1}", sUrl, InfoFormParam.Trim());
                PageContext.RegisterStartupScript(Model_Window.GetShowReference(sUrl, ModelName, InfoWidth, InfoHeight));
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(InfoPageUrl))
            {
                int titleID = GetSelectedDataKeyID(grid);
                if (titleID == -1)
                {
                    Alert.ShowInTop("请选择记录！");
                    return;
                }
                string sUrl;
                if (InfoPageUrl.IndexOf('?') != -1)
                    sUrl = String.Format("{0}&STATE=EDIT&id={1}", InfoPageUrl, titleID);
                else
                    sUrl = String.Format("{0}?STATE=EDIT&id={1}", InfoPageUrl, titleID);
                if (!string.IsNullOrEmpty(InfoFormParam)) sUrl = string.Format("{0}&{1}", sUrl, InfoFormParam.Trim());
                PageContext.RegisterStartupScript(Model_Window.GetShowReference(sUrl, ModelName, InfoWidth, InfoHeight));
            }
        }

        protected void btnCopy_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(InfoPageUrl))
            {
                int titleID = GetSelectedDataKeyID(grid);
                if (titleID == -1)
                {
                    Alert.ShowInTop("请选择记录！");
                    return;
                }

                string addUrl;
                if (InfoPageUrl.IndexOf('?') != -1)
                    addUrl = String.Format("{0}&id={1}&STATE=COPY", InfoPageUrl, titleID);
                else
                    addUrl = String.Format("{0}?id={1}&STATE=COPY", InfoPageUrl, titleID);
                if (!string.IsNullOrEmpty(InfoFormParam)) addUrl = string.Format("{0}&{1}", addUrl, InfoFormParam.Trim());
                PageContext.RegisterStartupScript(Model_Window.GetShowReference(addUrl, ModelName, InfoWidth, InfoHeight));
            }
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(InfoPageUrl))
            {
                int titleID = GetSelectedDataKeyID(grid);
                if (titleID == -1)
                {
                    Alert.ShowInTop("请选择记录！");
                    return;
                }
                string sUrl;
                if (InfoPageUrl.IndexOf('?') != -1)
                    sUrl = String.Format("{0}&STATE=VIEW&id={1}", InfoPageUrl, titleID);
                else
                    sUrl = String.Format("{0}?STATE=VIEW&id={1}", InfoPageUrl, titleID);
                if (!string.IsNullOrEmpty(InfoFormParam)) sUrl = string.Format("{0}&{1}", sUrl, InfoFormParam.Trim());
                PageContext.RegisterStartupScript(Model_Window.GetShowReference(sUrl, ModelName, InfoWidth, InfoHeight));
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int titleID = GetSelectedDataKeyID(grid);
            if (titleID == -1)
            {
                Alert.ShowInTop("请选择记录！");
                return;
            }
            if (DeleteData != null) DeleteData();
            if (BindGrid != null) BindGrid();
        }

        protected int GetSelectedDataKeyID(Grid grid)
        {
            int id = -1;
            int rowIndex = grid.SelectedRowIndex;
            if (rowIndex >= 0)
            {
                id = Convert.ToInt32(grid.DataKeys[rowIndex][0]);
            }
            return id;
        }

        protected void Model_Window_Close(object sender, EventArgs e)
        {
            BindGrid();
        }

        protected void grid_RowDoubleClick(object sender, GridRowClickEventArgs e)
        {
            btnView_Click(null, null);
        }

        protected void grid_PageIndexChange(object sender, GridPageEventArgs e)
        {
            grid.PageIndex = e.NewPageIndex;
            BindGrid();
        }

        protected void grid_Sort(object sender, GridSortEventArgs e)
        {
            grid.SortDirection = e.SortDirection;
            grid.SortField = e.SortField;
            BindGrid();
        }

        public void SetBtnInsertVisible(bool bVisible)
        {
            grid = this.FindControl("form1").FindControl("Panel1").FindControl("cplForm").FindControl("cphForm").FindControl("Grid1") as Grid;
            Toolbar tbToolBar = grid.Toolbars[0];
            tbToolBar.FindControl("btnInsert").Visible = bVisible;
        }

        public void SetBtnCopyVisible(bool bVisible)
        {
            grid = this.FindControl("form1").FindControl("Panel1").FindControl("cplForm").FindControl("cphForm").FindControl("Grid1") as Grid;
            Toolbar tbToolBar = grid.Toolbars[0];
            tbToolBar.FindControl("btnCopy").Visible = bVisible;
        }

        public void SetBtnEditVisible(bool bVisible)
        {
            grid = this.FindControl("form1").FindControl("Panel1").FindControl("cplForm").FindControl("cphForm").FindControl("Grid1") as Grid;
            Toolbar tbToolBar = grid.Toolbars[0];
            tbToolBar.FindControl("btnEdit").Visible = bVisible;
        }

        public void SetBtnDeleteVisible(bool bVisible)
        {
            grid = this.FindControl("form1").FindControl("Panel1").FindControl("cplForm").FindControl("cphForm").FindControl("Grid1") as Grid;
            Toolbar tbToolBar = grid.Toolbars[0];
            tbToolBar.FindControl("btnDelete").Visible = bVisible;
        }

        private void Master_SetControlState()
        {
            if (SetControlState != null) SetControlState();
        }
    }
}
