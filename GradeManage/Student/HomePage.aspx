﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="GradeManage.Student.HomePage" %>

<%@ Register Src="~/Student/AppBarStudent.ascx" TagName="AppBar" TagPrefix="menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>    
</head>
<body>

    <form id="form1" runat="server">
        <div class="container">
            <menu:AppBar runat="server" />
            <h3>&nbsp;&nbsp;<span class="icon mif-user-check"></span>&nbsp;&nbsp;选择您要执行的操作</h3>
            <br />
        </div>
    </form>

    <div class="container">
        <button id="btnInfo" class="shortcut-button bg-red bg-active-black fg-white" onclick="location.href='Info.aspx'">
            <span class="icon mif-user"></span>
            <span class="title">个人信息</span>
        </button>
        <button id="btnSelCourse" class="shortcut-button bg-green bg-active-black fg-white" onclick="location.href='SelectedCourse.aspx'">
            <span class="icon mif-layers"></span>
            <span class="title">选课情况</span>
        </button>
        <button id="changePwd" class="shortcut-button bg-orange bg-active-black fg-white" onclick="location.href='ChangePassword.aspx'">
            <span class="icon mif-lock"></span>
            <span class="title">修改密码</span>
        </button>
        <button id="btnHomePage" class="shortcut-button bg-cyan bg-active-black fg-white" onclick="location.href='../Login.aspx'">
            <span class="icon mif-home"></span>
            <span class="title">切换账号</span>
        </button>
    </div>

</body>
</html>
