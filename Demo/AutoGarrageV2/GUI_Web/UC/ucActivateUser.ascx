<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucActivateUser.ascx.cs" Inherits="GUI_Web.UC.ucUserRoleSetting" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;
    }
</style>
<asp:LinkButton ID="lbtnActivateUser" runat="server" OnClick="lbtnActivateUser_Click">Duyệt User</asp:LinkButton>
<div class="auto-style1">

    <asp:GridView ID="gvNewUser" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="IDuser" OnRowCommand="gvNewUser_RowCommand" Width="100%" AllowPaging="True" OnPageIndexChanging="gvNewUser_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Tên tài khoản" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:ButtonField ButtonType="Button" CommandName="cmdAllow" Text="Duyệt" />
            <asp:ButtonField ButtonType="Button" CommandName="cmdNotAllow" Text="Xóa" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

</div>