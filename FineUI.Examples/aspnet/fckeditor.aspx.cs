using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.aspnet
{
    public partial class fckeditor2 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop(HttpUtility.HtmlEncode(FCKeditor1.Value));
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            FCKeditor1.Value = "<strong>FineUI</strong> - 基于 ExtJS 的专业 ASP.NET 2.0 控件库，拥有完善的 AJAX 支持和丰富的界面效果。";
        }





    }
}
