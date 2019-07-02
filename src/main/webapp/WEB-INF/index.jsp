<!DOCTYPE html>
<html lang="en">
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/bootstrap-hover-dropdown.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/front.js"></script>


<!-- *** SCRIPTS TO INCLUDE ***
_________________________________________________________ -->
<script src="/jQuery-Autocomplete-master/scripts/jquery-2.1.1.js"></script>
<script src="jQuery-Autocomplete-master/src/jquery.autocomplete.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/bootstrap-hover-dropdown.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/front.js"></script>
<head>

    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="iRead website">
    <meta name="author" content="Joana Cfarku | Reni Hoxhaj">
    <meta name="keywords" content="">

    <title>
        iRead website
    </title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="css/custom.css" rel="stylesheet">

    <script src="js/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">

    <link rel="stylesheet" href="assets/css/search_style.css" />


</head>

<body>

<!-- *** TOPBAR ***
_________________________________________________________ -->
<div id="top">
    <div class="container">

        <div class="col-md-6" data-animate="fadeInDown">

        </div>
    </div>
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
        <div class="modal-dialog modal-sm">

            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="Login">Admin login</h4>
                </div>
                <div class="modal-body">
                    <form action="admin.jsp" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" id="email-modal" placeholder="email">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" id="password-modal" placeholder="password">
                        </div>

                        <p class="text-center">
                            <button class="btn btn-primary"><i class="fa fa-sign-in" id="adminLogIn"></i> Log in
                            </button>
                        </p>

                    </form>

                </div>
            </div>
        </div>
    </div>

</div>

<!-- *** TOP BAR END *** -->

<!-- *** NAVBAR ***
_________________________________________________________ -->

<div class="navbar navbar-default yamm" role="navigation" id="navbar">
    <div class="container">
        <div class="navbar-header">

            <a class="navbar-brand home" href="hello" data-animate-hover="bounce">
                <img src="img/logo.png" alt=" logo" class="hidden-xs">
                <img src="img/logo-small.png" alt=" logo" class="visible-xs">
            </a>
            <div class="navbar-buttons">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
                    <span class="sr-only">Toggle navigation</span>
                    <i class="fa fa-align-justify"></i>
                </button>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search"
                        id="searchButton">
                    <span class="sr-only">Toggle search</span>
                    <i class="fa fa-search"></i>
                </button>
                <%-- <a class="btn btn-default navbar-toggle" href="/basket">
                     <i class="fa fa-shopping-cart"></i>  <span class="hidden-xs">3 items in cart</span>
                 </a>-->--%>
            </div>
        </div>
        <!--/.navbar-header -->

        <div class="navbar-collapse collapse" id="navigation">

            <ul class="nav navbar-nav navbar-left">
                <li class="active"><a href="hello">Offerte</a>
                </li>
                <li class="dropdown yamm-fw">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Categorie
                        <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <div class="yamm-content">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h5>Letteratura</h5>
                                        <ul>
                                            <li><a href="category?cat=narrativa">Narrativa</a>
                                            </li>
                                            <li><a href="category?cat=gialli">Gialli</a>
                                            </li>
                                            <li><a href="category?cat=fantasy">Fantasy e fantascienza</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-3">
                                        <h5>Universita</h5>
                                        <ul>
                                            <li><a href="category?cat=storia">Storia e archeologia</a>
                                            </li>
                                            <li><a href="category?cat=filosofia">Filosofia</a>
                                            </li>
                                            <li><a href="category?cat=arte">Arte</a>
                                            </li>
                                            <li><a href="category?cat=scienze">Scienze</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-3">
                                        <h5>Altro</h5>
                                        <ul>
                                            <li><a href="category?cat=biografie">Biografie</a>
                                            </li>
                                            <li><a href="category?cat=casa">Casa e cucina</a>
                                            </li>
                                            <li><a href="category?cat=fumetti">Fumetti</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-3"><!--

                                        --></div>
                                </div>
                            </div>
                            <!-- /.yamm-content -->
                        </li>
                    </ul>
                </li>

                <li class="dropdown yamm-fw"><!--

                    --></li>

                <li class="dropdown yamm-fw"><%--

                    --%></li>

                <li><a href="blog" data-hover="dropdown" >blog</a>
                <li><a href="logout" data-hover="dropdown" >logout</a>
                </li>


            </ul>

        </div>
        <!--/.nav-collapse -->

        <div class="navbar-buttons">

            <%--<div class="navbar-collapse collapse right" id="basket-overview">--%>
            <%--<a href="localhost:8080/fb" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span class="hidden-sm">--%>
            <%--<%= session.getAttribute("utente")   %></span></a>--%>
            <%--</div>--%>
            <!--/.nav-collapse -->

            <%--<div class="navbar-collapse collapse right" id="search-not-mobile">
                <button type="button" class="btn navbar-btn btn-primary" data-toggle="collapse" data-target="#search">
                    <span class="sr-only">Toggle search</span>
                    <i class="fa fa-search"></i>
                </button>
            </div>--%>

        </div>

       <%-- <div class="collapse clearfix" id="search">--%>
            <form class="navbar-form" role="search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Cerca libro" id="w-input-search">
                    <span class="input-group-btn">

			<button type="submit" class="btn btn-primary" id="button-id"><i class="fa fa-search"></i></button>

		    </span>
                </div>
            </form>

     <%--   </div>--%>
        <!--/.nav-collapse -->

    </div>
    <!-- /.container -->
