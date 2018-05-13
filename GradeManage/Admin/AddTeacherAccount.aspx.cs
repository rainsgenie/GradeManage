using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GradeManage.Admin
{
    public partial class AddTeacherAccount : System.Web.UI.Page
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
            int result = 0;
            if (tbMno.Text == "" || tbMname.Text == "" || tbMpwd.Text == "")
            {
                Response.Write("<script type='text/javascript'>alert('输入不能为空！');</script>");
                return;
            }
            try
            {
                result = SqlHelper.ExecuteNonQuery("insert into Manager(Mno,Mname,Mpwd,UserType) values(@Mno,@Mname,@Mpwd,@UserType)",
                    new SqlParameter("@Mno", tbMno.Text),
                    new SqlParameter("@Mname", tbMname.Text),
                    new SqlParameter("@Mpwd", tbMpwd.Text),
                    new SqlParameter("@UserType", tbUserType.Text));
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
                return;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/TeacherAccount.aspx");
        }
    }
}