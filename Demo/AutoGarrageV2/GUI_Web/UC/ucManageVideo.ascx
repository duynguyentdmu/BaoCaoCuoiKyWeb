<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageVideo.ascx.cs" Inherits="GUI_Web.UC.ucManageVideo" %>


<style type="text/css">
    .auto-style1 {
        width: 100%;
        text-align:left;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        height: 26px;
        text-align: left;
    }
    .auto-style4 {
        height: 26px;
        text-align: right;
        width: 452px;
    }
    .auto-style5 {
        text-align: right;
        width: 452px;
    }
    .auto-style6 {
        width: 452px;
    }
</style>


<asp:LinkButton ID="lbtnManageVideo" runat="server" OnClick="lbtnManageVideo_Click">Quản lý Video</asp:LinkButton>
<div id="ManageVideo" runat="server">
    <asp:LinkButton ID="lbtnAddVideo" runat="server" OnClick="lbtnAddVideo_Click">Thêm Video</asp:LinkButton>
    <asp:GridView ID="gvVideo" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnPageIndexChanging="gvVideo_PageIndexChanging" DataKeyNames="IDvideo" OnRowDeleting="gvVideo_RowDeleting">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Tên" />
            <asp:BoundField DataField="URL" HeaderText="Địa chỉ" />
            <asp:BoundField DataField="Author" HeaderText="Đăng bởi" />
            <asp:BoundField DataField="Date" HeaderText="Ngày đăng" DataFormatString="{0:d}" />
            <asp:CommandField DeleteText="Xóa" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <div id="AddVideo" runat="server">

        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Size="18pt" Text="Thêm Video"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Tên:&nbsp&nbsp</td>
                <td>
                    <asp:TextBox ID="txtNameVideo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Địa chỉ:&nbsp&nbsp</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtURL" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:CheckBox ID="chkbModel" runat="server" Text="Mẫu xe:" Height="27px" AutoPostBack="true" OnCheckedChanged="chkbModel_CheckedChanged"/>&nbsp&nbsp
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="cbbModel" runat="server" Height="28px" Width="286px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:Label ID="lblErrorText" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Lưu lại" Width="113px" OnClick="btnSave_Click" />
                    <asp:Button ID="btnCancle" runat="server" OnClick="btnCancle_Click" Text="Hủy bỏ" />
                </td>
            </tr>
        </table>

    </div>
</div>