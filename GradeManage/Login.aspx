<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GradeManage.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link href="css/metro.css" rel="stylesheet" />
    <link href="css/metro-icons.css" rel="stylesheet" />

    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/metro.js"></script>

</head>
<body>
    <br />
    <br />
    <h2 style="text-align: center"><b>学生成绩管理系统</b></h2>
    <br />
    <form id="form1" runat="server">
        <div class="container" style="text-align: center">
            <hr />
            <br />
            <br />
            账号&nbsp;&nbsp;
            <!-- Input with clear helper -->
            <div class="input-control text" data-role="input">
                <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
                <button class="button helper-button clear"><span class="mif-cross"></span></button>
            </div>
            <br />
            <br />
            密码&nbsp;&nbsp;
            <!-- Input with reveal helper -->
            <div class="input-control password" data-role="input">
                <asp:TextBox ID="tbPwd" runat="server" TextMode="Password"></asp:TextBox>
                <button class="button helper-button reveal"><span class="mif-looks"></span></button>
            </div>
            <br />
            <br />
            <!-- Radio button -->
            <label class="input-control radio">
                <asp:RadioButton ID="rbAdmin" runat="server" GroupName="userType" />
                <span class="check"></span>
                <span class="caption">管理员</span>
            </label>
            <label class="input-control radio">
                <asp:RadioButton ID="rbTeacher" runat="server" GroupName="userType" />
                <span class="check"></span>
                <span class="caption">教师</span>
            </label>
            <label class="input-control radio">
                <asp:RadioButton ID="rbStudent" runat="server" GroupName="userType" />
                <span class="check"></span>
                <span class="caption">学生</span>
            </label>
            <br />
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="登陆" OnClick="btnLogin_Click"></asp:Button>
        </div>
    </form>
</body>
</html>
