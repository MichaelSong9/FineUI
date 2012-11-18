using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;
using System.Xml;

namespace FineUI.Examples.tree.checkbox
{
    public partial class tree_checkall : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Tree1_NodeCheck(object sender, FineUI.TreeCheckEventArgs e)
        {
            if (e.Checked)
            {
                Tree1.CheckAllNodes(e.Node.Nodes);
            }
            else
            {
                Tree1.UncheckAllNodes(e.Node.Nodes);
            }

        }

        


    }
}
