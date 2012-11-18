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
            FCKeditor1.Value = "<strong>FineUI</strong> - ExtJS based ASP.NET 2.0 Controls with native AJAX support and rich UI effects";
        }





    }
}
