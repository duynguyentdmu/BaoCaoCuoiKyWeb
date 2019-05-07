<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageUser.ascx.cs" Inherits="GUI_Web.UC.ucManageUser" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;
    }
</style>
<asp:LinkButton ID="lbtnManageUser" runat="server" OnClick="lbtnManageUser_Click">Quản lý tài khoản người dùng</asp:LinkButton>
<div class="auto-style1">
    <asp:GridView ID="gvUser" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="IDuser" OnRowCancelingEdit="gvUser_RowCancelingEdit" OnRowEditing="gvUser_RowEditing" OnRowUpdating="gvUser_RowUpdating" OnRowDeleting="gvUser_RowDeleting" Width="100%" AllowPaging="True" OnPageIndexChanging="gvUser_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Tên tài khoản" />
            <asp:BoundField DataField="Password" HeaderText="Mật khẩu" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Role" HeaderText="Quyền quản trị" />
            <asp:CommandField CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" HeaderText="Chỉnh sửa" InsertText="Thêm" NewText="Tạo mới" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" UpdateText="Lưu lại" ButtonType="Button" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
</div>

