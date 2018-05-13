using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GradeManage.Student
{
    public partial class SelectedCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            DataTable tableSC = SqlHelper.ExecuteDataTable("select SelectCourse.Cno,Cname,Score from Course,SelectCourse where Course.Cno=SelectCourse.Cno and Sno=" + Session["Sno"].ToString());
            GridViewSelectedCourse.DataSource = tableSC;
            GridViewSelectedCourse.DataBind();
        }
    }
}