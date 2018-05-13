<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AppBarStudent.ascx.cs" Inherits="GradeManage.Student.AppBarStudent" %>
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
            <a class="dropdown-toggle">个人中心</a>
            <ul class="d-menu" data-role="dropdown">
                <li><a href="Info.aspx">我的资料</a></li>
                <li><a href="../Login.aspx">切换账号</a></li>
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
<span style="float: right">你好，<asp:Label ID="lbName" runat="server"></asp:Label>同学&nbsp;&nbsp;&nbsp;&nbsp;</span>