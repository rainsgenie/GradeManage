# Grade Management sys

1. Environment

	Visual Studio 2013
	SQL Server 2014
	.NET Framework 4.5

2. User connection string at Web.config

	default username: sa, password: 123456

3. Login at Login.aspx

	Admin: 10000/10000
	Teacher: 10001/zjy，10002/yzk
	Student: 101/101，102/102，103/103 ...

4. If the database cannot be attached
	
	For database files (.mdf and .ldf), set it full control of permission property.
	Then run SQL server as administrator.

5. File structure

	GradeManage
	  /Admin
	    AddStudentAccount.aspx	//添加学生账号
	    AddTeacherAccount.aspx	//添加教师账号
	    AppBarAdmin.ascx		//管理员界面的菜单模板
	    ChangePassword.aspx		//修改密码
	    HomePage.aspx		//主页
	    StudentAccount.aspx		//学生账号
	    TeacherAccount.aspx		//教师账号
	  /Student
	    AppBarStudent.ascx		//学生界面的菜单模板
	    ChangePassword.aspx		//修改密码
	    HomePage.aspx		//主页
	    Info.aspx			//学生的个人信息
	    SelCourse.aspx		//选课操作
	    SelectedCourse.aspx		//已选的课程
	  /Teacher
	    AddCourse.aspx		//添加课程
	    AddStudent.aspx		//添加学生
	    AppBarTeacher.ascx		//教师界面的菜单模板
	    ChangePassword.aspx		//修改密码
	    HomePage.aspx		//主页
	    ListCourse.aspx		//列出所有课程
	    ListSelCourse.aspx		//列出所有选课信息
	    ListStudent.aspx		//列出所有学生信息
	  ChangePwd.ascx		//修改密码页面的模板
	  Login.aspx			//登陆
	  SqlHelper.cs			//将连接SQL数据库的冗余代码的几个方法封装成类
	  Web.config			//配置文件
	  
# License
[Apache License 2.0](https://github.com/ryanecat/grade-management/blob/master/LICENSE)
