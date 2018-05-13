<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="GradeManage.Student.ChangePassword" %>

<%@ Register Src="~/Student/AppBarStudent.ascx" TagName="AppBar" TagPrefix="menu" %>

<%@ Register Src="~/ChangePwd.ascx" TagName="ChangePwd" TagPrefix="menu" %>

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
            <h2><a href="HomePage.aspx" class="nav-button transform"><span></span></a>&nbsp;返回</h2>
            <menu:ChangePwd runat="server" />
        </div>
    </form>
</body>
</html>
