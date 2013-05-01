
#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    GridColumn.cs
 * CreatedOn:   2008-05-19
 * CreatedBy:   30372245@qq.com
 * 
 * 
 * Description：
 *      ->
 *   
 * History：
 *      ->
 * 
 * 
 * 
 * 
 */

#endregion

using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Text;
using System.Xml;
using System.Web;
using System.Web.UI;
using System.Globalization;
using System.Data;
using System.Reflection;
using System.Web.UI.WebControls;


namespace FineUI
{
    /// <summary>
    /// 表格列基类（抽象类）
    /// </summary>
    [ToolboxItem(false)]
    [ParseChildren(true)]
    [PersistChildren(false)]
    [DefaultProperty("HeaderText")]
    public abstract class GridColumn : ControlBase
    {
        #region Grid/ColumnIndex

        private Grid _grid;

        /// <summary>
        /// 表格对象
        /// </summary>
        [Browsable(false)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        [Description("表格对象")]
        public Grid Grid
        {
            get
            {
                if (_grid == null)
                {
                    _grid = GetParentGrid();
                }
                return _grid;
            }
        }

        private Grid GetParentGrid()
        {
            if (Parent is Grid)
            {
                return (Grid)Parent;
            }
            else
            {
                return ResolveParentGrid(Parent as GridGroupColumn);
            }
        }

        private Grid ResolveParentGrid(GridGroupColumn groupColumn)
        {
            if (groupColumn != null)
            {
                if (groupColumn.Parent is Grid)
                {
                    return (Grid)groupColumn.Parent;
                }
                else
                {
                    return ResolveParentGrid(groupColumn.Parent as GridGroupColumn);
                }
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// 列索引
        /// </summary>
        [Browsable(false)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        [Description("列索引")]
        public int ColumnIndex
        {
            get
            {
                return Grid.AllColumns.IndexOf(this);
            }
        }

        #endregion

        #region SortField

        ///// <summary>
        ///// 当前列的排序表达式
        ///// </summary>
        //[Browsable(false)]
        //[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        //public string SortExpression
        //{
        //    get
        //    {
        //        return String.Format("{0} {1}", SortField, SortDirection);
        //    }
        //}

        //public string _sortDirection = "ASC";

        ///// <summary>
        ///// 排序方向
        ///// </summary>
        //[Browsable(false)]
        //[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        //public string SortDirection
        //{
        //    get
        //    {
        //        return _sortDirection;
        //    }
        //    set
        //    {
        //        _sortDirection = value;
        //    }
        //}

        private string _sortField = String.Empty;

        /// <summary>
        /// 排序字段
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("排序字段")]
        public string SortField
        {
            get
            {
                return _sortField;
            }
            set
            {
                _sortField = value;
            }
        }

        #endregion

        #region Properties


        #region Menu

        private GridColumnEditorCollection _editor;

        /// <summary>
        /// 单元格编辑控件
        /// </summary>
        [Browsable(false)]
        [Category(CategoryName.OPTIONS)]
        [NotifyParentProperty(true)]
        [PersistenceMode(PersistenceMode.InnerProperty)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        [Description("单元格编辑控件")]
        [Editor(typeof(GridColumnEditorEditor), typeof(System.Drawing.Design.UITypeEditor))]
        public virtual GridColumnEditorCollection Editor
        {
            get
            {
                if (_editor == null)
                {
                    _editor = new GridColumnEditorCollection(this);
                }
                return _editor;
            }
        }


        #endregion



        private bool _hidden = false;

        /// <summary>
        /// 是否隐藏列
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(false)]
        [Description("是否隐藏列")]
        public override bool Hidden
        {
            get
            {
                return _hidden;
            }
            set
            {
                _hidden = value;
            }
        }


        private string _dataSimulateTreeLevelField = String.Empty;

        /// <summary>
        /// 此列模拟树显示时的层次字段
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("此列模拟树显示时的层次字段")]
        public string DataSimulateTreeLevelField
        {
            get
            {
                return _dataSimulateTreeLevelField;
            }
            set
            {
                _dataSimulateTreeLevelField = value;
            }
        }


        //private string _columnID = String.Empty;

        ///// <summary>
        ///// 列ID
        ///// </summary>
        //[Category(CategoryName.OPTIONS)]
        //[DefaultValue("")]
        //[Description("列ID")]
        //public string ColumnID
        //{
        //    get
        //    {
        //        if (String.IsNullOrEmpty(_columnID))
        //        {
        //            return String.Format("ct{0}", ColumnIndex);
        //        }
        //        return _columnID;
        //    }
        //    set
        //    {
        //        _columnID = value;
        //    }
        //}

        private string _columnID = String.Empty;

        /// <summary>
        /// 列ID（如果没有设置，则为ClientID）
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("列ID（如果没有设置，则为ClientID）")]
        public string ColumnID
        {
            get
            {
                if (String.IsNullOrEmpty(_columnID))
                {
                    return ClientID;
                }
                return _columnID;
            }
            set
            {
                _columnID = value;
            }
        }


        private string _headerText = String.Empty;

        /// <summary>
        /// 标题栏显示的文字
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("标题栏显示的文字")]
        public string HeaderText
        {
            get
            {
                return _headerText;
            }
            set
            {
                _headerText = value;
            }
        }


