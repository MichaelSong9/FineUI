
#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    RowNumberField.cs
 * CreatedOn:   2013-09-23
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
using System.Reflection;


namespace FineUI
{
    /// <summary>
    /// 表格数据绑定列
    /// </summary>
    [ToolboxItem(false)]
    [ParseChildren(true)]
    [PersistChildren(false)]
    public class RowNumberField : BaseField
    {
        #region Properties

        private bool _enableHeaderMenu = false;
        /// <summary>
        /// 启用表头菜单
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(false)]
        [Description("启用表头菜单")]
        public override bool EnableHeaderMenu
        {
            get
            {
                return _enableHeaderMenu;
            }
            set
            {
                _enableHeaderMenu = value;
            }
        }


        private bool _allowHideColumn = false;
        /// <summary>
        /// 是否允许隐藏列
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(false)]
        [Description("是否允许隐藏列")]
        public override bool EnableColumnHide
        {
            get
            {
                return _allowHideColumn;
            }
            set
            {
                _allowHideColumn = value;
            }
        }

        #endregion

        #region Methods

        internal override string GetColumnValue(GridRow row)
        {
            return String.Empty;
        }

        #endregion

    }
}



