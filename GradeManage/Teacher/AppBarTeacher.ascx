<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AppBarTeacher.ascx.cs" Inherits="GradeManage.Teacher.AppBarTeacher" %>
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
            <a class="dropdown-toggle">学生管理</a>
            <ul class="d-menu" data-role="dropdown">
                <li><a href="ListStudent.aspx">编辑学生</a></li>
                <li><a href="AddStudent.aspx">添加学生</a></li>
            </ul>
        </li>
        <li>
            <a class="dropdown-toggle">课程管理</a>
            <ul class="d-menu" data-role="dropdown">
                <li><a href="ListCourse.aspx">编辑课程</a></li>
                <li><a href="AddCourse.aspx">添加课程</a></li>
                <li><a href="ListSelCourse.aspx">成绩评定</a></li>
            </ul>
        </li>
        <li>
            <a class="dropdown-toggle">账号设置</a>
            <ul class="d-menu" data-role="dropdown">
                <li><a href="ChangePassword.aspx">修改密码</a></li>
            </ul>
        </li>
        <li><a href="../Login.aspx">退出</a></li>
    </ul>
</div>
<br />
<span style="float: right">你好，<asp:Label ID="lbName" runat="server"></asp:Label>老师&nbsp;&nbsp;&nbsp;&nbsp;</span>