</div>
<!-- /#navbar -->

<!-- *** NAVBAR END *** -->


<div id="all">

    <div id="content">

        <div class="container">
            <div class="col-md-12">
                <div id="main-slider">
                    <div class="item">
                        <img src="img/main-slider1.jpg" alt="" class="img-responsive">
                    </div>
                    <div class="item">
                        <img class="img-responsive" src="img/main-slider2.jpg" alt="" class="img-responsive">
                    </div>
                    <div class="item">
                        <img class="img-responsive" src="img/main-slider3.png" alt="" class="img-responsive">
                    </div>
                  <%--  <div class="item">
                        <img class="img-responsive" src="img/main-slider4.jpeg" alt="">
                    </div>--%>
                </div>
                <!-- /#main-slider -->
            </div>
        </div>

        <!-- *** HOT PRODUCT SLIDESHOW ***
_________________________________________________________ -->
        <div id="hot">

            <div class="box">
                <div class="container">
                    <div class="col-md-12">
                        <h2>Ultimi arrivi</h2>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="product-slider" id="container_product">
                    <div class="item">
                        <div class="product" id="product1">
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front">
                                        <a href="detail.jsp">
                                            <img src="img/castello_front.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="detail.jsp">
                                            <img src="img/castello_back.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <a href="detail.jsp" class="invisible">
                                <img src="img/castello_back.jpg" alt="" class="img-responsive">
                            </a>
                            <div class="text">
                                <h3><a href="detail.jsp">Il castello</a></h3>
                                <p class="price">$10.00</p>
                            </div>
                            <!-- /.text -->
                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="item">
                        <div class="product" id="product2">
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front">
                                        <a href="detail.jsp">
                                            <img src="img/castello_front.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="detail.jsp">
                                            <img src="img/castello_back.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <a href="detail.jsp" class="invisible">
                                <img src="img/castello_back.jpg" alt="" class="img-responsive">
                            </a>
                            <div class="text">
                                <h3><a href="detail.jsp">Il castello</a></h3>
                                <p class="price">$10.00</p>
                            </div>
                            <!-- /.text -->
                        </div>
                        <!-- /.product -->
                    </div>
                    <div class="item">
                        <div class="product" id="product3">
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front">
                                        <a href="detail.jsp">
                                            <img src="img/fratelli_front.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="detail.jsp">
                                            <img src="img/fratelli_back.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <a href="detail.jsp" class="invisible">
                                <img src="img/fratelli_back.jpg" alt="" class="img-responsive">
                            </a>
                            <div class="text">
                                <h3><a href="detail.jsp">I Fratelli Karamazov</a></h3>
                                <p class="price">
                                    <del>$280</del>
                                    $13.00
                                </p>
                            </div>
                            <!-- /.text -->


                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="item">
                        <div class="product" id="product4">
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front">
                                        <a href="detail.jsp">
                                            <img src="img/doppio-sogno_front.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="detail.jsp">
                                            <img src="img/doppio-sogno_back.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <a href="detail.jsp" class="invisible">
                                <img src="img/doppio-sogno_back.jpg" alt="" class="img-responsive">
                            </a>
                            <div class="text">
                                <h3><a href="detail.jsp">Doppio Sogno</a></h3>
                                <p class="price">$7.00</p>
                            </div>
                            <!-- /.text -->
                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="item">
                        <div class="product" id="product5">
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front">
                                        <a href="detail.jsp">
                                            <img src="img/divina_front.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="detail.jsp">
                                            <img src="img/divina_back.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <a href="detail.jsp" class="invisible">
                                <img src="img/divina_back.jpg" alt="" class="img-responsive">
                            </a>
                            <div class="text">
                                <h3><a href="detail.jsp">La Divina Commedia</a></h3>
                                <p class="price">$15.00</p>
                            </div>
                            <!-- /.text -->
                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="item">
                        <div class="product" id="product6">
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front">
                                        <a href="detail.jsp">
                                            <img src="img/java1_front.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="detail.jsp">
                                            <img src="img/java1_back.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <a href="detail.jsp" class="invisible">
                                <img src="img/java1_front.jpg" alt="" class="img-responsive">
                            </a>
                            <div class="text">
                                <h3><a href="detail.jsp">Libro di Java</a></h3>
                                <p class="price">$7.00</p>
                            </div>
                            <!-- /.text -->

                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="item">
                        <div class="product" id="product7">
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front">
                                        <a href="detail.jsp">
                                            <img src="img/java2_front.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="detail.jsp">
                                            <img src="img/java2_back.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <a href="detail.jsp" class="invisible">
                                <img src="img/java2_back.jpg" alt="" class="img-responsive">
                            </a>
                            <div class="text">
                                <h3><a href="detail.jsp">Libro avanzato di Java</a></h3>
                                <p class="price">$143.00</p>
                            </div>
                            <!-- /.text -->

                        </div>
                        <!-- /.product -->
                    </div>
                    <!-- /.col-md-4 -->

                    <div class="item">
                        <div class="product" id="product8">
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front">
                                        <a href="detail.jsp">
                                            <img src="img/python1_front.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="detail.jsp">
                                            <img src="img/python1_back.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <a href="detail.jsp" class="invisible">
                                <img src="img/python1_front.jpg" alt="" class="img-responsive">
                            </a>
                            <div class="text">
                                <h3><a href="detail.jsp">Libro di Python</a></h3>
                                <p class="price">$20.00</p>
                            </div>
                            <!-- /.text -->


                        </div>
                        <!-- /.product -->
                    </div>

                    <div class="item">
                        <div class="product" id="product9">
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front">
                                        <a href="detail.jsp">
                                            <img src="img/eco_front.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="detail.jsp">
                                            <img src="img/eco_back.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <a href="detail.jsp" class="invisible">
                                <img src="img/eco_front.jpg" alt="" class="img-responsive">
                            </a>
                            <div class="text">
                                <h3><a href="detail.jsp">Opera Aperta</a></h3>
                                <p class="price">
                                    <del>$10.00</del>
                                    $8.00
                                </p>
                            </div>
                            <!-- /.text -->
                        </div>
                        <!-- /.product -->
                    </div>

                </div>
                <!-- /.product-slider -->
            </div>
            <!-- /.container -->

        </div>
        <!-- /#hot -->

        <!-- *** HOT END *** -->

        <%--<!-- *** GET INSPIRED ***
