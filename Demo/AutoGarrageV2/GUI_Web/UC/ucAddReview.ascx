<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucAddReview.ascx.cs" Inherits="GUI_Web.UC.ucAddReview" %>


<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
        text-align:left;
    }
    .auto-style23 {
        height: 26px;
        text-align:left;
    }
    .auto-style24 {
        width: 100%;
    }
    .auto-style25 {
        text-align: center;
    }
</style>


<asp:LinkButton ID="lbtnAddReview" runat="server" OnClick="lbtnAddReview_Click">Thêm bài Review</asp:LinkButton>
<div id="AddReview" runat="server">

    <table class="auto-style1">
        <tr>
            <td>Hãng xe:</td>
            <td>
                <asp:DropDownList ID="cbbCategory" AutoPostBack="true" runat="server" Height="28px" Width="147px" OnSelectedIndexChanged="cbbCategory_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">Mẫu xe:</td>
            <td class="auto-style23">
                <asp:DropDownList ID="cbbNameModel" runat="server" Height="28px" Width="180px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Nội dung:</td>
            <td>
                <CKEditor:CKEditorControl ID="txtContent" runat="server">
                </CKEditor:CKEditorControl>
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
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Lưu" Width="118px" />
            </td>
        </tr>
    </table>
    <asp:LinkButton ID="lbtnManageReview" runat="server" OnClick="lbtnManageReview_Click">Quản lý bài review</asp:LinkButton>
</div>
<div id="ManageReview" runat="server">
    <asp:GridView ID="gvReview" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDreviews" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gvReview_PageIndexChanging" OnRowCommand="gvReview_RowCommand">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Tên bài review" />
            <asp:BoundField DataField="DatePost" HeaderText="Ngày đăng" />
            <asp:BoundField DataField="Author" HeaderText="Người đăng" />
            <asp:ButtonField CommandName="cmdEdit" Text="Sửa" />
            <asp:ButtonField CommandName="cmdDel" Text="Xóa" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <div id="EditReview" runat="server">


        <table class="auto-style24">
            <tr>
                <td class="auto-style25">
                    <asp:Label ID="lblNameEdit" runat="server" Font-Size="18pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <CKEditor:CKEditorControl ID="txtEditContent" runat="server"></CKEditor:CKEditorControl>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:Label ID="lblErrorEdit" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:Button ID="btnSaveEdit" runat="server" OnClick="btnSaveEdit_Click" Text="Lưu lại" Width="82px" />
                    <asp:Button ID="btnCancleEdit" runat="server" OnClick="btnCancleEdit_Click" Text="Hủy bỏ" />
                </td>
            </tr>
        </table>


    </div>
</div>