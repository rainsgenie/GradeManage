<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListCourse.aspx.cs" Inherits="GradeManage.ListCourse" %>

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
                <h2>课程信息</h2>
                <br />
                <asp:GridView ID="GridViewCourse" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="10" PageSize="5" DataSourceID="listCourse" DataKeyNames="Cno" class="table striped hovered cell-hovered border bordered center" Style="width: 60%; margin: auto">
                    <Columns>
                        <asp:BoundField DataField="Cno" HeaderText="课程编号" ReadOnly="true" />
                        <asp:BoundField DataField="Cname" HeaderText="课程名称" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="listCourse" runat="server"
                    ConnectionString="<%$ ConnectionStrings:dbConnStr %>"
                    DeleteCommand="delete from Course where Cno=@Cno"
                    InsertCommand="insert into Course(Cno,Cname) values(@Cno,@Cname)"
                    SelectCommand="select * from Course"
                    UpdateCommand="update Course set Cname=@Cname where Cno=@Cno">
                    <DeleteParameters>
                        <asp:Parameter Name="Cno" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Cno" Type="Int64" />
                        <asp:Parameter Name="Cname" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Cno" Type="Int64" />
                        <asp:Parameter Name="Cname" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:LinkButton ID="lbAdd" runat="server" class="button" PostBackUrl="~/Teacher/AddCourse.aspx"><span class="mif-paper-plane"></span>&nbsp;&nbsp;添加新的课程</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>
