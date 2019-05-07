<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucAddModel.ascx.cs" Inherits="GUI_Web.UC.ucAddModel" %>


<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>

<style type="text/css">
    .auto-style1 {
        width: 100%;
        text-align:left;
    }
    .auto-style32 {
        text-align: center;
    }
    .auto-style33 {
        text-align: left;
    }
</style>


<asp:LinkButton ID="lbtnAddModel" runat="server" OnClick="lbtnAddModel_Click">Thêm mẫu xe</asp:LinkButton>
<div id="AddModel" runat="server">

    <table class="auto-style1">
        <tr>
            <td>Loại xe:</td>
            <td>
                <asp:DropDownList ID="cbbCategory" runat="server" Height="28px" Width="130px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Tên mẫu xe:</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" required="true"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mô tả:</td>
            <td>
                <CKEditor:CKEditorControl ID="txtDescribe" runat="server" required="true">
                </CKEditor:CKEditorControl>
            </td>
        </tr>
        <tr>
            <td>Hình minh họa:</td>
            <td>
                <asp:FileUpload ID="uploadImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblErrorText" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style32" colspan="2">
                <asp:Button ID="btnSave" runat="server" Text="Lưu" Width="129px" OnClick="btnSave_Click" />
            </td>
        </tr>
    </table>
    <asp:LinkButton ID="lbtnManageModel" runat="server" OnClick="lbtnManageModel_Click">Quản lý mẫu xe</asp:LinkButton>
</div>
<div id="ManageModel" runat="server" class="auto-style33">
    <asp:GridView ID="gvModel" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDmodel" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gvModel_PageIndexChanging" OnRowCommand="gvModel_RowCommand" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Tên mẫu xe" />
            <asp:BoundField DataField="NameCategory" HeaderText="Hãng xe" />
            <asp:BoundField DataField="Image" HeaderText="Ảnh minh họa" />
            <asp:ButtonField CommandName="cmdEdit" Text="Sửa" />
            <asp:ButtonField CommandName="cmdDel" Text="Xóa" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <div id="EditModel" runat="server">
        <table class="auto-style1">
        <tr>
            <td>Loại xe:</td>
            <td>
                <asp:DropDownList ID="cbbEditCategory" runat="server" Height="28px" Width="130px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Tên mẫu xe:</td>
            <td>
                <asp:TextBox ID="txtEditModelName" runat="server" required="true"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mô tả:</td>
            <td>
                <CKEditor:CKEditorControl ID="txtEditDescribe" runat="server"></CKEditor:CKEditorControl>
            </td>
        </tr>
        <tr>
            <td>Hình minh họa:</td>
            <td>
                <asp:FileUpload ID="uploadEditImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblErrorEdit" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style32" colspan="2">
                <asp:Button ID="btnSaveChange" runat="server" Text="Lưu" Width="129px" OnClick="btnSaveChange_Click" />
                <asp:Button ID="btnEditCancle" runat="server" OnClick="btnEditCancle_Click" Text="Hủy bỏ" Width="123px" />
            </td>
        </tr>
    </table>
    </div>
</div>
