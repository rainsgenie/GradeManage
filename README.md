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
		    AddStudentAccount.aspx
		    AddTeacherAccount.aspx
		    AppBarAdmin.ascx
		    ChangePassword.aspx
		    HomePage.aspx
		    StudentAccount.aspx
		    TeacherAccount.aspx
		  /Student
		    AppBarStudent.ascx
		    ChangePassword.aspx
		    HomePage.aspx
		    Info.aspx
		    SelCourse.aspx
		    SelectedCourse.aspx
		  /Teacher
		    AddCourse.aspx
		    AddStudent.aspx
		    AppBarTeacher.ascx
		    ChangePassword.aspx
		    HomePage.aspx
		    ListCourse.aspx
		    ListSelCourse.aspx
		    ListStudent.aspx
		  ChangePwd.ascx
		  Login.aspx
		  SqlHelper.cs
		  Web.config
	  
# License
[Apache License 2.0](https://github.com/ryanecat/grade-management/blob/master/LICENSE)
