using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.accordion
{
    public partial class accordion2 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop(String.Format("Expanded panel: {0}", Accordion1.ActiveIndex + 1));
        }
    }
}
