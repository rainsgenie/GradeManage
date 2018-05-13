<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelCourse.aspx.cs" Inherits="GradeManage.Student.SelCourse" %>

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
            <h2><a href="SelectedCourse.aspx" class="nav-button transform"><span></span></a>&nbsp;返回</h2>
            <h2 style="text-align:center">选课</h2>
            <br />
            <asp:GridView ID="GridViewSelCourse" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="10" PageSize="5" OnPageIndexChanging="GridViewSelCourse_PageIndexChanging" OnRowEditing="GridViewSelCourse_RowEditing" class="table striped hovered cell-hovered border bordered center" Style="text-align: center; width: 60%; margin: auto">
                <Columns>
                    <asp:BoundField DataField="Cno" HeaderText="课程号" />
                    <asp:BoundField DataField="Cname" HeaderText="课程名" />
                    <asp:CommandField ShowEditButton="true" EditText="选修" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
