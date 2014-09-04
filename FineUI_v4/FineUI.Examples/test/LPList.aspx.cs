using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.test
{
    public partial class LPList : SingleGridPageBase
    {
        protected override void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            Master.ModelName = "礼品";
            Master.InfoPageUrl = "~/test/LPInfo.aspx";
            //Master.InfoFormParam = string.Format("HDHID={0}", GetQueryValue("HDHID"));
            Master.InfoWidth = 700;
            Master.InfoHeight = 650;
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        protected override void BindGrid()
        {
            //IQueryable<HDHSP> q = BDB.DB.HDHSPs;

            ////string sHDHID = GetQueryValue("HDHID");
            //q = q.Where(h => h.HDHSP_LX == "L" && h.HDHSP_HDHID == "ZZZZ");

            //// 在查询添加之后，排序和分页之前获取总记录数
            //Grid1.RecordCount = q.Count();

            //// 排列和数据库分页
            //q = SortAndPage<HDHSP>(q, Grid1);

            //Grid1.DataSource = q;
            //Grid1.DataBind();
        }

        protected override void DeleteData()
        {
            //base.DeleteData();
            //List<int> ids = GetSelectedDataKeyIDs(Grid1);
            //foreach (int i in ids)
            //{
            //    BDB.DB.HDHSPs.Where(c => c.ID == i).Delete();
            //}
        }

        protected void btnDR_Click(object sender, EventArgs e)
        {
            string sUrl = String.Format("~/Components/NJFT/DRUpload.aspx?DRLX=LP");
            PageContext.RegisterStartupScript(Window1.GetShowReference(sUrl, Master.ModelName, 300, 120));
        }

        protected void Window1_Close(object sender, EventArgs e)
        {
            BindGrid();
        }
    }
}
