using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class form_validate : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (tbxUserName.Text == "admin")
            {
                tbxUserName.MarkInvalid(String.Format("'{0}' is a reserved word, please choose another one!", tbxUserName.Text));

                Alert.ShowInTop("Form server-side validation fail!");
            }
        }


    }
}
