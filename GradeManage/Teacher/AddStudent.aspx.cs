using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GradeManage.Teacher
{
    public partial class AddStudent : System.Web.UI.Page
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
            try
            {
                int count = (int)SqlHelper.ExecuteScalar("select COUNT(*) from Student where Sno=@Sno",
                    new SqlParameter("@Sno",tbSno.Text));

                if (count > 0)
                {
                    Response.Write("<script type='text/javascript'>alert('已存在该学号的学生！不能重复添加！');</script>");
                    return;
                }

                int result = SqlHelper.ExecuteNonQuery("insert into Student(Sno,Sname,Sex,Class,Dept,Password) values(@Sno,@Sname,@Sex,@Class,@Dept,@Password)",
                new SqlParameter("Sno", tbSno.Text),
                new SqlParameter("Sname", tbSname.Text),
                new SqlParameter("Sex", tbSex.Text),
                new SqlParameter("Class", tbClass.Text),
                new SqlParameter("Dept", tbDept.Text),
                new SqlParameter("Password", tbSno.Text));
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
                Response.Write("<script type='text/javascript'>alert('输入有误！');</script>");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            tbSno.Text="";
            tbSname.Text="";
            tbSex.Text="";
            tbClass.Text="";
            tbDept.Text="";
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Teacher/ListStudent.aspx");
        }
    }
}