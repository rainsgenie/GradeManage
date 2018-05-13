<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTeacherAccount.aspx.cs" Inherits="GradeManage.Admin.AddTeacherAccount" %>

<%@ Register Src="~/Admin/AppBarAdmin.ascx" TagName="AppBar" TagPrefix="menu" %>

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
            <h2><a href="TeacherAccount.aspx" class="nav-button transform"><span></span></a>&nbsp;返回</h2>
            <div style="text-align: center">
                <h2>添加教师账号</h2>
                <br />
                编号&nbsp;&nbsp;
                <div class="input-control text" data-role="input">
                    <asp:TextBox ID="tbMno" runat="server"></asp:TextBox>
                    <button class="button helper-button clear"><span class="mif-cross"></span></button>
                </div>
                <br />
                姓名&nbsp;&nbsp;
                <div class="input-control text" data-role="input">
                    <asp:TextBox ID="tbMname" runat="server"></asp:TextBox>
                    <button class="button helper-button clear"><span class="mif-cross"></span></button>
                </div>
                <br />
                密码&nbsp;&nbsp;
                <div class="input-control password" data-role="input">
                    <asp:TextBox ID="tbMpwd" runat="server" TextMode="Password"></asp:TextBox>
                    <button class="button helper-button reveal"><span class="mif-looks"></span></button>
                </div>
                <br />
                类型&nbsp;&nbsp;
                <div class="input-control text" data-role="input">
                    <asp:TextBox ID="tbUserType" runat="server" Enabled="false">Teacher</asp:TextBox>
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
