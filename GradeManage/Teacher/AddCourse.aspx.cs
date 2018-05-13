using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GradeManage
{
    public partial class AddCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (tbCno.Text == "" || tbCname.Text == "")
            {
                Response.Write("<script type='text/javascript'>alert('输入不能为空！');</script>");
                return;
            }
            try
            {
                int count = (int)SqlHelper.ExecuteScalar("select COUNT(*) from Course where Cno=@Cno or Cname=@Cname",
                    new SqlParameter("@Cno",tbCno.Text),
                    new SqlParameter("@Cname",tbCname.Text));

                if (count > 0)
                {
                    Response.Write("<script type='text/javascript'>alert('已存在相同的课程号或课程名！');</script>");
                    return;
                }

                int result = SqlHelper.ExecuteNonQuery("insert into Course(Cno,Cname) values(@Cno,@Cname)",
                new SqlParameter("@Cno", tbCno.Text),
                new SqlParameter("@Cname", tbCname.Text));

                if (result > 0)
                {
                    Response.Write("<script type='text/javascript'>alert('添加成功！');</script>");
                }
                else
                {
                    Response.Write("<script type='text/javascript'>alert('添加失败！');</script>");
                }
            }
            catch
            {
                Response.Write("<script type='text/javascript'>alert('未知错误！');</script>");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Teacher/ListCourse.aspx");
        }
    }
}