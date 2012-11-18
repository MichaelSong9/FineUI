using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class numberbox : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                NumberBox1.MaxValue = 2.0;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("Form validation success!");
        }

    }
}
