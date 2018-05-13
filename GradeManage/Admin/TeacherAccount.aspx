<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherAccount.aspx.cs" Inherits="GradeManage.Admin.TeacherAccount" %>

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
            <h2><a href="HomePage.aspx" class="nav-button transform"><span></span></a>&nbsp;返回</h2>
            <div style="text-align: center">
                <h2>教师账号管理</h2>
                <br />
                <asp:GridView ID="GridViewTeacherAccount" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="10" PageSize="5" DataSourceID="listTeacherAccount" DataKeyNames="Mno" class="table striped hovered cell-hovered border bordered center" Style="text-align: center; width: 60%; margin: auto">
                    <Columns>
                        <asp:BoundField DataField="Mno" HeaderText="编号" ReadOnly="true" />
                        <asp:BoundField DataField="Mname" HeaderText="姓名" />
                        <asp:BoundField DataField="Mpwd" HeaderText="密码" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="listTeacherAccount" runat="server"
                    ConnectionString="<%$ ConnectionStrings:dbConnStr %>"
                    DeleteCommand="delete from Manager where Mno=@Mno"
                    InsertCommand="insert into Manager(Mno,Mname,Mpwd,UserType) values(@Mno,@Mname,@Mpwd,'Teacher')"
                    SelectCommand="select * from Manager where Mno!=10000"
                    UpdateCommand="update Manager set Mname=@Mname,Mpwd=@Mpwd,UserType='Teacher' where Mno=@Mno">
                    <DeleteParameters>
                        <asp:Parameter Name="Mno" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Mno" Type="String" />
                        <asp:Parameter Name="Mname" Type="String" />
                        <asp:Parameter Name="Mpwd" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Mno" Type="String" />
                        <asp:Parameter Name="Mname" Type="String" />
                        <asp:Parameter Name="Mpwd" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:LinkButton ID="lbAdd" runat="server" class="button" PostBackUrl="~/Admin/AddTeacherAccount.aspx"><span class="icon mif-user-plus"></span>&nbsp;&nbsp;添加新的教师账号</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>
