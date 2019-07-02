<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="iRead e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
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



</head>

<body>

<!-- *** TOPBAR ***
_________________________________________________________ -->
<div id="top">
    <div class="container">
        <!--<div class="col-md-6 offer" data-animate="fadeInDown">
            <a href="#" class="btn btn-success btn-sm" data-animate-hover="shake">Offer of the day</a>  <a href="#">Get flat 35% off on orders over $50!</a>
        </div>-->
        <div class="col-md-6" data-animate="fadeInDown">
            <%--<ul class="menu">
                <li><a href="#" data-toggle="modal" data-target="#login-modal">Admin Login</a>
                </li>
                &lt;%&ndash; <li><a href="register.html">Register</a>&ndash;%&gt;
                <!--                    </li>
                                    <li><a href="contact.html">Contact</a>
                                    </li>-->
                <!--                    <li><a href="#">Recently viewed</a>
                                    </li>-->
            </ul>--%>
        </div>
    </div>
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true"><%--
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
                            <button class="btn btn-primary"><i class="fa fa-sign-in" id="adminLogIn"></i> Log in</button>
                        </p>

                    </form>

                    &lt;%&ndash; <p class="text-center text-muted">Not registered yet?</p>
                     <p class="text-center text-muted"><a href="register.html"><strong>Register now</strong></a>! It is easy and done in 1&nbsp;minute and gives you access to special discounts and much more!</p>&ndash;%&gt;

                </div>
            </div>
        </div>
    --%></div>

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
                                            <h5>Featured</h5>
                                            <ul>
                                                <li><a href="category">Trainers</a>
                                                </li>
                                                <li><a href="category">Sandals</a>
                                                </li>
                                                <li><a href="category">Hiking shoes</a>
                                                </li>
                                            </ul>
                                            <h5>Looks and trends</h5>
                                            <ul>
                                                <li><a href="category">Trainers</a>
                                                </li>
                                                <li><a href="category">Sandals</a>
                                                </li>
                                                <li><a href="category">Hiking shoes</a>
                                                </li>
                                            </ul>
                                        --></div>
                                </div>
                            </div>
                            <!-- /.yamm-content -->
                        </li>
                    </ul>
                </li>

                <li class="dropdown yamm-fw"><!--
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Ladies <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="yamm-content">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h5>Clothing</h5>
                                            <ul>
                                                <li><a href="category">T-shirts</a>
                                                </li>
                                                <li><a href="category">Shirts</a>
                                                </li>
                                                <li><a href="category">Pants</a>
                                                </li>
                                                <li><a href="category">Accessories</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <h5>Shoes</h5>
                                            <ul>
                                                <li><a href="category">Trainers</a>
                                                </li>
                                                <li><a href="category">Sandals</a>
                                                </li>
                                                <li><a href="category">Hiking shoes</a>
                                                </li>
                                                <li><a href="category">Casual</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <h5>Accessories</h5>
                                            <ul>
                                                <li><a href="category">Trainers</a>
                                                </li>
                                                <li><a href="category">Sandals</a>
                                                </li>
                                                <li><a href="category">Hiking shoes</a>
                                                </li>
                                                <li><a href="category">Casual</a>
                                                </li>
                                                <li><a href="category">Hiking shoes</a>
                                                </li>
                                                <li><a href="category">Casual</a>
                                                </li>
                                            </ul>
                                            <h5>Looks and trends</h5>
                                            <ul>
                                                <li><a href="category">Trainers</a>
                                                </li>
                                                <li><a href="category">Sandals</a>
                                                </li>
                                                <li><a href="category">Hiking shoes</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="banner">
                                                <a href="#">
                                                    <img src="img/banner.jpg" class="img img-responsive" alt="">
                                                </a>
                                            </div>
                                            <div class="banner">
                                                <a href="#">
                                                    <img src="img/banner2.jpg" class="img img-responsive" alt="">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                &lt;!&ndash; /.yamm-content &ndash;&gt;
                            </li>
                        </ul>
                    --></li>

                <li class="dropdown yamm-fw"><%--
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Template <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="yamm-content">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h5>Shop</h5>
                                            <ul>
                                                <li><a href="hello">Homepage</a>
                                                </li>
                                                <li><a href="category">Category - sidebar left</a>
                                                </li>
                                                <li><a href="category-right.html">Category - sidebar right</a>
                                                </li>
                                                <li><a href="category-full.html">Category - full width</a>
                                                </li>
                                                <li><a href="detail.jsp">Product detail</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <h5>User</h5>
                                            <ul>
                                                <li><a href="register.html">Register / login</a>
                                                </li>
                                                <li><a href="customer-orders.html">Orders history</a>
                                                </li>
                                                <li><a href="customer-order.html">Order history detail</a>
                                                </li>
                                                <li><a href="customer-wishlist.html">Wishlist</a>
                                                </li>
                                                <li><a href="customer-account.html">Customer account / change password</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <h5>Order process</h5>
                                            <ul>
                                                <li><a href="/basket">Shopping cart</a>
                                                </li>
                                                <li><a href="checkout1.html">Checkout - step 1</a>
                                                </li>
                                                <li><a href="checkout2.html">Checkout - step 2</a>
                                                </li>
                                                <li><a href="checkout3.html">Checkout - step 3</a>
                                                </li>
                                                <li><a href="checkout4.html">Checkout - step 4</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <h5>Pages and blog</h5>
                                            <ul>
                                                <li><a href="blog.html">Blog listing</a>
                                                </li>
                                                <li><a href="post.html">Blog Post</a>
                                                </li>
                                                <li><a href="faq.html">FAQ</a>
                                                </li>
                                                <li><a href="text.html">Text page</a>
                                                </li>
                                                <li><a href="text-right.html">Text page - right sidebar</a>
                                                </li>
                                                <li><a href="404.html">404 page</a>
                                                </li>
                                                <li><a href="contact.html">Contact</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.yamm-content -->
                            </li>
                        </ul>
                    --%></li>

               <li><a href="blog" data-hover="dropdown" >blog</a>                <li><a href="logout" data-hover="dropdown" >logout</a>
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
                    <ul class="breadcrumb">
                        <li><a href="hello">Home</a>
                        </li>
                        <li><%= session.getAttribute("category")   %></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Categories</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked category-menu">
                                    <a >Letteratura </a>
                                <ul>
                                    <li><a href="category?cat=narrativa">Narrativa</a>
                                    </li>
                                    <li><a href="category?cat=gialli">Gialli</a>
                                    </li>
                                    <li><a href="category?cat=fantasy">Fantasy e fantascienza</a>
                                    </li>
                                </ul>
                                <li >
                                    <a ">Universita </a>
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
                                </li>
                                <li>
                                    <a>Altro </a>
                                    <ul>
                                        <li><a href="category?cat=biografie">Biografie</a>
                                        </li>
                                        <li><a href="category?cat=casa">Casa e cucina</a>
                                        </li>
                                        <li><a href="category?cat=fumetti">Fumetti</a>
                                        </li>
                                    </ul>
                                </li>

                            </ul>

                        </div>
                    </div>


                </div>
                <div class="col-md-9">
                    <div class="box">
                        <h1><%= session.getAttribute("category")   %></h1>
                      </div>

                    <div class="row products" id ="prodd">


                    </div>
                    <!-- /.products -->

                    <div class="pages">

                        <p class="loadMore">
                            <a href="#" class="btn btn-primary btn-lg"><i class="fa fa-chevron-down"></i> Ricarica Contenti</a>
                        </p>


                    </div>


                </div>
                <!-- /.col-md-9 -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


    </div>
    <!-- /#all -->


    

    <!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap-hover-dropdown.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/front.js"></script>
