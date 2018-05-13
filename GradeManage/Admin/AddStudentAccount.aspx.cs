using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GradeManage.Admin
{
    public partial class AddStudentAccount : System.Web.UI.Page
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
            if (tbSno.Text == "" || tbSname.Text == "" || tbSex.Text == "" || tbClass.Text == "" || tbDept.Text == "" || tbPassword.Text == "")
            {
                Response.Write("<script type='text/javascript'>alert('输入不能为空！');</script>");
                return;
            }
            try
            {
                int result = SqlHelper.ExecuteNonQuery("insert into Student(Sno,Sname,Sex,Class,Dept,Password) values(@Sno,@Sname,@Sex,@Class,@Dept,@Password)",
                new SqlParameter("@Sno", tbSno.Text), new SqlParameter("@Sname", tbSname.Text),
                new SqlParameter("@Sex", tbSex.Text), new SqlParameter("@Class", tbClass.Text),
                new SqlParameter("@Dept", tbDept.Text), new SqlParameter("@Password", tbPassword.Text));
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

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/StudentAccount.aspx");
        }
    }
}