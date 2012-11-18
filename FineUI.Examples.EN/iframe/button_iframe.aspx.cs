using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.iframe
{
    public partial class button_iframe : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button1.OnClientClick = Window1.GetShowReference("../grid/grid_iframe_window.aspx", "Popup Window 1");
                Button2.OnClientClick = Window2.GetShowReference("../grid/grid_iframe_window.aspx", "Popup Window 2");


                // EnableConfirmOnClose="true" and CloseAction="HidePostBack"
                //Window2.OnClientCloseButtonClick = Window2.GetConfirmHidePostBackReference();

            }

            labResult.Text = "Page load time: " + DateTime.Now.ToLongTimeString();
        }


        protected void Window1_Close(object sender, FineUI.WindowCloseEventArgs e)
        {
            Alert.ShowInTop("Window1 is closed!");
        }

        protected void Window2_Close(object sender, FineUI.WindowCloseEventArgs e)
        {
            Alert.ShowInTop("Window2 is closed!");
        }


    }
}
