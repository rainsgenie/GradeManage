<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="GradeManage.AddCourse" %>

<%@ Register Src="~/Teacher/AppBarTeacher.ascx" TagName="AppBar" TagPrefix="menu" %>

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
            <h2><a href="ListCourse.aspx" class="nav-button transform"><span></span></a>&nbsp;返回</h2>
            <div style="text-align: center">
                <h2>添加新的课程</h2>
                <br />
                课程号&nbsp;&nbsp;
                <div class="input-control text" data-role="input">
                    <asp:TextBox ID="tbCno" runat="server"></asp:TextBox>
                    <button class="button helper-button clear"><span class="mif-cross"></span></button>
                </div>
                <br />
                <br />
                课程名&nbsp;&nbsp;
                <div class="input-control text" data-role="input">
                    <asp:TextBox ID="tbCname" runat="server"></asp:TextBox>
                    <button class="button helper-button clear"><span class="mif-cross"></span></button>
                </div>
                <br />
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="确定" OnClick="btnSubmit_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="取消" OnClick="btnCancel_Click" />
            </div>
        </div>
    </form>
</body>
</html>
