﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.tabstrip
{
    public partial class tabstrip : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("You just click a button in Tab 2!");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int nextIndex = TabStrip1.ActiveTabIndex + 1;

            if (nextIndex >= TabStrip1.Tabs.Count)
            {
                nextIndex = 0;
            }

            TabStrip1.ActiveTabIndex = nextIndex;
        }

    }
}