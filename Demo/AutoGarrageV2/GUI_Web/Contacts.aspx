<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="GUI_Web.Contacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <title>Liên hệ | Auto-Garrage</title>
    <link href="css/Contacts.css" rel="stylesheet" />
    <script src="js/forms.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <div class="box-main">
            <div class="container">
                <div class="row">
                    <article class="span6">
                        <h3>Contact Info</h3>
                        <div class="inner-1">
                            <div class="map">
                                <iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;ll=10.980569,106.674739&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
                            </div>
                            <address class="address-1">
                                <strong>Auto Garrage Inc.<br>
                                    Số 6 Trần Văn Ơn, Phú Hòa,<br>
                                    Thủ Dầu Một, Bình Dương.</strong> <span>Freephone:</span>(none)<br>
                                <span>Telephone:</span>+84 589 157189<br>
                                <span>FAX:</span>(none)<br>
                                E-mail: <a href="#" class="mail-1">duynguyen.d15pm02@gmail.com</a><br>
                            </address>
                        </div>
                    </article>
                    <%--                    <article class="span6">
                        <h3>Get in Touch</h3>
                        <div id="contact-form">
                            <div class="success">Contact form submitted! <strong>We will be in touch soon.</strong> </div>
                            <fieldset>
                                <div>
                                    <label class="name">
                                        <input type="text" value="Name:">
                                        <br>
                                        <span class="error">*This is not a valid name.</span> <span class="empty">*This field is required.</span>
                                    </label>
                                </div>
                                <div>
                                    <label class="email">
                                        <input type="email" value="E-mail:">
                                        <br>
                                        <span class="error">*This is not a valid email address.</span> <span class="empty">*This field is required.</span>
                                    </label>
                                </div>
                                <div>
                                    <label class="phone">
                                        <input type="tel" value="Phone:">
                                        <br>
                                        <span class="error">*This is not a valid phone number.</span> <span class="empty">*This field is required.</span>
                                    </label>
                                </div>
                                <div>
                                    <label class="message">
                                        <textarea>Message:</textarea>
                                        <br>
                                        <span class="error">*The message is too short.</span> <span class="empty">*This field is required.</span>
                                    </label>
                                </div>
                                <div class="buttons-wrapper"><a class="link" data-type="reset">clear</a><a class="link" data-type="submit">submit</a></div>
                            </fieldset>
                        </div>
                    </article>--%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
