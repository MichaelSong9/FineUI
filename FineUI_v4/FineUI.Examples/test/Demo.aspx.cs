using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Com.UMall.Presentation.Order
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                gridDemo.DataSource = GetDataTable2();
                gridDemo.DataBind();
            }
        }


        protected DataTable GetDataTable2()
        {
            DataTable table = new DataTable();
            table.Columns.Add(new DataColumn("Id", typeof(int)));
            table.Columns.Add(new DataColumn("Name", typeof(String)));
            table.Columns.Add(new DataColumn("EntranceYear", typeof(int)));
            table.Columns.Add(new DataColumn("AtSchool", typeof(bool)));
            table.Columns.Add(new DataColumn("Major", typeof(String)));
            table.Columns.Add(new DataColumn("Group", typeof(int)));
            table.Columns.Add(new DataColumn("Gender", typeof(int)));
            table.Columns.Add(new DataColumn("LogTime", typeof(DateTime)));
            table.Columns.Add(new DataColumn("Desc", typeof(string)));
            table.Columns.Add(new DataColumn("Guid", typeof(Guid)));
            table.Columns.Add(new DataColumn("Hobby", typeof(String)));
            table.Columns.Add(new DataColumn("EntranceDate", typeof(String)));
            table.Columns.Add(new DataColumn("Donate", typeof(int)));
            table.Columns.Add(new DataColumn("Fee", typeof(int)));
            // Hobby：reading,basketball,travel,movie,music
            // 爱好：读书, 篮球, 旅游, 电影, 音乐 

            DataRow row = null;

            row = table.NewRow();
            row[0] = 101;
            row[1] = "陈萍萍";
            row[2] = 2000;
            row[3] = true;
            row[4] = "计算机应用技术";
            row[5] = 1;
            row[6] = 0;
            row[7] = DateTime.Now.AddDays(-100);
            row[8] = "陈萍萍，女，20岁，出生于中国南方的一个小山村，毕业于中国科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,basketball,travel";
            row[11] = "2000-09-01";
            row[12] = 299;
            row[13] = 2990;
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = 102;
            row[1] = "胡飞";
            row[2] = 2008;
            row[3] = false;
            row[4] = "信息工程";
            row[5] = 1;
            row[6] = 1;
            row[7] = DateTime.Now.AddDays(-90);
            row[8] = "胡飞，男，20岁，出生于中国北方的一个小山村，毕业于南方科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,basketball";
            row[11] = "2008-09-01";
            row[12] = 199;
            row[13] = 1990;
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = 103;
            row[1] = "金婷婷";
            row[2] = 2001;
            row[3] = true;
            row[4] = "会计学";
            row[5] = 2;
            row[6] = 0;
            row[7] = DateTime.Now.AddDays(-80);
            row[8] = "金婷婷，女，28岁，出生于中国海南岛的一个小山村，毕业于中国科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,basketball,music";
            row[11] = "2001-09-01";
            row[12] = 299;
            row[13] = 3990;
            table.Rows.Add(row);


            row = table.NewRow();
            row[0] = 104;
            row[1] = "潘国";
            row[2] = 2008;
            row[3] = false;
            row[4] = "国际经济与贸易";
            row[5] = 2;
            row[6] = 1;
            row[7] = DateTime.Now.AddDays(-70);
            row[8] = "潘国，男，22岁，出生于中国澳门的一个小山村，毕业于中国科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,music";
            row[11] = "2008-09-01";
            row[12] = 399;
            row[13] = 3998;
            table.Rows.Add(row);


            row = table.NewRow();
            row[0] = 105;
            row[1] = "吴颖颖";
            row[2] = 2002;
            row[3] = true;
            row[4] = "市场营销";
            row[5] = 3;
            row[6] = 0;
            row[7] = DateTime.Now.AddDays(-60);
            row[8] = "吴颖颖，女，26岁，出生于中国福建的一个小山村，毕业于香港科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,movie,music";
            row[11] = "2002-09-01";
            row[12] = 499;
            row[13] = 4992;
            table.Rows.Add(row);


            row = table.NewRow();
            row[0] = 106;
            row[1] = "张博";
            row[2] = 2003;
            row[3] = false;
            row[4] = "财务管理";
            row[5] = 3;
            row[6] = 1;
            row[7] = DateTime.Now.AddDays(-50);
            row[8] = "张博，男，28岁，出生于中国浙江的一个小山村，毕业于电子科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "movie,music";
            row[11] = "2003-09-01";
            row[12] = 99;
            row[13] = 997;
            table.Rows.Add(row);


            row = table.NewRow();
            row[0] = 107;
            row[1] = "杨倩倩";
            row[2] = 2000;
            row[3] = true;
            row[4] = "材料物理与化学";
            row[5] = 4;
            row[6] = 0;
            row[7] = DateTime.Now.AddDays(-40);
            row[8] = "杨倩倩，女，25岁，出生于中国北方的一个小山村，毕业于北京科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "travel,movie,music";
            row[11] = "2000-09-01";
            row[12] = 399;
            row[13] = 3995;
            table.Rows.Add(row);


            row = table.NewRow();
            row[0] = 108;
            row[1] = "董超";
            row[2] = 2004;
            row[3] = false;
            row[4] = "生物医学工程";
            row[5] = 4;
            row[6] = 1;
            row[7] = DateTime.Now.AddDays(-30);
            row[8] = "董超，男，26岁，出生于中国河南的一个小山村，毕业于中国科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "basketball,movie,music";
            row[11] = "2004-09-01";
            row[12] = 299;
            row[13] = 2996;
            table.Rows.Add(row);


            row = table.NewRow();
            row[0] = 109;
            row[1] = "张娟娟";
            row[2] = 2003;
            row[3] = true;
            row[4] = "土木工程";
            row[5] = 5;
            row[6] = 0;
            row[7] = DateTime.Now.AddDays(-20);
            row[8] = "张娟娟，女，25岁，出生于中国广西的一个小山村，毕业于南方科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,travel,movie,music";
            row[11] = "2003-09-01";
            row[12] = 599;
            row[13] = 5990;
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = 110;
            row[1] = "叶鹏";
            row[2] = 2006;
            row[3] = false;
            row[4] = "电子商务";
            row[5] = 5;
            row[6] = 1;
            row[7] = DateTime.Now.AddDays(-10);
            row[8] = "叶鹏，男，23岁，出生于中国安徽的一个小山村，毕业于国防科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,movie,music";
            row[11] = "2006-09-01";
            row[12] = 699;
            row[13] = 6990;
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = 111;
            row[1] = "李玲玲";
            row[2] = 2002;
            row[3] = true;
            row[4] = "管理学";
            row[5] = 5;
            row[6] = 0;
            row[7] = DateTime.Now.AddDays(-5);
            row[8] = "李玲玲，女，22岁，出生于中国台湾的一个小山村，毕业于台湾科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,travel,music";
            row[11] = "2002-09-01";
            row[12] = 399;
            row[13] = 3990;
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = 112;
            row[1] = "张萍萍";
            row[2] = 2000;
            row[3] = true;
            row[4] = "计算机应用技术";
            row[5] = 1;
            row[6] = 0;
            row[7] = DateTime.Now.AddDays(-100);
            row[8] = "张萍萍，女，20岁，出生于中国南方的一个小山村，毕业于中国科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,basketball,travel";
            row[11] = "2000-09-01";
            row[12] = 299;
            row[13] = 2999;
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = 113;
            row[1] = "曹飞";
            row[2] = 2008;
            row[3] = false;
            row[4] = "信息工程";
            row[5] = 1;
            row[6] = 1;
            row[7] = DateTime.Now.AddDays(-90);
            row[8] = "曹飞，男，20岁，出生于中国北方的一个小山村，毕业于南方科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,basketball";
            row[11] = "2008-09-01";
            row[12] = 399;
            row[13] = 3996;
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = 114;
            row[1] = "孙婷婷";
            row[2] = 2001;
            row[3] = true;
            row[4] = "会计学";
            row[5] = 2;
            row[6] = 0;
            row[7] = DateTime.Now.AddDays(-80);
            row[8] = "孙婷婷，女，28岁，出生于中国海南岛的一个小山村，毕业于中国科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,basketball,music";
            row[11] = "2001-09-01";
            row[12] = 499;
            row[13] = 4990;
            table.Rows.Add(row);


            row = table.NewRow();
            row[0] = 115;
            row[1] = "董国";
            row[2] = 2008;
            row[3] = false;
            row[4] = "国际经济与贸易";
            row[5] = 2;
            row[6] = 1;
            row[7] = DateTime.Now.AddDays(-70);
            row[8] = "董国，男，22岁，出生于中国澳门的一个小山村，毕业于中国科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,music";
            row[11] = "2008-09-01";
            row[12] = 299;
            row[13] = 2992;
            table.Rows.Add(row);


            row = table.NewRow();
            row[0] = 116;
            row[1] = "习颖颖";
            row[2] = 2002;
            row[3] = true;
            row[4] = "市场营销";
            row[5] = 3;
            row[6] = 0;
            row[7] = DateTime.Now.AddDays(-60);
            row[8] = "习颖颖，女，26岁，出生于中国福建的一个小山村，毕业于香港科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,movie,music";
            row[11] = "2002-09-01";
            row[12] = 199;
            row[13] = 1990;
            table.Rows.Add(row);


            row = table.NewRow();
            row[0] = 117;
            row[1] = "李博";
            row[2] = 2003;
            row[3] = false;
            row[4] = "财务管理";
            row[5] = 3;
            row[6] = 1;
            row[7] = DateTime.Now.AddDays(-50);
            row[8] = "李博，男，28岁，出生于中国浙江的一个小山村，毕业于电子科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "movie,music";
            row[11] = "2003-09-01";
            row[12] = 99;
            row[13] = 990;
            table.Rows.Add(row);


            row = table.NewRow();
            row[0] = 118;
            row[1] = "黄倩倩";
            row[2] = 2000;
            row[3] = true;
            row[4] = "材料物理与化学";
            row[5] = 4;
            row[6] = 0;
            row[7] = DateTime.Now.AddDays(-40);
            row[8] = "黄倩倩，女，25岁，出生于中国北方的一个小山村，毕业于北京科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "travel,movie,music";
            row[11] = "2000-09-01";
            row[12] = 399;
            row[13] = 3990;
            table.Rows.Add(row);


            row = table.NewRow();
            row[0] = 119;
            row[1] = "韩超";
            row[2] = 2004;
            row[3] = false;
            row[4] = "生物医学工程";
            row[5] = 4;
            row[6] = 1;
            row[7] = DateTime.Now.AddDays(-30);
            row[8] = "韩超，男，26岁，出生于中国河南的一个小山村，毕业于中国科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "basketball,movie,music";
            row[11] = "2004-09-01";
            row[12] = 399;
            row[13] = 3991;
            table.Rows.Add(row);


            row = table.NewRow();
            row[0] = 120;
            row[1] = "王娟娟";
            row[2] = 2003;
            row[3] = true;
            row[4] = "土木工程";
            row[5] = 5;
            row[6] = 0;
            row[7] = DateTime.Now.AddDays(-20);
            row[8] = "王娟娟，女，25岁，出生于中国广西的一个小山村，毕业于南方科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,travel,movie,music";
            row[11] = "2003-09-01";
            row[12] = 399;
            row[13] = 3992;
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = 121;
            row[1] = "周鹏";
            row[2] = 2006;
            row[3] = false;
            row[4] = "电子商务";
            row[5] = 5;
            row[6] = 1;
            row[7] = DateTime.Now.AddDays(-10);
            row[8] = "周鹏，男，23岁，出生于中国安徽的一个小山村，毕业于国防科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,movie,music";
            row[11] = "2006-09-01";
            row[12] = 299;
            row[13] = 2992;
            table.Rows.Add(row);

            row = table.NewRow();
            row[0] = 122;
            row[1] = "吴玲玲";
            row[2] = 2002;
            row[3] = true;
            row[4] = "管理学";
            row[5] = 5;
            row[6] = 0;
            row[7] = DateTime.Now.AddDays(-5);
            row[8] = "吴玲玲，女，22岁，出生于中国台湾的一个小山村，毕业于台湾科学技术大学。";
            row[9] = Guid.NewGuid();
            row[10] = "reading,travel,music";
            row[11] = "2002-09-01";
            row[12] = 399;
            row[13] = 3993;
            table.Rows.Add(row);


            return table;
        }

    }
}