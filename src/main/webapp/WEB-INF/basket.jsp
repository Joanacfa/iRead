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


</head>

<body>

<!-- *** TOPBAR ***
_________________________________________________________ -->
<div id="top">
    <div class="container">

        <div class="col-md-6" data-animate="fadeInDown">
            <ul class="menu">

            </ul>
        </div>
    </div>
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
        <div class="modal-dialog modal-sm">

            <div class="modal-content">
                <div class="modal-header">
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
                                </div>
                            </div>
                            <!-- /.yamm-content -->
                        </li>
                    </ul>
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
        <%--<form class="navbar-form" role="search">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search" id="w-input-search">
                <span class="input-group-btn">

			<button type="submit" class="btn btn-primary" id="button-id"><i class="fa fa-search"></i></button>

		    </span>
            </div>
        </form>--%>

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
                        <li><a href="localhost:8080/hello">Home</a>
                        </li>
                        <li>Carrello</li>
                    </ul>
                </div>

                <div class="col-md-9" id="basket">

                    <div class="box">

                        <form>

                            <h1>Carrello</h1>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th colspan="2">Libro</th>
                                            <th>Quantita</th>
                                            <th>Prezzo</th>
                                            <th>Totale</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <a href="#">
                                                    <img src="${detailBook.foto_front}" alt="${detailBook.titolo}">
                                                </a>
                                            </td>
                                            <td><a href="#">${detailBook.titolo}</a>
                                            </td>
                                                <td>
                                                <input type="number" id="quantita" value="1" >
                                                </td>

                                                <td>
                                                    <output type="number" id="prezzo"></output>
                                                </td>
                                                <td>
                                                    <output type="number" id="totale">  </output>
                                                </td>


                                        </tr>
                                    </tbody>
                                    </tfoot>
                                </table>

                            </div>
                            <!-- /.table-responsive -->

                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="/hello" class="btn btn-default"><i class="fa fa-chevron-left"></i> Continua a cercare</a>
                                </div>
                                <div class="pull-right">
                                    <%--<button class="btn btn-default"><i class="fa fa-refresh"></i> Update basket</button>--%>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#buyModal">Procedi <i class="fa fa-chevron-right"></i>
                                    </button>
                                </div>
                            </div>

                        </form>

                    </div>
                    <!-- /.box -->


                    <div class="row same-height-row" id="sugg">
                        <div class="col-md-3 col-sm-6">
                            <div class="box same-height">
                                <h3>Ti possono interessare</h3>
                            </div>
                        </div>

                    </div>


                </div>
                <!-- /.col-md-9 -->

                <div class="col-md-3">
                    <div class="box" id="order-summary">
                        <div class="box-header">
                            <h3>Riepilogo dell'ordine</h3>
                        </div>
                        <p class="text-muted">Le spese aggiuntive sono calcolate in base ai valori inseriti.</p>

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>Subtotale</td>
                                        <th>  <output type="number" id="subtotale"> </output>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>Costo di spedizione</td>
                                        <th> &euro; 3.00</th>
                                    </tr>
                                    <tr>
                                        <td>Tasse</td>
                                        <th>&euro; 1.00</th>
                                    </tr>
                                    <tr class="total">
                                        <td>Totale</td>
                                        <th><output type="number" id="total-price"> <b>&euro;</b> </output></th>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>


                </div>
                <!-- /.col-md-3 -->

            </div>
            <!-- /.container -->
        </div>

    <button type="button" class="regular" name="change_index" id="change_index"  style="display:none;" onclick="window.location.href='http://localhost:8080/hello'">
    </button>
    <button type="button" class="regular" name="change_login" id="change_login"  style="display:none;" onclick="window.location.href='http://localhost:8080/login'">
    </button>
    <%--<button type="button" class="regular" name="change_basket" id="change_basket"  style="display:none;" onclick="window.location.href='http://localhost:8080/basket'">
    </button>--%>


       <%-- <!-- *** COPYRIGHT ***
 _________________________________________________________ -->
        <div id="copyright">
            <div class="container">
                <div class="col-md-6">
                    <p class="pull-left">© iRead website</p>

                </div>
                <div class="col-md-6">
                    <p class="pull-right">Template by <a href="https://bootstrapious.com/e-commerce-templates">Bootstrapious</a> & <a href="https://fity.cz">Fity</a>
                         <!-- Not removing these links is part of the license conditions of the template. Thanks for understanding :) If you want to use the template without the attribution links, you can do so after supporting further themes development at https://bootstrapious.com/donate  -->
                    </p>
                </div>
            </div>
        </div>
        <!-- *** COPYRIGHT END *** -->
--%>


    </div>
    <!-- /#all -->


<!-- Modal -->
<div class="modal fade" id="buyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="editModalLabel">Inserisci i dati richiesti:</h4>
            </div>
            <div class="modal-body">

                <form method="POST" enctype="form-data" id="buyForm">
                    <div class="form-group">
                        <label for="nome">Nome Cognome </label>
                        <output type="text" class="form-control" name="nome" id="nome" placeholder="Nome"> ${utente.nome} </output>
                            <%--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--%>
                    </div>
                    <div class="form-group">
                        <label for="via">Via</label>
                        <input type="text" class="form-control" name="via" id="via" placeholder="Via">
                        <%--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--%>
                    </div>
                    <div class="form-group">
                        <label for="citta">Citta</label>

                        <input type="text" class="form-control" id="citta" placeholder="Citta'" name="citta" required>
                    </div>

                    <div class="form-group">
                        <label  for="telefono">Telefono</label>
                        <input type="text" class="form-control" id="telefono" placeholder="Telefono" name="telefono" required>
                    </div>

                    <div class="form-group">
                        <label  for="email">Email</label>

                        <input type="text" class="form-control" id="email" name="email" placeholder="Email">

                    </div>

                    <div class="form-group">
                        <label for="pagamento">Seleziona metodo di pagamento</label>
                        <select class="form-control" id="pagamento" name="pagamento" >
                            <option>Visa e Master Card</option>
                            <option>Paypal</option>
                        </select>
                    </div>

                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Chiudi</button>
                <button type="button" class="btn btn-success" id="compra-libro" >Compra libro</button>
            </div>
        </div>
    </div>
