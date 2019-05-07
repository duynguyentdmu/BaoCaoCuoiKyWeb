<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ModelDetail.aspx.cs" Inherits="GUI_Web.ModelDetail" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <style type="text/css">
        .Review {
            margin-top:20px;
            margin-left:auto;
            margin-right:auto;
            width:80%;
        }
        .Content {
            margin-left:auto;
            margin-right:auto;
        }
        .auto-style2 {
            text-align: justify;
        }
        .auto-style3 {
            width: 198px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Review">
        <h1><asp:Label ID="lblTitle" runat="server" Text="" Font-Size="35pt" ForeColor="#FFFF66"></asp:Label><br /></h1>
        <br />
        <p>
            <asp:Label ID="lblDescribe" runat="server" Text=""></asp:Label>
        </p>
        <div class="auto-style2" id="content" runat="server">
            <asp:Image ID="imgReview" runat="server" />
            <br /><br />
            <asp:Label ID="lblContent" runat="server" Text="Content" ForeColor="White"></asp:Label>
        </div><br />
        <div id="Comment" runat="server">
            <h1>Bình luận</h1>
            <asp:TextBox ID="txtComment" TextMode="MultiLine" MaxLength="200" Placeholder="Nhập bình luận của bạn vào đây!" runat="server" Height="201px" Width="100%"></asp:TextBox>

            <table class="auto-style1">
                <tr>
                    <td class="pagination-right">
                        <asp:Button ID="btnComment" runat="server" OnClick="btnComment_Click" Text="Bình luận" />
                    </td>
                </tr>
            </table>
            <asp:DataList ID="dlComment" runat="server" RepeatLayout="Flow" Width="100%">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="lblAuthor" runat="server" Font-Size="14pt" Text='<%# Eval("Username") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblDate" runat="server" Text='<%# Eval("DateComment") %>'></asp:Label>
                                <br />
                                <asp:Label ID="lblContent" runat="server" Font-Size="12pt" ForeColor="White" Text='<%# Eval("ContentComment") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
