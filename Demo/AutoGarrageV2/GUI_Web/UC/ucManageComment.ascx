<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageComment.ascx.cs" Inherits="GUI_Web.UC.ucManageComment" %>


<asp:LinkButton ID="lbtnManageComment" runat="server" OnClick="lbtnManageComment_Click">Quản lý Bình luận</asp:LinkButton>
<div>
    <asp:GridView ID="gvComment" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="IDcomment" OnPageIndexChanging="gvComment_PageIndexChanging" OnRowCommand="gvComment_RowCommand">
        <Columns>
            <asp:BoundField DataField="IDreview" HeaderText="IDreview" />
            <asp:BoundField DataField="ContentComment" HeaderText="Nội dung bình luận" />
            <asp:BoundField DataField="DateComment" DataFormatString="{0:d}" HeaderText="Ngày đăng" />
            <asp:BoundField DataField="Username" HeaderText="Người đăng" />
            <asp:BoundField DataField="Status" HeaderText="Tình trạng" />
            <asp:ButtonField ButtonType="Button" CommandName="cmdAllow" Text="Duyệt" />
            <asp:ButtonField ButtonType="Button" CommandName="cmdDel" Text="Xóa" />
        </Columns>
    </asp:GridView>
</div>