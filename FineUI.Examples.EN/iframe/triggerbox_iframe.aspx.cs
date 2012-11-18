using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.iframe
{
    public partial class triggerbox_iframe : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                TriggerBox1.OnClientTriggerClick = Window1.GetSaveStateReference(TriggerBox1.ClientID, HiddenField1.ClientID)
                    + Window1.GetShowReference("./triggerbox_iframe_iframe.aspx");


                TriggerBox2.OnClientTriggerClick = Window2.GetSaveStateReference(TriggerBox2.ClientID, HiddenField2.ClientID)
                   + Window2.GetShowReference("./triggerbox_iframe_iframe.aspx");

            }

            labResult.Text = "Page load time: " + DateTime.Now.ToLongTimeString();
        }

        protected void Window1_Close(object sender, EventArgs e)
        {
            Alert.ShowInTop("Window1's close event is triggered!");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop(String.Format("Value of first trigger box: {0} <br/>Value of first hidden box: {1}", TriggerBox1.Text, HiddenField1.Text));
        }


        protected void Window2_Close(object sender, EventArgs e)
        {
            Alert.ShowInTop("Window2's close event is triggered!");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop(String.Format("Value of second trigger box: {0}<br/>Value of second hidden box: {1}", TriggerBox2.Text, HiddenField2.Text));
        }


    }
}
