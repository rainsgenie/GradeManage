using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GradeManage
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Role"] = null;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (tbUserName.Text == "" || tbPwd.Text == "")
            {
                Response.Write("<script type='text/javascript'>alert('用户名或密码不能为空！');</script>");
                return;
            }
            string connStr = ConfigurationManager.ConnectionStrings["dbConnStr"].ConnectionString;
            int count = 0;
            if (rbStudent.Checked)//学生
            {
                Session["Role"] = "Student";
                Session["Sno"] = tbUserName.Text;
                count = (int)SqlHelper.ExecuteScalar("select COUNT(*) from Student where Sno=@Sno and Password=@Password",
                    new SqlParameter("@Sno", Convert.ToInt64(tbUserName.Text)),
                    new SqlParameter("@Password", tbPwd.Text));
                Session["Name"] = SqlHelper.ExecuteScalar("select Sname from Student where Sno=@Sno",
                    new SqlParameter("@Sno", Session["Sno"]));
            }
            else if (rbTeacher.Checked || rbAdmin.Checked)//教师或管理员
            {
                Session["Role"] = rbTeacher.Checked ? "Teacher" : "Admin";
                Session["Mno"] = tbUserName.Text;
                count = (int)SqlHelper.ExecuteScalar("select COUNT(*) from Manager where Mno=@Mno and Mpwd=@Mpwd and UserType=@UserType",
                    new SqlParameter("@Mno", tbUserName.Text),
                    new SqlParameter("@Mpwd", tbPwd.Text),
                    new SqlParameter("@UserType", Session["Role"]));
                Session["Name"] = SqlHelper.ExecuteScalar("select Mname from Manager where Mno=@Mno",
                    new SqlParameter("@Mno", Session["Mno"]));
            }
            else//未选择用户类型
            {
                Response.Write("<script type='text/javascript'>alert('未选择用户类型！');</script>");
                return;
            }

            if (count > 0)
            {
                switch ((Session["Role"]).ToString())
                {
                    case "Student":
                        Response.Redirect("~/Student/HomePage.aspx");
                        break;
                    case "Teacher":
                        Response.Redirect("~/Teacher/HomePage.aspx");
                        break;
                    case "Admin":
                        Response.Redirect("~/Admin/HomePage.aspx");
                        break;
                }
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('用户名或密码错误！');</script>");
            }
        }
    }
}