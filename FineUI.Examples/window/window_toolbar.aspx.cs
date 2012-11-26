using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.window
{
    public partial class window_toolbar : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void btnShowInServer_Click(object sender, EventArgs e)
        {
            Window2.Hidden = false;
        }

        protected void Window2_Close(object sender, WindowCloseEventArgs e)
        {
            Alert.ShowInTop("窗体被关闭了。参数：" + e.CloseArgument);
        }


    }
}
