<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="GUI_Web.ForgetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
            height: 40px;
        }
        .auto-style4 {
            color: #ffffff;
            text-align: center;
        }
        .table1{
            outline:auto;
            width:30%;
            margin-top:40px;
            margin-right:auto;
            margin-left:auto;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table1">
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Size="24pt" ForeColor="White" Text="ĐỔI MẬT KHẨU"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="mail-1">Tên đăng nhập:</td>
            <td class="pagination-centered">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="mail-1">Email:</td>
            <td class="pagination-centered">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="mail-1">Mật khẩu mới</td>
            <td class="pagination-centered">
                <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="mail-1">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="lbErrorText" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">
                <asp:Button ID="btnAgree" runat="server" Text="Đồng ý" OnClick="btnAgree_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
