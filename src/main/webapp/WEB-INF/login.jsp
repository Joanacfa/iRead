<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title> iRead website</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="/assets/css/form-elements.css">
        <link rel="stylesheet" href="/assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="/assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="/assets/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Benvenuto su iRead </strong> </h1>
                            <div class="description">
                            	<p>
	                            	<strong>Esplora il mondo trovando i tuoi libri preferiti. </strong>
	                            	
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Effettua il login</h3>
                            		<p>Inserisci la username e la password</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form id="loginForm" role="form" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="form-username" placeholder="Username..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="form-password">
			                        </div>
			                        <button type="button" class="btn" id="login">Login</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>...o fai il login usando Facebook</h3>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-1 btn-link-1-facebook" href="fb">
	                        		<i class="fa fa-facebook"></i> Facebook
	                        	</a>
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>

        <div>
        <button type="button" class="regular" name="change_admin" id="change_admin"  style="display:none;" onclick="window.location.href='http://localhost:8080/admin'">
        </button>
        <button type="button" class="regular" name="change_hello" id="change_hello"  style="display:none;" onclick="window.location.href='http://localhost:8080/hello'">
        </button>
        </div>











        <!-- Javascript -->
        <script src="/assets/js/jquery-1.11.1.min.js"></script>
        <script src="/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="/assets/js/jquery.backstretch.min.js"></script>
        <script src="/assets/js/scripts.js"></script>
       <%-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>--%>
        <script type="text/javascript" src="/bootstrap-sweetalert-master/dist/sweetalert.js"></script>
        <link href="/bootstrap-sweetalert-master/dist/sweetalert.css" rel="stylesheet">
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->


        <script type="text/javascript">
            $(document).ready(function () {
                $('body').on('click', '#login', function () {



                    /*debugger;*/
                    var username = $('#form-username').val();
                    var password = $('#form-password').val();


                    $.ajax({
                        type: "POST",
                        url: "/loginUser",
                        data: { 'username': username, 'password': password},
                        async:false,

                        success: function(response) {
                            debugger;
                            /*var dataObject = jQuery.parseJSON(response);*/

                            if(response.ruoloId == 2) {

                                swal({
                                        title: "Benvenuto Amministratore " ,
                                        /*text: "Non puoi piu' recuperare questi dati!",*/
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
                                            document.getElementById("change_admin").click();

                                        }
                                });



                                /*swal("Benvenuto Amministratore");*/
                                /*swal("iRead!", "Benvenuto Amministratore!", "success");*/
                                /*alert("Benvenuto Admin!");*/
                           /*     swal({
                                    title: "iRead!",
                                    text: "Benvenuto Amministratore!",
                                    type: "success",
                                    timer: 10000
                                });
                                document.getElementById("change_admin").click();*/
                            }
                            else {

                                swal({
                                        title: "Benvenuto " + response.nome ,
                                        /*text: "Non puoi piu' recuperare questi dati!",*/
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
                                            document.getElementById("change_hello").click();
                                        }
                                    });




                        /*        swal({
                                    title: "iRead!",
                                    text: "Benvenuto " + response.nome,
                                    type: "success",
                                    timer: 10000
                                });
                                /!*swal("iRead!", "Benvenuto " + response.nome, "");*!/

                                /!*swal("Benvenuto " + response.nome);*!/
                                /!*alert("Benvenuto " + response.nome);*!/
                                document.getElementById("change_hello").click()*/
                            }

                        },
                        error: function(response) {
                            swal("Username o password errato!", "La preghiamo di riprovare", "error");
                           /* alert ( "L'utente da lei inserito, non esiste! La preghiamo di riprovare");*/
                            $('#form-username').val("");
                            $('#form-password').val("");
                        }
                    });

                });

            });

        </script>

    </body>

</html>