using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class form : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitForm1_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("表单 1 提交成功！");
        }

        protected void btnSubmitAll_Click(object sender, EventArgs e)
        {
            Alert.ShowInTop("两个表单同时提交成功！");
        }

    }
}
