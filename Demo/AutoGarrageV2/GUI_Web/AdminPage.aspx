<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="GUI_Web.AdminPage" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>





<%@ Register Src="~/UC/ucManageUser.ascx" TagPrefix="uc1" TagName="ucManageUser" %>
<%@ Register Src="~/UC/ucActivateUser.ascx" TagPrefix="uc1" TagName="ucActivateUser" %>
<%@ Register Src="~/UC/ucAddModel.ascx" TagPrefix="uc1" TagName="ucAddModel" %>
<%@ Register Src="~/UC/ucAddReview.ascx" TagPrefix="uc1" TagName="ucAddReview" %>
<%@ Register Src="~/UC/ucManageCategory.ascx" TagPrefix="uc1" TagName="ucManageCategory" %>
<%@ Register Src="~/UC/ucManageVideo.ascx" TagPrefix="uc1" TagName="ucManageVideo" %>
<%@ Register Src="~/UC/ucManageLink.ascx" TagPrefix="uc1" TagName="ucManageLink" %>
<%@ Register Src="~/UC/ucManageComment.ascx" TagPrefix="uc1" TagName="ucManageComment" %>










<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <title>Trang quản trị | Auto Garrage</title>
    <link href="css/AdminPage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul style="list-style: decimal;">
        <li id="ManageUser" runat="server">
            <uc1:ucManageUser runat="server" id="ucManageUser" />
        </li>
        <li id="ActivateUser" runat="server">
            <uc1:ucActivateUser runat="server" ID="ucActivateUser" />
        </li>
        <li id="ManageCategory" runat="server">
            <uc1:ucManageCategory runat="server" id="ucManageCategory" />
        </li>
        <li>
            <uc1:ucAddModel runat="server" ID="ucAddModel" />
        </li>
        <li>
            <uc1:ucAddReview runat="server" id="ucAddReview" />            
        </li>
        <li>
            <uc1:ucManageVideo runat="server" id="ucManageVideo" />
        </li>
        <li id="ManageComment" runat="server">
            <uc1:ucManageComment runat="server" id="ucManageComment" />
        </li>
        <li id="ManageLink" runat="server">
            <uc1:ucManageLink runat="server" id="ucManageLink" />
        </li>
    </ul>
</asp:Content>
