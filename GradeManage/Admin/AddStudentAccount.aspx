<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudentAccount.aspx.cs" Inherits="GradeManage.Admin.AddStudentAccount" %>

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
            <h2><a href="StudentAccount.aspx" class="nav-button transform"><span></span></a>&nbsp;返回</h2>
            <div style="text-align: center">
                <h2>添加学生账号</h2>
                <br />
                学号&nbsp;&nbsp;
            <div class="input-control text" data-role="input">
                <asp:TextBox ID="tbSno" runat="server"></asp:TextBox>
                <button class="button helper-button clear"><span class="mif-cross"></span></button>
            </div>
                <br />
                姓名&nbsp;&nbsp;
            <div class="input-control text" data-role="input">
                <asp:TextBox ID="tbSname" runat="server"></asp:TextBox>
                <button class="button helper-button clear"><span class="mif-cross"></span></button>
            </div>
                <br />
                性别&nbsp;&nbsp;
            <div class="input-control text" data-role="input">
                <asp:TextBox ID="tbSex" runat="server"></asp:TextBox>
                <button class="button helper-button clear"><span class="mif-cross"></span></button>
            </div>
                <br />
                班级&nbsp;&nbsp;
            <div class="input-control text" data-role="input">
                <asp:TextBox ID="tbClass" runat="server"></asp:TextBox>
                <button class="button helper-button clear"><span class="mif-cross"></span></button>
            </div>
                <br />
                系别&nbsp;&nbsp;
            <div class="input-control text" data-role="input">
                <asp:TextBox ID="tbDept" runat="server"></asp:TextBox>
                <button class="button helper-button clear"><span class="mif-cross"></span></button>
            </div>
                <br />
                密码&nbsp;&nbsp;
                <div class="input-control password" data-role="input">
                    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <button class="button helper-button reveal"><span class="mif-looks"></span></button>
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
