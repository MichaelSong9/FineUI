using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.button
{
    public partial class button_click : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnClientClick2.OnClientClick = Alert.GetShowInTopReference("This is a client-side event registered in server-side.");
            }
        }


        protected void btnServerClick_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("This is a server-side event.");
        }




    }
}
