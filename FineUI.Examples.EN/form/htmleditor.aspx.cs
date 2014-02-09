using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class htmleditor : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HtmlEditor1.Text = "<br /><strong>Product: </strong>&nbsp;<font color=#ff0000><strong>FineUI</strong></font><br /><br /><strong>Description:</strong> ExtJS based open source ASP.NET Controls <br />";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextArea1.Text = HtmlEditor1.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HtmlEditor1.Text = TextArea1.Text;
        }
    }
}
