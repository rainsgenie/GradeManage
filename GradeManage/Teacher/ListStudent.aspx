<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListStudent.aspx.cs" Inherits="GradeManage.Teacher.ListStudent" %>

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
                <h2>学生信息</h2>
                <br />
                <asp:GridView ID="GridViewStudent" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="10" PageSize="5" DataSourceID="listStudent" DataKeyNames="Sno" class="table striped hovered cell-hovered border bordered center" Style="width: 60%; margin: auto">
                    <Columns>
                        <asp:BoundField DataField="Sno" HeaderText="学号" ReadOnly="true" />
                        <asp:BoundField DataField="Sname" HeaderText="姓名" />
                        <asp:BoundField DataField="Sex" HeaderText="性别" />
                        <asp:BoundField DataField="Class" HeaderText="班级" />
                        <asp:BoundField DataField="Dept" HeaderText="系别" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="listStudent" runat="server"
                    ConnectionString="<%$ ConnectionStrings:dbConnStr %>"
                    DeleteCommand="delete from Student where Sno=@Sno"
                    InsertCommand="insert into Student(Sno,Sname,Sex,Class,Dept) values(@Sno,@Sname,@Sex,@Class,@Dept)"
                    SelectCommand="select * from Student"
                    UpdateCommand="update Student set Sname=@Sname,Sex=@Sex,Class=@Class,Dept=@Dept where Sno=@Sno">
                    <DeleteParameters>
                        <asp:Parameter Name="Sno" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Sno" Type="Int64" />
                        <asp:Parameter Name="Sname" Type="String" />
                        <asp:Parameter Name="Sex" Type="String" />
                        <asp:Parameter Name="Class" Type="String" />
                        <asp:Parameter Name="Dept" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Sno" Type="Int64" />
                        <asp:Parameter Name="Sname" Type="String" />
                        <asp:Parameter Name="Sex" Type="String" />
                        <asp:Parameter Name="Class" Type="String" />
                        <asp:Parameter Name="Dept" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:LinkButton ID="lbAdd" runat="server" class="button" PostBackUrl="~/Teacher/AddStudent.aspx"><span class="mif-paper-plane"></span>&nbsp;&nbsp;添加新的学生</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>
