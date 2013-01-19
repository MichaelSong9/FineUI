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
            aspBox.Text = "1. ASP.NET 输入框 - " + DateTime.Now.ToLongTimeString();
            extBox.Text = "1. FineUI 输入框 - " + DateTime.Now.ToLongTimeString();
            aspButton.Text = "1. ASP.NET 按钮 - " + DateTime.Now.ToLongTimeString();
            extButton.Text = "1. FineUI 按钮 - " + DateTime.Now.ToLongTimeString();
        }

        protected void aspButton_Click(object sender, EventArgs e)
        {
            aspBox.Text = "2. ASP.NET 输入框 - " + DateTime.Now.ToLongTimeString();
            extBox.Text = "2. FineUI 输入框 - " + DateTime.Now.ToLongTimeString();
            aspButton.Text = "2. ASP.NET 按钮 - " + DateTime.Now.ToLongTimeString();
            extButton.Text = "2. FineUI 按钮 - " + DateTime.Now.ToLongTimeString();
        }


    }
}
