using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.aspnet
{
    public partial class aspnet : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void extButton_Click(object sender, EventArgs e)
        {
            aspBox.Text = "Asp.Net TextBox - " + DateTime.Now.ToLongTimeString();
            extBox.Text = "ExtAsp.Net TextBox - " + DateTime.Now.ToLongTimeString();
            aspButton.Text = "Asp.Net Button - " + DateTime.Now.ToLongTimeString();
            extButton.Text = "ExtAsp.Net Button - " + DateTime.Now.ToLongTimeString();
        }

        protected void aspButton_Click(object sender, EventArgs e)
        {
            aspBox.Text = "Asp.Net TextBox - " + DateTime.Now.ToLongTimeString();
            extBox.Text = "ExtAsp.Net TextBox - " + DateTime.Now.ToLongTimeString();
            aspButton.Text = "Asp.Net Button - " + DateTime.Now.ToLongTimeString();
            extButton.Text = "ExtAsp.Net Button - " + DateTime.Now.ToLongTimeString();
        }



    }
}
