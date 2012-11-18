using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.grid
{
    public partial class grid_iframe_window : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }

        }

        private void LoadData()
        {

            btnClose.OnClientClick = ActiveWindow.GetConfirmHidePostBackReference();

        }


        protected void btnSaveContinue_Click(object sender, EventArgs e)
        {
            // 1. Logic for form saving


            // 2. Close current page, then postback parent page
            PageContext.RegisterStartupScript(ActiveWindow.GetHidePostBackReference());
        }

        protected void btnSaveRefresh_Click(object sender, EventArgs e)
        {
            // 1. Logic for form saving

            // 2. Close current page, then refresh parent page
            PageContext.RegisterStartupScript(ActiveWindow.GetHideRefreshReference());
        }


    }
}
