<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GUI_Web.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <style type="text/css">
        .tableLogin{
            outline:auto;
            width:40%;
            margin-top:30px;
            margin-left:auto;
            margin-right:auto;
            
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
                <asp:Label ID="Label1" runat="server" Font-Size="24pt" ForeColor="White" Text="Đăng nhập"></asp:Label>
            </td>
        </tr>
        <tr class="mail-1">
            <td class="pagination-right">Tên đăng nhập:&nbsp; </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="mail-1">
            <td class="pagination-right">Mật khẩu:&nbsp; </td>
            <td>
                <input id="txtPassword" type="password" runat="server"/></td>
        </tr>
        <tr class="mail-1">
            <td class="pagination-right">&nbsp;</td>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" OnClick="btnLogin_Click" />
            </td>
        </tr>
        <tr class="mail-1">
            <td>&nbsp;</td>
            <td>
                <asp:HyperLink ID="linkForgetPass" runat="server" NavigateUrl="~\ForgetPassword.aspx">Quên mật khẩu</asp:HyperLink>
            </td>
        </tr>
        <tr class="mail-1">
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblErrorText" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    
</asp:Content>