        private Unit _width = Unit.Empty;

        /// <summary>
        /// 列宽度
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(typeof(Unit), "")]
        [Description("列宽度")]
        public Unit Width
        {
            get
            {
                return _width;
            }
            set
            {
                _width = value;
            }
        }


        private bool _expandUnusedSpace = false;

        /// <summary>
        /// 此列会扩展所有未使用的宽度
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(false)]
        [Description("此列会扩展所有未使用的宽度")]
        public bool ExpandUnusedSpace
        {
            get
            {
                return _expandUnusedSpace;
            }
            set
            {
                _expandUnusedSpace = value;
            }
        }


        private TextAlign _textalign = TextAlign.Left;

        /// <summary>
        /// 文本的排列位置
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(TextAlign.Left)]
        [Description("文本的排列位置")]
        public TextAlign TextAlign
        {
            get
            {
                return _textalign;
            }
            set
            {
                _textalign = value;
            }
        }


        #endregion

        #region DataTooltipField/DataTooltipFormatString

        private string _tooltip = String.Empty;

        /// <summary>
        /// 提示文本
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("提示文本")]
        public string ToolTip
        {
            get
            {
                return _tooltip;
            }
            set
            {
                _tooltip = value;
            }
        }



        private string _dataToolTipField = String.Empty;

        /// <summary>
        /// 提示字段名称
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("提示字段名称")]
        public string DataToolTipField
        {
            get
            {
                return _dataToolTipField;
            }
            set
            {
                _dataToolTipField = value;
            }
        }

        private string _dataToolTipFormatString = String.Empty;

        /// <summary>
        /// 提示字段格式化字符串
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("提示字段格式化字符串")]
        public string DataToolTipFormatString
        {
            get
            {
                return _dataToolTipFormatString;
            }
            set
            {
                _dataToolTipFormatString = value;
            }
        }

        #endregion

        #region virtual GetColumnValue/GetColumnState/PersistState

        /// <summary>
        /// 取得列头渲染后的HTML
        /// </summary>
        /// <param name="row"></param>
        /// <returns></returns>
        internal virtual string GetHeaderValue()
        {
            return String.IsNullOrEmpty(HeaderText) ? "&nbsp;" : HeaderText;
        }

        /// <summary>
        /// 取得列渲染后的HTML
        /// </summary>
        /// <param name="row"></param>
        /// <returns></returns>
        internal virtual string GetColumnValue(GridRow row)
        {
            return String.Empty;
        }


        internal virtual bool PersistState
        {
            get
            {
                return false;
            }
        }


        internal virtual object GetColumnState(GridRow row)
        {
            return null;
        }

        ///// <summary>
        ///// 用在生成的JS脚本中，指定此列的类型
        ///// </summary>
        ///// <returns></returns>
        //public virtual string GetFieldType()
        //{
        //    return "string";
        //}

        ///// <summary>
        ///// 将列的状态保存到
        ///// </summary>
        ///// <returns></returns>
        //public virtual string SaveColumnState()
        //{
        //    return String.Empty;
        //}

        ///// <summary>
        ///// 加载列的状态
        ///// </summary>
        ///// <returns></returns>
        //public virtual void LoadColumnState(string state)
        //{

        //}

        #endregion

        #region GetTooltipString

        #region old code
        //public string GetSimulateTreeString(string originalStr)
        //{
        //    string result = originalStr;

        //    if (!String.IsNullOrEmpty(DataSimulateTreeLevelField))
        //    {

        //    }

        //    return result;
        //}


        //public string GetColumnID()
        //{
        //    //if (!String.IsNullOrEmpty(SortField))
        //    //{
        //    //    return String.Format(COLUMN_ID_TEMPLATE, ColumnIndex, SortField);
        //    //}
        //    //else
        //    //{
        //    //    return String.Format("ct{0}", ColumnIndex);
        //    //}

        //    return String.Format("ct{0}", ColumnIndex);
        //}

        ///// <summary>
        ///// 本列是第几列
        ///// </summary>
        ///// <param name="columns"></param>
        ///// <returns></returns>
        //public int GetColumnIndex(Grid grid)
        //{
        //    for (int i = 0, count = grid.Columns.Count; i < count; i++)
        //    {
        //        if (grid.Columns[i] == this)
        //        {
        //            return i;
        //        }
        //    }
        //    return -1;
        //} 
        #endregion

        /// <summary>
        /// 取得提示字符串
        /// </summary>
        /// <param name="row"></param>
        /// <returns></returns>
        protected string GetTooltipString(GridRow row)
        {
            string result = null;

            if (!String.IsNullOrEmpty(DataToolTipField))
            {
                object value = row.GetPropertyValue(DataToolTipField);

                if (!String.IsNullOrEmpty(DataToolTipFormatString))
                {
                    result = String.Format(DataToolTipFormatString, value);
                }
                else
                {
                    result = value.ToString();
                }
            }
            else if(!String.IsNullOrEmpty(ToolTip))
            {
                result = ToolTip;
            }

            return result == null ? "" : String.Format(" ext:qtip=\"{0}\" ", result);
            //return String.IsNullOrEmpty(result) ? String.Empty : result;
        }

        #endregion

        #region OnPreRender

        protected override void OnAjaxPreRender()
        {
            base.OnAjaxPreRender();

            StringBuilder sb = new StringBuilder();
            //if (PropertyModified("Text"))
            //{
            //    sb.AppendFormat("{0}.setValue({1});", XID, JsHelper.Enquote(Text));
            //}

            AddAjaxScript(sb);
        }

        protected override void OnFirstPreRender()
        {
            base.OnFirstPreRender();

            //string expanderScript = String.Empty;
            if (this is TemplateField && (this as TemplateField).RenderAsRowExpander)
            {
                //string tplStr = String.Format(RowExpander.DataFormatString.Replace("{", "{{{").Replace("}", "}}}"), RowExpander.DataFields);
                //expanderScript = String.Format("var {0}=new Ext.ux.grid.RowExpander({{tpl:new Ext.Template({1})}});", Render_GridRowExpanderID, JsHelper.Enquote(tplStr));
                //expanderScript = String.Format("var {0}=new Ext.ux.grid.RowExpander({{tpl:new Ext.Template(\"{{{1}}}\")}});", Grid.Render_GridRowExpanderID, Grid.Render_GridRowExpanderID);

                //OB.AddProperty(Render_GridRowExpanderID, true);

            }
            else
            {
                JsObjectBuilder columnBuilder = new JsObjectBuilder();

                OB.AddProperty("header", GetHeaderValue());

                if (Hidden)
                {
                    OB.AddProperty("hidden", true);
                }

                if (Grid.AllowSorting)
                {
                    if (!String.IsNullOrEmpty(SortField))
                    {
                        //// 自定义JavaScript变量
                        //OB.AddProperty("x_serverSortable", true);
                        OB.AddProperty("sortable", true);
                    }
                }

                if (PersistState)
                {
                    OB.AddProperty("x_persistState", true);
                    OB.AddProperty("x_persistStateType", "checkbox");
                }

                

                ////If not specified, the column's index is used as an index into the Record's data Array.
                //columnBuilder.AddProperty(OptionName.DataIndex, field.DataField);
                OB.AddProperty("dataIndex", ColumnID);
                OB.AddProperty("id", ColumnID);

                if (TextAlign != TextAlign.Left)
                {
                    OB.AddProperty("align", TextAlignName.GetName(TextAlign));
                }

                if (Width != Unit.Empty)
                {
                    OB.AddProperty("width", Width.Value);
                }

                if (Grid.AllowCellEditing)
                {
                    if (Editor.Count > 0)
                    {
                        OB.AddProperty("editor", Editor[0].XID, true);
                    }
                }

                string jsContent = String.Format("var {0}={1};", XID, OB.ToString());
                AddStartupScript(jsContent);

            }

        }

        #endregion

    }
}



