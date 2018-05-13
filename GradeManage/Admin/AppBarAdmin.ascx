<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AppBarAdmin.ascx.cs" Inherits="GradeManage.Admin.AppBarAdmin" %>
<link href="../css/metro.css" rel="stylesheet" />
<link href="../css/metro-icons.css" rel="stylesheet" />
<script src="../js/jquery-1.10.2.js"></script>
<script src="../js/metro.js"></script>
<h2 style="text-align: center"><span class="icon mif-school">&nbsp;&nbsp;学生成绩管理系统</span></h2>
<br />
<div class="app-bar">
    <a class="app-bar-element"><span class="icon mif-windows mif-2x"></span></a>
    <span class="app-bar-divider"></span>
    <ul class="app-bar-menu">
        <li><a href="HomePage.aspx">主页</a></li>
        <li>
            <a class="dropdown-toggle">账号管理</a>
            <ul class="d-menu" data-role="dropdown">
                <li>
                    <a class="dropdown-toggle">学生账号管理</a>
                    <ul class="d-menu" data-role="dropdown">
                        <li><a href="StudentAccount.aspx">查看学生账号</a></li>
                        <li><a href="AddStudentAccount.aspx">添加学生账号</a></li>
                    </ul>
                </li>
                <li>
                    <a class="dropdown-toggle">教师账号管理</a>
                    <ul class="d-menu" data-role="dropdown">
                        <li><a href="TeacherAccount.aspx">查看教师账号</a></li>
                        <li><a href="AddTeacherAccount.aspx">添加教师账号</a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <a class="dropdown-toggle">安全设置</a>
            <ul class="d-menu" data-role="dropdown">
                <li><a href="ChangePassword.aspx">修改密码</a></li>
            </ul>
        </li>
        <li><a href="../Login.aspx">退出</a></li>
    </ul>
</div>
<br />
<span style="float: right">你好，管理员&nbsp;&nbsp;&nbsp;&nbsp;</span>