using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.iframe
{
    public partial class parent_postback : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {


                if (Request.Form["__EVENTARGUMENT"] == "Test3WindowClose")
                {
                    Button1.Text = "Update time: " + DateTime.Now.ToLongTimeString();
                }

            }
            else
            {
                Button2.OnClientClick = Panel1.GetRefreshIFrameReference();
            }

            labResult.Text = "Page load time: " + DateTime.Now.ToLongTimeString();
        }


    }
}
