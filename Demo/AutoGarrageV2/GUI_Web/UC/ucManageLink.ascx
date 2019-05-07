<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageLink.ascx.cs" Inherits="GUI_Web.UC.ucManageLink" %>


<asp:LinkButton ID="lbtnManageLink" runat="server" OnClick="lbtnManageLink_Click">Quản lý liên kết</asp:LinkButton>
<asp:GridView ID="gvLink" runat="server" AutoGenerateColumns="False" DataKeyNames="IDlink" OnRowCancelingEdit="gvLink_RowCancelingEdit" OnRowEditing="gvLink_RowEditing" OnRowUpdating="gvLink_RowUpdating">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Liên kết" />
        <asp:BoundField DataField="URL" HeaderText="Địa chỉ" />
        <asp:CommandField CancelText="Hủy bỏ" EditText="Chỉnh sửa" ShowEditButton="True" UpdateText="Lưu lại" />
    </Columns>
</asp:GridView>
