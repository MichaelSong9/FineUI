using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class twintriggerbox : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ttbxMyBox2_Trigger2Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(ttbxMyBox2.Text))
            {
                Alert.ShowInTop(String.Format("Search in keyword \"{0}\"", ttbxMyBox2.Text));

                ttbxMyBox2.ShowTrigger1 = true;
            }
            else
            {
                Alert.ShowInTop("Please input search keyword!");
            }
        }

        protected void ttbxMyBox2_Trigger1Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("Search canceled!");

            ttbxMyBox2.Text = "";
            ttbxMyBox2.ShowTrigger1 = false;
        }

       

    }
}
