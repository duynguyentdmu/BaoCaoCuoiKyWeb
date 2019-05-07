<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageCategory.ascx.cs" Inherits="GUI_Web.UC.ucManageCategory" %>


<style type="text/css">
    .auto-style12 {
        width: 100%;
    }
    .auto-style23 {
        text-align: center;
    }
    .auto-style24 {
        height: 26px;
    }
</style>


<asp:LinkButton ID="lbtnCategory" runat="server" OnClick="lbtnCategory_Click">Quản lý hãng xe</asp:LinkButton>
<div id="Category" runat="server">
    <asp:LinkButton ID="lbtnAddCategory" runat="server" OnClick="lbtnAddCategory_Click">Thêm mới hãng xe</asp:LinkButton>
    <asp:GridView ID="gvCategory" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="IDcategory" OnRowCancelingEdit="gvCategory_RowCancelingEdit" OnRowDeleting="gvCategory_RowDeleting" OnRowEditing="gvCategory_RowEditing" OnRowUpdating="gvCategory_RowUpdating" AllowPaging="True" OnPageIndexChanging="gvCategory_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Tên hãng xe" />
            <asp:BoundField DataField="Website" HeaderText="Website" />
            <asp:CommandField ButtonType="Button" CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" HeaderText="Chỉnh sửa" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" UpdateText="Lưu lại" />
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
    <div id="AddCategory" runat="server">

        <table class="auto-style12">
            <tr>
                <td class="auto-style23" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="18pt" Text="THÊM MỚI HÃNG XE"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Tên hãng xe:</td>
                <td>
                    <asp:TextBox ID="txtNameCategory" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">Website:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="txtWebsite" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblErrorText" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Lưu lại" />
                    <asp:Button ID="btnCancle" runat="server" OnClick="btnCancle_Click" Text="Hủy bỏ" />
                </td>
            </tr>
        </table>

    </div>
</div>