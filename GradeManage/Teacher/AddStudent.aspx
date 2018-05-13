<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="GradeManage.Teacher.AddStudent" %>

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
            <h2><a href="ListStudent.aspx" class="nav-button transform"><span></span></a>&nbsp;返回</h2>
            <div style="text-align: center">
                <h2>添加新的学生</h2>
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
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="确定" OnClick="btnSubmit_Click" />
                &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Text="清空" OnClick="btnClear_Click" />
                &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnBack" runat="server" Text="返回" OnClick="btnBack_Click" />
            </div>
        </div>
    </form>
</body>
</html>
