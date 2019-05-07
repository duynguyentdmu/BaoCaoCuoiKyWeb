<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="GUI_Web.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <title>Tin tức | Auto-Garrage</title>
    <link href="css/News.css" rel="stylesheet" />
    <link href="css/touchTouch.css" rel="stylesheet" />
    <script type="text/javascript" src="js/touchTouch.jquery.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <div class="box-main">
            <div class="container">
                <h3>our news</h3>
                <div class="row">
                    <article class="span4">
                        <ul class="list-1 news">
                            <li>
                                <figure>
                                    <img src="img/page3-img1.jpg " alt="" /></figure>
                                <div class="overflow">
                                    <time datetime="2013-01-12" class="date-1">January 12, 2013</time>
                                    <span>Vestibulum iaculis 
                lacinia est</span> <a href="#" class="link">read more</a>
                                </div>
                            </li>
                            <li>
                                <figure>
                                    <img src="img/page3-img2.jpg " alt="" /></figure>
                                <div class="overflow">
                                    <time datetime="2013-01-11" class="date-1">January 11, 2013</time>
                                    <span>Fusce euismod consequat ante</span> <a href="#" class="link">read more</a>
                                </div>
                            </li>
                            <li>
                                <figure>
                                    <img src="img/page3-img3.jpg " alt="" /></figure>
                                <div class="overflow">
                                    <time datetime="2013-01-12" class="date-1">January 12, 2013</time>
                                    <span>Aston Martin Dragon 88
                Limited Edition</span> <a href="#" class="link">read more</a>
                                </div>
                            </li>
                        </ul>
                    </article>
                    <article class="span4">
                        <ul class="list-1 news">
                            <li>
                                <figure>
                                    <img src="img/page3-img4.jpg " alt="" /></figure>
                                <div class="overflow">
                                    <time datetime="2013-01-10" class="date-1">January 10, 2013</time>
                                    <span>Aliquam congue fermen
                tum nisl</span> <a href="#" class="link">read more</a>
                                </div>
                            </li>
                            <li>
                                <figure>
                                    <img src="img/page3-img5.jpg " alt="" /></figure>
                                <div class="overflow">
                                    <time datetime="2013-01-11" class="date-1">January 11, 2013</time>
                                    <span>Aliquam dapibus tincidunt </span><a href="#" class="link">read more</a>
                                </div>
                            </li>
                            <li>
                                <figure>
                                    <img src="img/page3-img6.jpg " alt="" /></figure>
                                <div class="overflow">
                                    <time datetime="2013-01-12" class="date-1">January 12, 2013</time>
                                    <span>Proin dictum elemen tum </span><a href="#" class="link">read more</a>
                                </div>
                            </li>
                        </ul>
                    </article>
                    <article class="span4">
                        <ul class="list-1 news">
                            <li>
                                <figure>
                                    <img src="img/page3-img7.jpg " alt="" /></figure>
                                <div class="overflow">
                                    <time datetime="2013-01-12" class="date-1">January 12, 2013</time>
                                    <span>Vestibulum sed ante
                Donec sagittis euismod purus</span> <a href="#" class="link">read more</a>
                                </div>
                            </li>
                            <li>
                                <figure>
                                    <img src="img/page3-img8.jpg " alt="" /></figure>
                                <div class="overflow">
                                    <time datetime="2013-01-22" class="date-1">January 22, 2013</time>
                                    <span>Vestibulum sed ante </span><a href="#" class="link">read more</a>
                                </div>
                            </li>
                            <li>
                                <figure>
                                    <img src="img/page3-img9.jpg " alt="" /></figure>
                                <div class="overflow">
                                    <time datetime="2013-01-24" class="date-1">January 24, 2013</time>
                                    <span>Nulla venenatis
                In pede mi, aliquet sit </span><a href="#" class="link">read more</a>
                                </div>
                            </li>
                        </ul>
                    </article>
                </div>
                <div class="row p">
                    <article class="span8">
                        <h3>upcoming events</h3>
                        <div class="row events">
                            <article class="span4">
                                <div class="inner-1 overflow">
                                    <figure class="img-indent">
                                        <img src="img/page3-img10.jpg " alt="" /></figure>
                                    <div class="txt-1">
                                        Lorem ipsum dolor sit amet consectetuer adipiscin
                  elit. Praesennsectetuer adipiscing elit
                                    </div>
                                    <p>Fusce feugiat malesuada odio. Morbi nudio gravida atcursus nec uctus a lorem. Maecenas trtiue orci ac sem. Duis ultricies pharetra man.</p>
                                    <a href="#" class="link">read more</a>
                                </div>
                            </article>
                            <article class="span4">
                                <div class="inner-1 overflow">
                                    <figure class="img-indent">
                                        <img src="img/page3-img11.jpg " alt="" /></figure>
                                    <div class="txt-1">
                                        Lorem ipsum dolor sit amet consectetuer adipiscin
                  elit. Praesennsectetuer adipiscing elit
                                    </div>
                                    <p>Fusce feugiat malesuada odio. Morbi nudio gravida atcursus nec uctus a lorem. Maecenas trtiue orci ac sem. Duis ultricies pharetra man.</p>
                                    <a href="#" class="link">read more</a>
                                </div>
                            </article>
                        </div>
                    </article>
                    <article class="span2">
                        <h3>archive</h3>
                        <ul class="list">
                            <li><a href="#">January 2012</a></li>
                            <li><a href="#">December 2012</a></li>
                            <li><a href="#">November 2012</a></li>
                            <li><a href="#">October 2012</a></li>
                            <li><a href="#">September 2012</a></li>
                            <li><a href="#">August 2012</a></li>
                            <li><a href="#">June 2012</a></li>
                            <li><a href="#">July 2012</a></li>
                            <li><a href="#">May 2012</a></li>
                        </ul>
                    </article>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
