using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GradeManage
{
    public partial class ChangePwd1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //当存在输入为空的时候
            if (tbOldPwd.Text == "" || tbNewPwd.Text == "" || tbConfirmNewPwd.Text == "")
            {
                Response.Write("<script type='text/javascript'>alert('输入不能为空！');</script>");
                return;
            }

            if (Session["Role"].ToString() == "Student")//当前用户为学生
            {
                int count = (int)SqlHelper.ExecuteScalar("select COUNT(*) from Student where Sno=@Sno and Password=@Password",
                    new SqlParameter("@Sno", Session["Sno"]),
                    new SqlParameter("@Password", tbOldPwd.Text));
                if (count > 0)//密码输入正确
                {
                    if (tbNewPwd.Text == tbConfirmNewPwd.Text)//两次新密码输入一致
                    {
                        int result = SqlHelper.ExecuteNonQuery("update Student set Password=@Password where Sno=@Sno",
                            new SqlParameter("@Password", tbNewPwd.Text),
                            new SqlParameter("@Sno", Session["Sno"]));
                        if (result > 0)//密码修改成功
                        {
                            Response.Write("<script type='text/javascript'>alert('密码修改成功！');</script>");
                        }
                        else//密码修改失败
                        {
                            Response.Write("<script type='text/javascript'>alert('密码修改失败！');</script>");
                        }
                    }
                    else//两次新密码输入不一致
                    {
                        Response.Write("<script type='text/javascript'>alert('两次新密码输入不一致！');</script>");
                    }
                }
                else//密码输入不正确
                {
                    Response.Write("<script type='text/javascript'>alert('密码输入有误！');</script>");
                }
            }
            else//当前用户为教师或管理员
            {
                int count = (int)SqlHelper.ExecuteScalar("select COUNT(*) from Manager where Mno=@Mno and Mpwd=@Mpwd",
                    new SqlParameter("@Mno", Session["Mno"]),
                    new SqlParameter("@Mpwd", tbOldPwd.Text));
                if (count > 0)//密码输入正确
                {
                    if (tbNewPwd.Text == tbConfirmNewPwd.Text)//两次新密码输入一致
                    {
                        int result = SqlHelper.ExecuteNonQuery("update Manager set Mpwd=@Mpwd where Mno=@Mno",
                            new SqlParameter("@Mpwd", tbNewPwd.Text),
                            new SqlParameter("@Mno", Session["Mno"]));
                        if (result > 0)//密码修改成功
                        {
                            Response.Write("<script type='text/javascript'>alert('密码修改成功！');</script>");
                        }
                        else//密码修改失败
                        {
                            Response.Write("<script type='text/javascript'>alert('密码修改失败！');</script>");
                        }
                    }
                    else//两次新密码输入不一致
                    {
                        Response.Write("<script type='text/javascript'>alert('两次新密码输入不一致！');</script>");
                    }
                }
                else//密码输入不正确
                {
                    Response.Write("<script type='text/javascript'>alert('密码输入有误！');</script>");
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            switch (Session["Role"].ToString())
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
    }
}