<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectedCourse.aspx.cs" Inherits="GradeManage.Student.SelectedCourse" %>

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
            <h2 style="text-align:center">已选修课程</h2>
            <br />
            <asp:GridView ID="GridViewSelectedCourse" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="10" PageSize="5" DataKeyNames="Cno" class="table striped hovered cell-hovered border bordered center" Style="text-align: center; width: 60%; margin: auto">
                <Columns>
                    <asp:BoundField DataField="Cno" HeaderText="课程编号" />
                    <asp:BoundField DataField="Cname" HeaderText="课程名称" />
                    <asp:BoundField DataField="Score" HeaderText="分数" />
                </Columns>
            </asp:GridView>
            <br />
            <div style="text-align: center; margin: auto">
                <asp:LinkButton ID="lbAdd" runat="server" PostBackUrl="~/Student/SelCourse.aspx" class="button"><span class="mif-paper-plane"></span>&nbsp;&nbsp;选课</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>
