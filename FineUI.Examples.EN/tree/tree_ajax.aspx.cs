using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.data
{
    public partial class tree_ajax : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Tree1_NodeExpand(object sender, FineUI.TreeExpandEventArgs e)
        {
            DynamicAppendNode(e.Node);
        }

        private void DynamicAppendNode(TreeNode parentNode)
        {
            parentNode.Expanded = true;

            TreeNode node = null;
            switch (parentNode.NodeID)
            {
                case "zhumadian":
                    node = new TreeNode();
                    node.Text = "Suiping County";
                    node.Leaf = false;
                    node.NodeID = "suiping";
                    parentNode.Nodes.Add(node);

                    node = new TreeNode();
                    node.Text = "Xiping County";
                    node.Leaf = true;
                    node.NodeID = "xiping";
                    parentNode.Nodes.Add(node);
                    break;
                case "suiping":
                    node = new TreeNode();
                    node.Text = "Huaishu Town";
                    node.Leaf = false;
                    node.NodeID = "huaishu";
                    parentNode.Nodes.Add(node);
                    break;
                case "huaishu":
                    node = new TreeNode();
                    node.Text = "Chenzhuang Village";
                    node.Leaf = true;
                    node.NodeID = "chenzhuang";
                    parentNode.Nodes.Add(node);
                    break;
            }
        }

    }
}
