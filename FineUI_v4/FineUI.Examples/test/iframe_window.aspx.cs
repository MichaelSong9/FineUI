using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FineUI;
namespace FineUI
{
    public partial class iframe_window : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //btnClose.OnClientClick = ActiveWindow.GetHideReference();

                //labmsg.Text = " !IsPostBack";
            }

        }
        protected void Page_Init(object sender, EventArgs e)
        {
           
            FineUI.TextBox tbxUser = new FineUI.TextBox();
            tbxUser.ID = "tbx1";
            tbxUser.Text = "";
            tbxUser.Label = "请在输入框回车";
            tbxUser.ShowLabel = true;
           // tbxUser.AutoPostBack = false;  //此设置无效
            SimpleForm1.Items .Add(tbxUser);
            
           if (string.IsNullOrEmpty(Request.QueryString["type"]))
           {
               FineUI.TextBox tbxUser2 = new FineUI.TextBox();
               tbxUser2.ID = "tbx2";
               tbxUser2.Text = "";
               tbxUser2.Label = "请在输入框回车";
               tbxUser2.ShowLabel = true;
               SimpleForm1.Items.Add(tbxUser2);


           }

        }
    }
}