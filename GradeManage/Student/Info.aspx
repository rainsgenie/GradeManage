<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="GradeManage.Student.Info" %>

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
            <h2><a href="HomePage.aspx" class="nav-button transform"><span></span></a>&nbsp;返回</h2>
            <table class="table striped hovered cell-hovered border bordered center" style="text-align: center; width: 60%;margin:auto">
                <tr>
                    <td colspan="2">
                        <h2>个人信息</h2>
                    </td>
                </tr>
                <tr>
                    <td>学号</td>
                    <td>
                        <asp:Label ID="lbSno" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>姓名</td>
                    <td>
                        <asp:Label ID="lbSname" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>性别</td>
                    <td>
                        <asp:Label ID="lbSex" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>班级</td>
                    <td>
                        <asp:Label ID="lbClass" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>系别</td>
                    <td>
                        <asp:Label ID="lbDept" runat="server" Text=""></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
