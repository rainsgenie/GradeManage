<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChangePwd.ascx.cs" Inherits="GradeManage.ChangePwd1" %>
<div style="text-align:center">
    <h2>修改您的密码</h2>
    <br />
    当前密码&nbsp;&nbsp;
    <div class="input-control password" data-role="input">
        <asp:TextBox ID="tbOldPwd" runat="server"></asp:TextBox>
        <button class="button helper-button reveal"><span class="mif-looks"></span></button>
    </div>
    <br />
    <br />

    新的密码&nbsp;&nbsp;
    <div class="input-control password" data-role="input">
        <asp:TextBox ID="tbNewPwd" runat="server" TextMode="Password"></asp:TextBox>
        <button class="button helper-button reveal"><span class="mif-looks"></span></button>
    </div>
    <br />
    <br />

    确认密码&nbsp;&nbsp;
    <div class="input-control password" data-role="input">
        <asp:TextBox ID="tbConfirmNewPwd" runat="server" TextMode="Password"></asp:TextBox>
        <button class="button helper-button reveal"><span class="mif-looks"></span></button>
    </div>
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="确定" OnClick="btnSubmit_Click" />
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="取消" />
</div>