_________________________________________________________ -->
        <div class="container" data-animate="fadeInUpBig">
            <div class="col-md-12">
                <div class="box slideshow">
                    <h3>Get Inspired</h3>
                    <p class="lead">Get the inspiration from our world class designers</p>
                    <div id="get-inspired" class="owl-carousel owl-theme">
                        <div class="item">
                            <a href="#">
                                <img src="img/getinspired1.jpg" alt="Get inspired" class="img-responsive">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#">
                                <img src="img/getinspired2.jpg" alt="Get inspired" class="img-responsive">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#">
                                <img src="img/getinspired3.jpg" alt="Get inspired" class="img-responsive">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- *** GET INSPIRED END *** -->

        <!-- *** BLOG HOMEPAGE ***
_________________________________________________________ -->

        <div class="box text-center" data-animate="fadeInUp">
            <div class="container">
                <div class="col-md-12">
                    <h3 class="text-uppercase">From our blog</h3>

                    <p class="lead">What's new in the world of fashion? <a href="blog.html">Check our blog!</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="container">

            <div class="col-md-12" data-animate="fadeInUp">

                <div id="blog-homepage" class="row">
                    <div class="col-sm-6">
                        <div class="post">
                            <h4><a href="post.html">Fashion now</a></h4>
                            <p class="author-category">By <a href="#">John Slim</a> in <a href="">Fashion and style</a>
                            </p>
                            <hr>
                            <p class="intro">Pellentesque habitant morbi tristique senectus et netus et malesuada fames
                                ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit
                                amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
                                ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                            <p class="read-more"><a href="post.html" class="btn btn-primary">Continue reading</a>
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="post">
                            <h4><a href="post.html">Who is who - example blog post</a></h4>
                            <p class="author-category">By <a href="#">John Slim</a> in <a href="">About Minimal</a>
                            </p>
                            <hr>
                            <p class="intro">Pellentesque habitant morbi tristique senectus et netus et malesuada fames
                                ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit
                                amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
                                ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                            <p class="read-more"><a href="post.html" class="btn btn-primary">Continue reading</a>
                            </p>
                        </div>

                    </div>

                </div>
                <!-- /#blog-homepage -->
            </div>
        </div>
        <!-- /.container -->

        <!-- *** BLOG HOMEPAGE END *** -->

