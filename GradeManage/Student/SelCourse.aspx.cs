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
    public partial class SelCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            DataTable table = SqlHelper.ExecuteDataTable("select * from Course");
            GridViewSelCourse.DataSource = table;
            GridViewSelCourse.DataKeyNames = new string[] { "Cno" };
            GridViewSelCourse.DataBind();
        }

        protected void GridViewSelCourse_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewSelCourse.PageIndex = e.NewPageIndex;
            DataTable table = SqlHelper.ExecuteDataTable("select * from Course");
            GridViewSelCourse.DataSource = table;
            GridViewSelCourse.DataBind();
        }

        protected void GridViewSelCourse_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int count = (int)SqlHelper.ExecuteScalar("select COUNT(*) from SelectCourse where Sno=@Sno and Cno=@Cno",
                new SqlParameter("@Sno", Session["Sno"]),
                new SqlParameter("@Cno", GridViewSelCourse.DataKeys[e.NewEditIndex].Value.ToString()));
            if (count <= 0)
            {
                int result = SqlHelper.ExecuteNonQuery("insert into SelectCourse(Sno,Cno) values(@Sno,@Cno)",
                    new SqlParameter("@Sno", Session["Sno"]),
                    new SqlParameter("@Cno", GridViewSelCourse.DataKeys[e.NewEditIndex].Value.ToString()));
                if (result > 0)
                {
                    Response.Write("<script type='text/javascript'>alert('选修成功！');</script>");
                }
                else
                {
                    Response.Write("<script type='text/javascript'>alert('选修失败！');</script>");
                }
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('您已经选修过该课程！');</script>");
            }
        }
    }
}