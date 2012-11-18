using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class triggerbox : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void tbxMyBox1_TriggerClick(object sender, EventArgs e)
        {
            Window1.Hidden = false;
        }

        protected void btnCloseWindow_Click(object sender, EventArgs e)
        {
            Window1.Hidden = true;

            tbxMyBox1.Text = "Popup window is closed.";
        }

    }
}
