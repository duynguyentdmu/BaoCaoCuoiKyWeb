<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="GUI_Web.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <title>Hình ảnh | Auto-Garrage</title>
    <link href="css/Gallery.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pagination-centered">
    <asp:DataList ID="dlImage" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="197px" Width="349px" ImageUrl='<%# "~/img/Models/"+Eval("Image") %>' />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/img/Models/"+Eval("Image") %>' Text='<%# Eval("Image") %>'></asp:HyperLink>
        </ItemTemplate>
    </asp:DataList>
    </div>
</asp:Content>