--%>
    </div>
    <!-- /#content -->

    <%--<!-- *** FOOTER ***
_________________________________________________________ -->
    <div id="footer" data-animate="fadeInUp">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <h4>Pages</h4>

                    <ul>
                        <li><a href="text.html">About us</a>
                        </li>
                        <li><a href="text.html">Terms and conditions</a>
                        </li>
                        <li><a href="faq.html">FAQ</a>
                        </li>
                        <li><a href="contact.html">Contact us</a>
                        </li>
                    </ul>

                    <hr>

                    <h4>User section</h4>

                    <ul>
                        <li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a>
                        </li>
                        <li><a href="register.html">Regiter</a>
                        </li>
                    </ul>

                    <hr class="hidden-md hidden-lg hidden-sm">

                </div>
                <!-- /.col-md-3 -->

                <div class="col-md-3 col-sm-6">

                    <h4>Top categories</h4>

                    <h5>Men</h5>

                    <ul>
                        <li><a href="category">T-shirts</a>
                        </li>
                        <li><a href="category">Shirts</a>
                        </li>
                        <li><a href="category">Accessories</a>
                        </li>
                    </ul>

                    <h5>Ladies</h5>
                    <ul>
                        <li><a href="category">T-shirts</a>
                        </li>
                        <li><a href="category">Skirts</a>
                        </li>
                        <li><a href="category">Pants</a>
                        </li>
                        <li><a href="category">Accessories</a>
                        </li>
                    </ul>

                    <hr class="hidden-md hidden-lg">

                </div>
                <!-- /.col-md-3 -->

                <div class="col-md-3 col-sm-6">

                    <h4>Where to find us</h4>

                    <p><strong>iRead Ltd.</strong>
                        <br>13/25 New Avenue
                        <br>New Heaven
                        <br>45Y 73J
                        <br>England
                        <br>
                        <strong>Great Britain</strong>
                    </p>

                    <a href="contact.html">Go to contact page</a>

                    <hr class="hidden-md hidden-lg">

                </div>
                <!-- /.col-md-3 -->


                <div class="col-md-3 col-sm-6">

                    <h4>Get the news</h4>

                    <p class="text-muted">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac
                        turpis egestas.</p>

                    <form>
                        <div class="input-group">

                            <input type="text" class="form-control">

                            <span class="input-group-btn">

			    <button class="btn btn-default" type="button">Subscribe!</button>

			</span>

                        </div>
                        <!-- /input-group -->
                    </form>

                    <hr>

                    <h4>Stay in touch</h4>

                    <p class="social">
                        <a href="#" class="facebook external" data-animate-hover="shake"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="twitter external" data-animate-hover="shake"><i
                                class="fa fa-twitter"></i></a>
                        <a href="#" class="instagram external" data-animate-hover="shake"><i
                                class="fa fa-instagram"></i></a>
                        <a href="#" class="gplus external" data-animate-hover="shake"><i class="fa fa-google-plus"></i></a>
                        <a href="#" class="email external" data-animate-hover="shake"><i class="fa fa-envelope"></i></a>
                    </p>


                </div>
                <!-- /.col-md-3 -->

            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->
    </div>
    <!-- /#footer -->

    <!-- *** FOOTER END *** -->

