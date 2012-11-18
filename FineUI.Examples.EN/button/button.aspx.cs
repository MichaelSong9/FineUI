using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.button
{
    public partial class button : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnChangeEnable_Click(object sender, EventArgs e)
        {
            btnEnable.Enabled = true;
            btnEnable.Text = "This button has been enabled (Click to popup a dialog)";
        }

        protected void btnEnable_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("You click the button which has just been enabled.");
        }


        protected void btnTooltip_Click(object sender, EventArgs e)
        {
            btnTooltip.ToolTip = "This is a changed message.";
        }


        protected void btnChangePressed_Click(object sender, EventArgs e)
        {
            btnPressed.Pressed = !btnPressed.Pressed;
        }


        

       


    }
}
