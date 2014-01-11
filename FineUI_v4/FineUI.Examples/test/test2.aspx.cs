using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FineUI.Examples
{
    public partial class test2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                
            }
        }

        protected void triggerBox_TriggerClick(object sender, EventArgs e)
        {
            Window1.IFrameUrl = "test.aspx";
            Window1.Hidden = false;
        }

    }
}