--%>
   <%-- <!-- *** COPYRIGHT ***
_________________________________________________________ -->
    <div id="copyright">
        <div class="container">
            <div class="col-md-6">
                <p class="pull-left">©iRead 2017</p>

            </div>
            &lt;%&ndash;<div class="col-md-6">&ndash;%&gt;
                &lt;%&ndash;<p class="pull-right">Template by <a&ndash;%&gt;
                        &lt;%&ndash;href="https://bootstrapious.com/e-commerce-templates">Bootstrapious</a> & <a&ndash;%&gt;
                        &lt;%&ndash;href="https://fity.cz">Fity</a>&ndash;%&gt;
                    &lt;%&ndash;<!-- Not removing these links is part of the license conditions of the template. Thanks for understanding :) If you want to use the template without the attribution links, you can do so after supporting further themes development at https://bootstrapious.com/donate  -->&ndash;%&gt;
                &lt;%&ndash;</p>&ndash;%&gt;
            &lt;%&ndash;</div>&ndash;%&gt;
        </div>
    </div>
    <!-- *** COPYRIGHT END *** -->

--%>
</div>




<script>
    $(document).ready(function () {
        $.ajax({
            url: 'http://localhost:8080/getLastBooks',
            data: {
                format: 'json'
            },
            type: "POST",
            dataType: 'json',
            success: function (data) {
                for (var i = 1; i <= data.length; i++) {
                    var temp = data[i - 1];
                    $('#product' + i + ' .flip-container .flipper .back a img').attr("src", temp.foto_back);
                    $('#product' + i + ' .flip-container .flipper .front a img').attr("src", temp.foto_front);
                    $('#product'+i+' .flip-container .flipper .front a').attr('href','detailBook?id=' + temp.id);
                    $('#product'+i+' .flip-container .flipper .back a').attr('href','detailBook?id=' + temp.id);
                    $('#product'+i+' .text h3').text(temp.titolo);
                    $('#product'+i+' .text .price').html( '<b>&euro;</b>'+ Number(temp.prezzo).toFixed(2));
                }
            }
        });


//            $('#product1 .flip-container .flipper .back a img').attr("src","img/product2.jpg");
//            $('#product1 .flip-container .flipper .front a img').attr("src","img/product2.jpg");



        $('#w-input-search').devbridgeAutocomplete({
            serviceUrl: '/searchBook',
            paramName: "text",
            delimiter: ",",
            transformResult: function(response) {

                return {
                    //must convert json to javascript object before process
                    suggestions: $.map($.parseJSON(response), function(item) {
                        return { value: item.titolo, data: item.id};
                    })

                };

            },
            onSelect: function (suggestion) {
                var id = suggestion.data;
                window.location.href = 'http://localhost:8080/detailBook?id=' +id;
               /* alert('You selected ' + suggestion.value + ', ' + suggestion.data);*/
            }

        });
/*
        $('#w-input-search').on('autocompleteselect', function () {
            alert('You selected: ' + $('#w-input-search').val());
        });*/


   /*     });*/

        /*$('#button-id').click(function() {

           /!* alert("Selected: " + ui.item.value + " aka " + ui.item.label);*!/
        });*/

    });
</script>


</body>

</html>