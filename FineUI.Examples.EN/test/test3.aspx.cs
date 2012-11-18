using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples
{
    public partial class test3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Window1_Close(object sender, WindowCloseEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            div1.InnerHtml = "<div style='color:red;'>" + DateTime.Now.ToString() + "</div>";
        }
    }
}
