﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Text;

namespace FineUI.Examples.test
{
    public partial class test : PageBase
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LiteralControl control = new LiteralControl();
                control.ID = "my_control";
                control.Text = "<script>alert('ok');</script>";
                Page.Header.Controls.Add(control);
            }

        }



    }
}