</div>



    

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
<script type="text/javascript" src="/bootstrap-sweetalert-master/dist/sweetalert.js"></script>
<link href="/bootstrap-sweetalert-master/dist/sweetalert.css" rel="stylesheet">



<script>
    $(document).ready(function () {
        $.ajax({
            url: 'http://localhost:8080/getSuggestion' ,
            data: {
                format: 'json'
            },
            type: "POST",
            data: {
                'id': ${detailBook.id}
            },
            dataType: 'json',
            success: function (data) {
//               alert(data);
                for (var i = 1; i <= data.length; i++) {
                    var temp = data[i - 1];
                    $("#sugg").append(" <div class='col-md-3 col-sm-6'> <div class='product same-height'>  <div class='flip-container'>  <div class='flipper'> <div class='front'>  <a href='detailBooks?id='"+temp.id+"'> <img src="+temp.foto_front+"  alt='' class='img-responsive'> </a>   </div>  <div class='back'>  <a href='detailBook?id="+temp.id+"'>  <img src="+temp.foto_back+" alt='' class='img-responsive'> </a> </div>  </div>  </div>  <a href='detailBook?id="+temp.id+"' class='invisible'> <img src="+temp.foto_front+" alt='' class='img-responsive'> </a>  <div class='text'>  <h3>"+temp.titolo+"</h3> <p class='price'>&euro;"+Number(temp.prezzo).toFixed(2)+"</p>  </div>   </div>  <!-- /.product -->   </div>");
                }
            }
        });
        var t = Number(${detailBook.prezzo}).toFixed(2);
        $("#totale").val(t);
        document.getElementById("totale").innerText = "\u20AC" + t;
        $("#subtotale").val(t);
        document.getElementById("subtotale").innerText = "\u20AC" + t;
        var tp =  Number(${detailBook.prezzo} + 4).toFixed(2);
        $("#total-price").val(tp);
        document.getElementById("total-price").innerText = "\u20AC" + tp;
        $("#prezzo").val(t);
        document.getElementById("prezzo").innerText = "\u20AC" + t;

/*
        function changeTotal(){

        }*/

        $( "#quantita" ).change(function() {
            var quantita = ($(this).val());
            var prezzo = Number(${detailBook.prezzo}).toFixed(2);
            document.getElementById("prezzo").innerText = "\u20AC" + prezzo;
             var total = Number(quantita  * prezzo).toFixed(2);
            $("#totale").val(total);
            document.getElementById("totale").innerText = "\u20AC" + total;
            $("#subtotale").val(total);
            document.getElementById("subtotale").innerText = "\u20AC" + total;
            var totalp = Number((quantita  * prezzo) + 4).toFixed(2);
            $("#total-price").val(totalp);
            document.getElementById("total-price").innerText = "\u20AC" + totalp;

        });


        $('body').on('click', '#compra-libro', function () {
            debugger;
        var idLibro = ${detailBook.id};
        var quantita = $('#quantita').val();
        var totale = $('#total-price').val();
            $.ajax({
                url: "/compraLibro",
                type: "POST",
                data: {id: idLibro, quantitaLibro: quantita, totaleOrdine: totale},
                dataType: 'text',
                async:false,
                /*enctype: 'text',*/
                /*processData: false,
                contentType: false,
                cache: false,*/
                success: function(response) {
                   /* alert("Il pagamento e' andato a buon fine!");*/

                    swal({
                            title: "Transazione fatto!" ,
                            text: "Il pagamento e' andato a buon fine!",
                            type: "success",
                            showCancelButton: false,
                            /* confirmButtonColor: '#DD6B55',*/
                            confirmButtonText: 'Ok!',
                            /* cancelButtonText: "No!",*/
                            closeOnConfirm: false,
                            /*   closeOnCancel: false*/

                        },
                        function (isConfirm) {
                            if (isConfirm) {
                                document.getElementById("change_index").click();

                            }
                        });


/*
                    swal("Transazione fatto!", "Il pagamento e' andato a buon fine!", "success");
                    document.getElementById("change_index").click();*/
                },
                error: function(response) {

                    swal({
                            title: "Oops" ,
                            text: "Siamo spiacenti, e' successo un errore!",
                            type: "error",
                            showCancelButton: false,
                            /* confirmButtonColor: '#DD6B55',*/
                            confirmButtonText: 'Ok!',
                            /* cancelButtonText: "No!",*/
                            closeOnConfirm: false,
                            /*   closeOnCancel: false*/

                        },
                        function (isConfirm) {
                            if (isConfirm) {
                                document.getElementById("change_index").click();
                            }
                        });

                   /* swal("Oops", "Siamo spiacenti, e' successo un errore!", "error");
                    /!*alert("Siamo spiacenti, e' successo un errore!");*!/
                    document.getElementById("change_login").click();*/
                }


            });

    });



    });


</script>




</body>

</html>