<script src="/jQuery-Autocomplete-master/scripts/jquery-2.1.1.js"></script>
<script src="jQuery-Autocomplete-master/src/jquery.autocomplete.js"></script>
<link rel="stylesheet" href="assets/css/search_style.css" />



<script>
    $(document).ready(function () {
        $.ajax({
            url: 'http://localhost:8080/category' ,
            data: {
                format: 'json'
            },
            type: "POST",
            data: {
                'cat': "<%= session.getAttribute("category")   %>"
            },
            dataType: 'json',
            success: function (data) {
//               alert(data);
                for (var i = 1; i <= data.length; i++) {
                    var temp = data[i - 1];
                    $("#prodd").append("<div class='col-md-4 col-sm-6'> <div class='product'>    <div class='flip-container'>      <div class='flipper'> <div class='front'>  <a href='detailBook?id="+temp.id+"'> <img src="+temp.foto_front+" alt='' class='img-responsive'> </a>  </div>   <div class='back'>   <a href='detailBook?id="+temp.id+"'> <img src="+temp.foto_back+" alt='' class='img-responsive'>  </a>   </div>   </div>    </div>   <a href='detailBook?id="+temp.id+"' class='invisible'>   <img src="+temp.foto_front+" alt='' class='img-responsive'>  </a>   <div class='text'> <h3><a href='detailBook?id="+temp.id+"'>"+temp.titolo+"</a></h3> <p class='price'> <b>&euro;</b> "+Number(temp.prezzo).toFixed(2)+"</p> <p class='buttons'>  <a href='detailBook?id="+temp.id+"' class='btn btn-default'>Dettaglio</a>   <a href='/basket?id="+temp.id+"' class='btn btn-primary'><i class='fa fa-shopping-cart'></i>Carrello</a>  </p>  </div>  <!-- /.text -->    </div>   <!-- /.product -->  </div>");
                }
            }
        });


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

    });


</script>


</body>

</html>