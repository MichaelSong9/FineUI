using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Xml;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace FineUI.Examples
{
    public partial class _default : PageBase
    {
        #region Page_Init

        protected void Page_Init(object sender, EventArgs e)
        {
            string menuType = "menu";
            HttpCookie menuCookie = Request.Cookies["Menu.EN"];
            if (menuCookie != null)
            {
                menuType = menuCookie.Value;
            }

            JObject ids = GetClientIDS(btnExpandAll, btnCollapseAll, windowSourceCode, mainTabStrip);

            if (menuType == "accordion")
            {
                Accordion accordionMenu = InitAccordionMenu();
                ids.Add("mainMenu", accordionMenu.ClientID);
                ids.Add("menuType", "accordion");
            }
            else
            {
                Tree treeMenu = InitTreeMenu();
                ids.Add("mainMenu", treeMenu.ClientID);
                ids.Add("menuType", "menu");
            }

            string idsScriptStr = String.Format("window.IDS={0};", ids.ToString(Newtonsoft.Json.Formatting.None));
            PageContext.RegisterStartupScript(idsScriptStr);
        }

        private Accordion InitAccordionMenu()
        {
            Accordion accordionMenu = new Accordion();
            accordionMenu.ID = "accordionMenu";
            accordionMenu.EnableFill = true;
            accordionMenu.ShowBorder = false;
            accordionMenu.ShowHeader = false;
            Region2.Items.Add(accordionMenu);


            XmlDocument xmlDoc = XmlDataSource1.GetXmlDocument();
            XmlNodeList xmlNodes = xmlDoc.SelectNodes("/Tree/TreeNode");
            foreach (XmlNode xmlNode in xmlNodes)
            {
                if (xmlNode.HasChildNodes)
                {
                    AccordionPane accordionPane = new AccordionPane();
                    accordionPane.Title = xmlNode.Attributes["Text"].Value;
                    accordionPane.Layout = Layout.Fit;
                    accordionPane.ShowBorder = false;
                    accordionPane.BodyPadding = "2px 0 0 0";
                    accordionMenu.Items.Add(accordionPane);

                    Tree innerTree = new Tree();
                    innerTree.EnableArrows = true;
                    innerTree.ShowBorder = false;
                    innerTree.ShowHeader = false;
                    innerTree.EnableIcons = false;
                    innerTree.AutoScroll = true;
                    accordionPane.Items.Add(innerTree);

                    XmlDocument innerXmlDoc = new XmlDocument();
                    innerXmlDoc.LoadXml(String.Format("<?xml version=\"1.0\" encoding=\"utf-8\" ?><Tree>{0}</Tree>", xmlNode.InnerXml));


                    innerTree.DataSource = innerXmlDoc;
                    innerTree.DataBind();


                    ResolveTreeNode(innerTree.Nodes);
                }
            }

            return accordionMenu;
        }

        private Tree InitTreeMenu()
        {
            Tree treeMenu = new Tree();
            treeMenu.ID = "treeMenu";
            treeMenu.EnableArrows = true;
            treeMenu.ShowBorder = false;
            treeMenu.ShowHeader = false;
            treeMenu.EnableIcons = false;
            treeMenu.AutoScroll = true;
            Region2.Items.Add(treeMenu);

            treeMenu.DataSource = XmlDataSource1;
            treeMenu.DataBind();

            ResolveTreeNode(treeMenu.Nodes);

            return treeMenu;
        }


        private JObject GetClientIDS(params ControlBase[] ctrls)
        {
            JObject jo = new JObject();
            foreach (ControlBase ctrl in ctrls)
            {
                jo.Add(ctrl.ID, ctrl.ClientID);
            }

            return jo;
        }

        #endregion

        #region Page_Load

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Change Theme&Language DropDownList
                string themeValue = PageManager1.Theme.ToString().ToLower();
                HttpCookie themeCookie = Request.Cookies["Theme.EN"];
                if (themeCookie != null)
                {
                    themeValue = themeCookie.Value;
                }
                ddlTheme.SelectedValue = themeValue;
                ddlLanguage.SelectedValue = PageManager1.Language.ToString().ToLower();

                // Change Menu DropDownList
                HttpCookie menuCookie = Request.Cookies["Menu.EN"];
                if (menuCookie != null)
                {
                    ddlMenu.SelectedValue = menuCookie.Value;
                }

                // Show Soure Code Button
                btnSourceCode.OnClientClick = windowSourceCode.GetShowReference("./source.aspx?files=default.aspx;menu.xml;Web.config;Code/PageBase.cs;js/default.js;css/default.css");

            }
        }

        #endregion

        #region Event

        /// <summary>
        /// Change Theme
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlTheme_SelectedIndexChanged(object sender, EventArgs e)
        {
            HttpCookie themeCookie = new HttpCookie("Theme.EN", ddlTheme.SelectedValue);
            themeCookie.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Add(themeCookie);

            PageContext.Refresh();
        }

        /// <summary>
        /// Change Language
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlLanguage_SelectedIndexChanged(object sender, EventArgs e)
        {
            HttpCookie langCookie = new HttpCookie("Language.EN", ddlLanguage.SelectedValue);
            langCookie.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Add(langCookie);

            PageContext.Refresh();
        }

        /// <summary>
        /// Change Menu Type
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlMenu_SelectedIndexChanged(object sender, EventArgs e)
        {
            HttpCookie langCookie = new HttpCookie("Menu.EN", ddlMenu.SelectedValue);
            langCookie.Expires = DateTime.Now.AddYears(1);
            Response.Cookies.Add(langCookie);

            PageContext.Refresh();
        } 

        #endregion

        #region Tree

        /// <summary>
        /// Update all tree node icons
        /// </summary>
        /// <param name="nodes"></param>
        private void ResolveTreeNode(TreeNodeCollection nodes)
        {
            foreach (TreeNode node in nodes)
            {
                if (node.Nodes.Count == 0)
                {
                    if (!String.IsNullOrEmpty(node.NavigateUrl))
                    {
                        node.IconUrl = GetIconForTreeNode(node.NavigateUrl);
                    }
                }
                else
                {
                    ResolveTreeNode(node.Nodes);
                }
            }
        }

        /// <summary>
        /// Retrurn icon according to link file type
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        private string GetIconForTreeNode(string url)
        {
            string iconUrl = "~/images/filetype/vs_unknow.png";
            url = url.ToLower();
            int lastDotIndex = url.LastIndexOf('.');
            string fileType = url.Substring(lastDotIndex + 1);
            if (fileType == "txt")
            {
                iconUrl = "~/images/filetype/vs_txt.png";
            }
            else if (fileType == "aspx")
            {
                iconUrl = "~/images/filetype/vs_aspx.png";
            }
            else if (fileType == "htm" || fileType == "html")
            {
                iconUrl = "~/images/filetype/vs_htm.png";
            }

            return iconUrl;
        } 

        #endregion
    }
}
