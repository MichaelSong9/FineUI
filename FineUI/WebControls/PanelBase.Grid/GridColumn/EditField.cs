
#region Comment

/*
 * Project��    FineUI
 * 
 * FileName:    EditField.cs
 * CreatedOn:   2013-05-05
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
using System.Data;
using System.Reflection;
using System.Web.UI.WebControls;


namespace FineUI
{
    /// <summary>
    /// ���ɱ༭��
    /// </summary>
    [ToolboxItem(false)]
    [ParseChildren(true)]
    [PersistChildren(false)]
    public class EditField : GridColumn
    {
        #region Editor

        private GridColumnEditorCollection _editor;

        /// <summary>
        /// ��Ԫ��༭�ؼ�
        /// </summary>
        [Browsable(false)]
        [Category(CategoryName.OPTIONS)]
        [NotifyParentProperty(true)]
        [PersistenceMode(PersistenceMode.InnerProperty)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        [Description("��Ԫ��༭�ؼ�")]
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

        #region Properties

        //private bool _enabled = true;

        ///// <summary>
        ///// �Ƿ����
        ///// </summary>
        //[Category(CategoryName.OPTIONS)]
        //[DefaultValue(true)]
        //[Description("�Ƿ����")]
        //public override bool Enabled
        //{
        //    get
        //    {
        //        return _enabled;
        //    }
        //    set
        //    {
        //        _enabled = value;
        //    }
        //}


        private string _dataField = String.Empty;

        /// <summary>
        /// �ֶ�����
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("�ֶ�����")]
        public string DataField
        {
            get
            {
                return _dataField;
            }
            set
            {
                _dataField = value;
            }
        }


        private FieldType _fieldType = FieldType.Auto;

        /// <summary>
        /// �ֶ�����
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(FieldType.Auto)]
        [Description("�ֶ�����")]
        public FieldType FieldType
        {
            get
            {
                return _fieldType;
            }
            set
            {
                _fieldType = value;
            }
        }


        private Renderer _renderer = Renderer.None;

        /// <summary>
        /// ��Ⱦ��
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(Renderer.None)]
        [Description("��Ⱦ������")]
        public Renderer Renderer
        {
            get
            {
                return _renderer;
            }
            set
            {
                _renderer = value;
            }
        }

        private string _rendererArgument = String.Empty;

        /// <summary>
        /// ��Ⱦ���Ĳ���
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("��Ⱦ���Ĳ���")]
        public string RendererArgument
        {
            get
            {
                return _rendererArgument;
            }
            set
            {
                _rendererArgument = value;
            }
        }


        private string _rendererFunction = String.Empty;

        /// <summary>
        /// �Զ�����Ⱦ��������JavaScript������
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("�Զ�����Ⱦ��������JavaScript������")]
        public string RendererFunction
        {
            get
            {
                return _rendererFunction;
            }
            set
            {
                _rendererFunction = value;
            }
        }


        //private string _dateFormat = String.Empty;

        ///// <summary>
        ///// �����ֶεĸ�ʽ���ַ���
        ///// </summary>
        //[Category(CategoryName.OPTIONS)]
        //[DefaultValue("")]
        //[Description("�����ֶεĸ�ʽ���ַ���")]
        //public string DateFormat
        //{
        //    get
        //    {
        //        return _dateFormat;
        //    }
        //    set
        //    {
        //        _dateFormat = value;
        //    }
        //}


        private string _nullDisplayText = String.Empty;

        /// <summary>
        /// �������ݿ���nullֵ��Ĭ��Ϊ���ַ���
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue("")]
        [Description("�������ݿ���nullֵ��Ĭ��Ϊ���ַ���")]
        public string NullDisplayText
        {
            get
            {
                return _nullDisplayText;
            }
            set
            {
                _nullDisplayText = value;
            }
        }


        private bool _htmlEncode = true;

        /// <summary>
        /// ��ʾ֮ǰ����HTML���루Ĭ��Ϊtrue��
        /// </summary>
        [Category(CategoryName.OPTIONS)]
        [DefaultValue(true)]
        [Description("��ʾ֮ǰ����HTML���루Ĭ��Ϊtrue��")]
        public bool HtmlEncode
        {
            get
            {
                return _htmlEncode;
            }
            set
            {
                _htmlEncode = value;
            }
        }


        #endregion



        #region Methods

        internal override string GetColumnValue(GridRow row)
        {
            string text = String.Empty;

            if (!String.IsNullOrEmpty(DataField))
            {
                object value = row.GetPropertyValue(DataField);

                if (value == null)
                {
                    text = NullDisplayText;
                }
                else
                {
                    text = value.ToString();
                    if (HtmlEncode)
                    {
                        text = HttpUtility.HtmlEncode(text);
                    }
                }
            }

            return text;
        }

        #endregion

        protected override void OnFirstPreRender()
        {
            base.OnFirstPreRender();

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
}



