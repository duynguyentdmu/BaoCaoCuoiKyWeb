<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucHeader.ascx.cs" Inherits="GUI_Web.UC.ucHeader" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }

    .auto-styleLogin {
        text-align: right;
    }
</style>
<header class="header-extra">
    <div class="navbar navbar_ clearfix">

        <table class="auto-style1">
            <tr>
                <td class="auto-styleLogin">
                    <asp:HyperLink ID="linkLogin" runat="server" NavigateUrl="~/Login.aspx" Text="Đăng nhập"></asp:HyperLink>
                    <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
                    &nbsp;|
                    <asp:HyperLink ID="linkRegister" runat="server" NavigateUrl="~/Register.aspx" Text="Đăng ký"></asp:HyperLink>
                    <asp:LinkButton ID="lbtnLogout" runat="server" OnClick="lbtnLogout_Click">Đăng xuất</asp:LinkButton>
                </td>
            </tr>
        </table>

        <div class="nav-collapse nav-collapse_ collapse clearfix">
            <ul class="nav sf-menu">
                <li id="Home"><a href="Home.aspx">Trang chủ</a></li>
                <li id="About"><a href="About.aspx">Thông tin</a>
                    <ul>
                        <li id="News"><a href="News.aspx">Tin tức</a></li>
                        <li>
                            <asp:HyperLink ID="linkVideos" NavigateUrl="~/Videos.aspx" runat="server">Videos</asp:HyperLink>
                        </li>
                    </ul>
                </li>
                <li>
                    <asp:HyperLink ID="linkReviews" NavigateUrl="~/Reviews.aspx" runat="server">Bài viết</asp:HyperLink>
                </li>
                <li id="Gallery"><a href="Gallery.aspx">Hình ảnh</a></li>
                <li id="Contacts"><a href="Contacts.aspx">Liên hệ</a></li>
                <li id="Admin"><a href="../AdminPage.aspx" id="AdminPage" runat="server">Trang quản trị</a></li>
            </ul>
        </div>
        <h1 class="brand"><a href="Home.aspx">
            <img alt="Auto Garrage" class="logo" src="img/logoAuto-garrage.png"></a></h1>
    </div>
</header>
