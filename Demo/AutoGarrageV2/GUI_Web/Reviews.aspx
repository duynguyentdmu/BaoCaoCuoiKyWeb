<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="GUI_Web.Reviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 225px;
        }
        .auto-style4 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="datalstModel" runat="server">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style3" rowspan="2">
                        <asp:Image ID="Image1" runat="server" Height="123px" Width="185px" ImageUrl='<%# "/img/Models/" + Eval("Image") %>' />
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="18pt" ForeColor="White" NavigateUrl='<%# "ModelDetail.aspx?idModel="+Eval("IDmodel") %>' Text='<%# Eval("Name") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Describe") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    
</asp:Content>
