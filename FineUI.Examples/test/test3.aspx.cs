using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using AspNet = System.Web.UI.WebControls;

namespace FineUI.Examples
{
    public partial class test3 : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
           
        }

        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    AspNet.Label lab = new AspNet.Label();
        //    lab.ID = "Label1";
        //    if (!IsPostBack)
        //    {
        //        lab.Text = "Label1";
        //    }

        //    Form.Controls.Add(lab);

        //}


        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    AspNet.Label lab = Form.FindControl("Label1") as AspNet.Label;
        //    lab.Text = "Changed Label1";
        //}
    }
}
