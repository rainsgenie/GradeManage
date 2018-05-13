<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListSelCourse.aspx.cs" Inherits="GradeManage.Teacher.ListSelCourse" %>

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
            <h2><a href="HomePage.aspx" class="nav-button transform"><span></span></a>&nbsp;返回</h2>
            <div style="text-align: center">
                <h2>学生选课情况</h2>
                <br />
                <asp:GridView ID="GridViewSelCourse" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="10" PageSize="5" DataSourceID="listSelCourse" DataKeyNames="Sno,Cno" class="table striped hovered cell-hovered border bordered center" Style="width: 60%; margin: auto">
                    <Columns>
                        <asp:BoundField DataField="Sno" HeaderText="学号" ReadOnly="true" />
                        <asp:BoundField DataField="Sname" HeaderText="姓名" ReadOnly="true" />
                        <asp:BoundField DataField="Class" HeaderText="班级" ReadOnly="true" />
                        <asp:BoundField DataField="Cno" HeaderText="课程编号" ReadOnly="true" />
                        <asp:BoundField DataField="Cname" HeaderText="课程名称" ReadOnly="true" />
                        <asp:BoundField DataField="Score" HeaderText="分数" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="listSelCourse" runat="server"
                    ConnectionString="<%$ ConnectionStrings:dbConnStr %>"
                    DeleteCommand="delete from SelectCourse where Sno=@Sno and Cno=@Cno"
                    InsertCommand="insert into SelectCourse(Sno,Cno,Score) values(@Sno,@Cno,@Score)"
                    SelectCommand="select SelectCourse.Sno,Sname,Class,SelectCourse.Cno,Cname,Score from Student,Course,SelectCourse where SelectCourse.Sno=Student.Sno and SelectCourse.Cno=Course.Cno"
                    UpdateCommand="update SelectCourse set Score=@Score where Cno=@Cno and Sno=@Sno">
                    <DeleteParameters>
                        <asp:Parameter Name="Sno" Type="Int64" />
                        <asp:Parameter Name="Cno" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Sno" Type="Int64" />
                        <asp:Parameter Name="Cno" Type="Int64" />
                        <asp:Parameter Name="Score" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Sno" Type="Int64" />
                        <asp:Parameter Name="Cno" Type="Int64" />
                        <asp:Parameter Name="Score" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
