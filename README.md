# Grade Management
学生成绩管理系统

1、开发环境：

	Visual Studio 2013
	SQL Server 2014
	.NET Framework 4.5

2、用户连接字符串放在Web.config文件中

	默认登录名：sa，密码：123456，根据情况修改

3、从 Login.aspx 页面进行登陆

	管理员：10000/10000
	教师：10001/zjy，10002/yzk
	学生：101/101，102/102，103/103 ...

4、若数据库无法附加

	对数据库文件（.mdf和.ldf），右键-属性-安全-编辑权限-勾选完全控制
	以管理员身份运行SQL Server

5、文件目录说明：

	GradeManage
		Admin	//管理员页面文件夹

			- AddStudentAccount.aspx	//添加学生账号
			- AddTeacherAccount.aspx	//添加教师账号
			- AppBarAdmin.ascx	//管理员界面的菜单模板
			- ChangePassword.aspx	//修改密码
			- HomePage.aspx	//主页
			- StudentAccount.aspx	//学生账号
			- TeacherAccount.aspx	//教师账号
			
		Student	//学生页面文件夹

			- AppBarStudent.ascx	//学生界面的菜单模板
			- ChangePassword.aspx	//修改密码
			- HomePage.aspx	//主页
			- Info.aspx	//学生的个人信息
			- SelCourse.aspx	//选课操作
			- SelectedCourse.aspx	//已选的课程
			
		Teacher	//教师页面文件夹

			- AddCourse.aspx	//添加课程
			- AddStudent.aspx	//添加学生
			- AppBarTeacher.ascx	//教师界面的菜单模板
			- ChangePassword.aspx	//修改密码
			- HomePage.aspx	//主页
			- ListCourse.aspx	//列出所有课程
			- ListSelCourse.aspx	//列出所有选课信息
			- ListStudent.aspx	//列出所有学生信息
		
		- ChangePwd.ascx	//修改密码页面的模板
		- Login.aspx	//登陆
		- SqlHelper.cs	//将连接SQL数据库的冗余代码的几个方法封装成类
		- Web.config	//配置文件

