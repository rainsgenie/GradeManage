using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GradeManage.Student
{
    public partial class Info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            DataTable table = SqlHelper.ExecuteDataTable("select * from Student where Sno=" + Session["Sno"].ToString());
            lbSno.Text = table.Rows[0]["Sno"].ToString();
            lbSname.Text = table.Rows[0]["Sname"].ToString();
            lbSex.Text = table.Rows[0]["Sex"].ToString();
            lbClass.Text = table.Rows[0]["Class"].ToString();
            lbDept.Text = table.Rows[0]["Dept"].ToString();
        }
    }
}