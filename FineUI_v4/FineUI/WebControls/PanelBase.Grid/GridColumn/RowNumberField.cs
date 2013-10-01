
#region Comment

/*
 * Project��    FineUI
 * 
 * FileName:    RowNumberField.cs
 * CreatedOn:   2013-09-23
 * CreatedBy:   30372245@qq.com
 * 
 * 
 * Description��
 *      ->
 *   
 * History��
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
    /// ������ݰ���
    /// </summary>
    [ToolboxItem(false)]
    [ParseChildren(true)]
    [PersistChildren(false)]
    public class RowNumberField : BaseField
    {
        #region Properties

        private bool _enableHeaderMenu = false;
        /// <summary>
        /// ���ñ�ͷ�˵�
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(false)]
        [Description("���ñ�ͷ�˵�")]
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
        /// �Ƿ�����������
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(false)]
        [Description("�Ƿ�����������")]
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



