<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GUI_Web.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <style type="text/css">
        .tableLogin {
            outline: auto;
            width: 40%;
            margin-top: 30px;
            margin-left: auto;
            margin-right: auto;
        }

        .auto-style3 {
            text-align: center;
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tableLogin">
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:label id="Label1" runat="server" font-size="24pt" forecolor="White" text="Đăng ký"></asp:label>
            </td>
        </tr>
        <tr class="mail-1">
            <td class="pagination-right">Tên đăng nhập:&nbsp; </td>
            <td>
                <asp:textbox id="txtUsername" runat="server"></asp:textbox>
            </td>
        </tr>
        <tr class="mail-1">
            <td class="pagination-right">Email:&nbsp; </td>
            <td>
                <input id="txtEmail" type="email" required="required" runat="server" />
            </td>
        </tr>
        <tr class="mail-1">
            <td class="pagination-right">Mật khẩu:&nbsp; </td>
            <td>
                <input id="txtPassword" type="password" runat="server" /></td>
        </tr>
        <tr class="mail-1">
            <td class="pagination-right">Nhập lại mật khẩu:&nbsp; </td>
            <td>
                <input id="txtPassword2" type="password" runat="server" /></td>
        </tr>
        <tr class="mail-1">
            <td class="pagination-right">&nbsp;</td>
            <td>
                <asp:button id="btnRegister" runat="server" text="Đăng ký" OnClick="btnRegister_Click" />
            </td>
        </tr>
        <tr class="mail-1">
            <td>&nbsp;</td>
            <td>
                Đã có tài khoản?
                <asp:hyperlink id="linkForgetPass" runat="server" navigateurl="~\Login.aspx"> Đăng nhập tại đây.</asp:hyperlink>
            </td>
        </tr>
        <tr class="mail-1">
            <td>&nbsp;</td>
            <td>
                <asp:label id="lblErrorText" runat="server" forecolor="Red"></asp:label>
            </td>
        </tr>
    </table>
</asp:Content>
