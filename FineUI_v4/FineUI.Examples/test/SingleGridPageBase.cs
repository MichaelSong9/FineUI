using System;
using System.Collections.Generic;
using System.Web;

namespace FineUI.Examples.test
{
    public class SingleGridPageBase : PageBase
    {
        protected virtual void Page_Load(object sender, EventArgs e)
        {
            ((SingleGrid)(base.Master)).DeleteData = DeleteData;
            ((SingleGrid)(base.Master)).BindGrid = BindGrid;
            ((SingleGrid)(base.Master)).SetControlState = SetControlState;
        }

        protected virtual void DeleteData()
        {
        }

        protected virtual void BindGrid()
        {
        }

        protected virtual void SetControlState()
        {

        }
    }
}