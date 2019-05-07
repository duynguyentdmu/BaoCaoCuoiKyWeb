<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GUI_Web.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <title>Trang chủ | Auto-Garrage</title>
    <link href="css/Home.css" rel="stylesheet" />
    <link href="css/flexslider.css" rel="stylesheet" />
    <link href="css/jquery.fancybox-buttons.css" rel="stylesheet" />
    <link href="css/jquery.fancybox.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="js/jquery.fancybox.js"></script>
    <script type="text/javascript" src="js/jquery.fancybox-media.js"></script>
    <script type="text/javascript" src="js/jquery.fancybox-buttons.js"></script>

    <script>
        $(window).load(function () {
            $('#carousel').flexslider({
                animation: "slide",
                controlNav: false,
                animationLoop: false,
                slideshow: false,
                prevText: "",
                nextText: "",
                itemWidth: 253,
                itemMargin: 1,
                asNavFor: '#flexslider'
            });

            $('#flexslider').flexslider({
                animation: "slide",
                slideshow: true,
                slideshowSpeed: 7000,
                animationDuration: 600,
                prevText: "",
                nextText: "",
                controlNav: false,
                sync: "#carousel"
            })

            $(".fancybox-media").attr('rel', 'media-gallery').fancybox({

                padding: 0,
                openEffect: 'elastic',
                openSpeed: 150,
                closeEffect: 'elastic',
                closeSpeed: 150,
                closeClick: true,
                helpers: {
                    media: {},
                    buttons: {}
                }
            })
                      .append('<span></span>').hover(function () { $(this).find('>img').stop().animate({ opacity: .5 }) }, function () {
                          $(this).find('>img').stop().animate({ opacity: 1 })
                      });
        });
    </script>
    <style type="text/css">
        .imagelist {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="slider">
        <div id="flexslider">
            <ul class="slides">
                <li>
                    <asp:HyperLink ID="HyperLink1" runat="server"></asp:HyperLink>
                    <%--<img alt="" src="img/slide-1.jpg"/>--%>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink2" runat="server"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink3" runat="server"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink4" runat="server"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink5" runat="server"></asp:HyperLink>
                </li>
                <li>h</li>
                <li>h</li>
                <li>h</li>
                <li>h</li>
                <li>h</li>
                <li>h</li>
            </ul>
        </div>
        <div id="carousel" class="flexslider">
            <ul class="slides">
                <li>
                    <asp:Image ID="Image1" runat="server" />
                    <div class="slide-cont">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </div>
                </li>
                <li>
                    <asp:Image ID="Image2" runat="server" />
                    <div class="slide-cont">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </div>
                </li>
                <li>
                    <asp:Image ID="Image3" runat="server" />
                    <div class="slide-cont">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </div>
                </li>
                <li>
                    <asp:Image ID="Image4" runat="server" />
                    <div class="slide-cont">
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </div>
                </li>
                <li>
                    <asp:Image ID="Image5" ImageUrl="img/slide-5.jpg" runat="server" />
                    <div class="slide-cont">
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <!--============================== content =================================-->
    <div class="extra-content">
        <div class="container">
            <div class="row">
                <article class="span4">
                    <div class="box-video">
                        <h3>Video gần đây</h3>
                        <div class="video-item">
                            <figure class="img-polaroid img-polaroid_">
                                <asp:HyperLink CssClass="fancybox-video fancybox-media" ID="linkVideo" runat="server">
                                </asp:HyperLink>
                            </figure>
                            <div class="item-name">
                                &nbsp
                                <asp:Label ID="lblNameVideo" runat="server" Text=""></asp:Label>&nbsp<strong>
                                    <asp:Label ID="lblViews" runat="server" Text=""></asp:Label>
                                    <em>&nbsp&nbsp lượt xem</em></strong>
                            </div>
                            <div class="border-1"></div>
                            <div class="name-author">
                                Được đăng bởi <a href="#" runat="server">
                                    <asp:Label ID="lblAuthor" runat="server" Text=""></asp:Label></a> vào
                                <asp:Label ID="lblDate" runat="server"></asp:Label>
                            </div>
                            <a href="Videos.aspx" class="link">xem thêm</a>
                        </div>
                    </div>
                </article>
                <article class="span4">
                    <h3>Nổi bật</h3>
                    <div class="inner-1">
                        <figure class="img-indent">
                            <asp:HyperLink ID="linkNewest" runat="server"></asp:HyperLink>
                        </figure>
                        <div class="txt-1">
                            <asp:Label ID="lblNewest" runat="server" Text=""></asp:Label>
                        </div>
                        <asp:Label ID="lblDescribe" runat="server" Text=""></asp:Label>
                        <a href="Models.aspx" class="link">xem thêm</a>
                    </div>
                </article>
                <%-- ===========Latest Reviews=========== --%>
                <asp:Repeater ID="repeaterLatestReviews" runat="server">
                    <HeaderTemplate>
                        <article class="span4">
                            <h3>Bài reviews gần đây</h3>
                            <ul class="list-1">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <figure>
                                <asp:Image ID="imglst" CssClass="imagelist" runat="server" ImageUrl='<%# "img/Models/" + Eval("Image") %>' Height="112px" Width="159px" />
                            </figure>
                            <div class="overflow">
                                <asp:Label ID="lblst" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                <a href='<%# "ModelDetail.aspx?idModel="+Eval("IDmodel") %>' class="link">đọc tiếp</a>
                            </div>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                            </ul>
                            <a href="Reviews.aspx" class="link">XEM THÊM</a>
                        </article>
                    </FooterTemplate>
                </asp:Repeater>

<%--                <article class="span4">
                    <h3>Bài reviews gần đây</h3>
                    <ul class="list-1">
                        <li>
                            <figure>
                                <asp:Image ID="imglst1" CssClass="imagelist" runat="server" Height="112px" Width="159px" />
                            </figure>
                            <div class="overflow">
                                <asp:Label ID="lblst1" runat="server"></asp:Label>
                                <a href="#" class="link">đọc tiếp</a>
                            </div>
                        </li>
                        <li>
                            <figure>
                                <asp:Image ID="imglst2" CssClass="imagelist" runat="server" Height="112px" Width="159px" />
                            </figure>
                            <div class="overflow">
                                <asp:Label ID="lblst2" runat="server" Text="Label"></asp:Label>
                                <a href="#" class="link">đọc tiếp</a>
                            </div>
                        </li>
                        <li>
                            <figure>
                                <asp:Image ID="imglst3" CssClass="imagelist" ImageUrl="img/page1-img5.jpg" runat="server" Height="112px" Width="159px" />
                            </figure>
                            <div class="overflow">
                                <asp:Label ID="lblst3" runat="server" Text="Label"></asp:Label>
                                <a href="#" class="link">đọc tiếp</a>
                            </div>
                        </li>
                    </ul>
                    <a href="Reviews.aspx" class="link">XEM THÊM</a>
                </article>
--%>
            </div>
        </div>
    </div>

    <!--============================== aside =================================-->
    <aside>
        <div class="container">
            <h3>Phổ biến</h3>
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <article class="span2">
                            <ul class="list">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink ID="HyperLink6" runat="server" Text='<%# Eval("Name") %>' NavigateUrl='#'></asp:HyperLink>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                                </ul>
                        </article>
                    </FooterTemplate>
                </asp:Repeater>
                <asp:Repeater ID="Repeater2" runat="server">
                    <HeaderTemplate>
                        <article class="span2">
                            <ul class="list">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink ID="HyperLink6" runat="server" Text='<%# Eval("Name") %>' NavigateUrl='#'></asp:HyperLink>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                                </ul>
                        </article>
                    </FooterTemplate>
                </asp:Repeater>
                <asp:Repeater ID="Repeater3" runat="server">
                    <HeaderTemplate>
                        <article class="span2">
                            <ul class="list">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink ID="HyperLink6" runat="server" Text='<%# Eval("Name") %>' NavigateUrl='#'></asp:HyperLink>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                                </ul>
                        </article>
                    </FooterTemplate>
                </asp:Repeater>
                <asp:Repeater ID="Repeater4" runat="server">
                    <HeaderTemplate>
                        <article class="span2">
                            <ul class="list">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink ID="HyperLink6" runat="server" Text='<%# Eval("Name") %>' NavigateUrl='#'></asp:HyperLink>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                                </ul>
                        </article>
                    </FooterTemplate>
                </asp:Repeater>
                <asp:Repeater ID="Repeater5" runat="server">
                    <HeaderTemplate>
                        <article class="span2">
                            <ul class="list">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink ID="HyperLink6" runat="server" Text='<%# Eval("Name") %>' NavigateUrl='#'></asp:HyperLink>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                                </ul>
                        </article>
                    </FooterTemplate>
                </asp:Repeater>
                <asp:Repeater ID="Repeater6" runat="server">
                    <HeaderTemplate>
                        <article class="span2">
                            <ul class="list">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink ID="HyperLink6" runat="server" Text='<%# Eval("Name") %>' NavigateUrl='#'></asp:HyperLink>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                                </ul>
                        </article>
                    </FooterTemplate>
                </asp:Repeater>
            </div>


<%--            <div class="row">
                <article class="span2">
                    <ul class="list">
                        <li><a href="#">Acura</a></li>
                        <li><a href="#">Alfa Romeo</a></li>
                        <li><a href="#">Audi</a></li>
                        <li><a href="#">BMW</a></li>
                        <li><a href="#">Bentley</a></li>
                        <li><a href="#">Cadillac</a></li>
                        <li><a href="#">Caterham</a></li>
                        <li><a href="#">Chevrolet</a></li>
                    </ul>
                </article>
                <article class="span2">
                    <ul class="list">
                        <li><a href="#">Chrysler</a></li>
                        <li><a href="#">Citroen</a></li>
                        <li><a href="#">Dodge</a></li>
                        <li><a href="#">Ferrari</a></li>
                        <li><a href="#">Fiat</a></li>
                        <li><a href="#">Ford</a></li>
                        <li><a href="#">GMC</a></li>
                        <li><a href="#">Honda</a></li>
                    </ul>
                </article>
                <article class="span2">
                    <ul class="list">
                        <li><a href="#">Hummer</a></li>
                        <li><a href="#">Hyundai</a></li>
                        <li><a href="#">Infiniti</a></li>
                        <li><a href="#">Jaguar</a></li>
                        <li><a href="#">Jeep</a></li>
                        <li><a href="#">Lamborghini</a></li>
                        <li><a href="#">Lancia</a></li>
                        <li><a href="#">Land Rover</a></li>
                    </ul>
                </article>
                <article class="span2">
                    <ul class="list">
                        <li><a href="#">Lexus</a></li>
                        <li><a href="#">Opel</a></li>
                        <li><a href="#">Peugeot</a></li>
                        <li><a href="#">Plymouth</a></li>
                        <li><a href="#">Pontiac</a></li>
                        <li><a href="#">Porsche</a></li>
                        <li><a href="#">Renault</a></li>
                        <li><a href="#">Rover</a></li>
                    </ul>
                </article>
                <article class="span2">
                    <ul class="list">
                        <li><a href="#">Saab</a></li>
                        <li><a href="#">Saturn</a></li>
                        <li><a href="#">Scion</a></li>
                        <li><a href="#">Seat</a></li>
                        <li><a href="#">Skoda</a></li>
                        <li><a href="#">Smart</a></li>
                        <li><a href="#">SsangYong</a></li>
                        <li><a href="#">Subaru</a></li>
                    </ul>
                </article>
                <article class="span2">
                    <ul class="list">
                        <li><a href="#">Suzuki</a></li>
                        <li><a href="#">Toyota</a></li>
                        <li><a href="#">Volkswagen</a></li>
                        <li><a href="#">Volvo</a></li>
                    </ul>
                </article>
            </div>--%>
        </div>
    </aside>



    <!--LIVEDEMO_00 (Google Analytics) -->

    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-7078796-5']);
        _gaq.push(['_trackPageview']);
        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();</script>
</asp:Content>
