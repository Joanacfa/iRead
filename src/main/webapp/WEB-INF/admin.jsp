<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>iRead</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" rel="stylesheet">
    <link href="/DataTables/datatables-bootstrap3.css" rel="stylesheet">
</head>
<body>




<div class="container">
    <h1>Database dei libri</h1>
    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">Aggiungi libro
        <span class="glyphicon glyphicon-plus-sign"></span> </button>

    <h1></h1>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Inserisci i dati del libro:</h4>
                </div>
                <div class="modal-body">

                    <form method="POST" enctype="multipart/form-data" id="fileUploadForm">
                        <div class="form-group">
                            <label for="isbn_libro">Isbn</label>
                            <input type="text" class="form-control" name="isbn_libro" id="isbn_libro" placeholder="Isbn">
                            <%--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--%>
                        </div>
                        <div class="form-group">
                            <label for="titolo_Libro">Titolo</label>

                            <input type="text" class="form-control" id="titolo_Libro" placeholder="Titolo" name="titolo_Libro" required>
                        </div>

                        <div class="form-group">
                            <label  for="autore_Libro">Autore</label>
                            <input type="text" class="form-control" id="autore_Libro" placeholder="Autore" name="autore_Libro" required>
                        </div>

                        <div class="form-group">
                            <label  for="prezzo_Libro">Prezzo</label>

                            <input type="text" class="form-control" id="prezzo_Libro" name="prezzo_Libro" placeholder="Prezzo">

                        </div>

                        <div class="form-group">
                            <label for="genere_Libro">Seleziona genere</label>
                            <select class="form-control" id="genere_Libro" name="genere_Libro" >
                                <option>Narrativa</option>
                                <option>Gialli</option>
                                <option>Fantasy e fantascienza</option>
                                <option>Storia e archeologia</option>
                                <option>Filosofia</option>
                                <option>Arte</option>
                                <option>Scienze</option>
                                <option>Biografie</option>
                                <option>Casa e cucina</option>
                                <option>Fumetti</option>
                            </select>
                        </div>

                        <%--<div class="form-group">
                            <label for="quantitaDisponibile">Quantita' disponibile</label>
                            <input type="text" class="form-control" id="quantitaDisponibile">
                        </div>--%>


                        <div class="form-group">
                            <label  for="descrizione_Libro">Descrizione</label>

                            <textarea class="form-control" id="descrizione_Libro" rows="3" name="descrizione_Libro" required></textarea>
                        </div>

                        <div class="form-group">
                            <%-- <label for="copertinaFronte">Foto</label>--%>
                            <label for="libro_foto_nome">Foto nome</label>
                            <input type="text" class="form-control" id="libro_foto_nome" name="title" required>
                            <input type="file" class="form-control-file"  aria-describedby="fileHelp1" name="file_front" required>
                            <small id="fileHelp1" class="form-text text-muted">Aggiungi foto fronte del libro nel formato .jpg o .png!</small>
                            <input type="file" class="form-control-file"  aria-describedby="fileHelp2" name="file_back" id="file_back_id" required>
                            <small id="fileHelp2" class="form-text text-muted">Aggiungi foto retro del libro nel formato .jpg o .png!</small>
                        </div>

                    </form>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Chiudi</button>
                    <button type="submit" class="btn btn-success" id="btnSubmit" >Salva</button>
                </div>
            </div>
        </div>
    </div>




    <table width="100%" id="libro-table" class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>Id</th>
            <th>Isbn</th>
            <th>Titolo</th>
            <th>Autore</th>
            <th>Prezzo</th>
            <th>Genere</th>
            <th>Descrizione</th>
            <th >Actions</th>
        </tr>
        </thead>
    </table>

    <div>
        <form action="/logout" method="get">
            <button type="submit" class="btn btn-info" >
                <span class="glyphicon glyphicon-log-out"></span>  Log out</button>
        </form>
    </div>
</div>




<!-- Modal -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="editModalLabel">Modifica il libro:</h4>
            </div>
            <div class="modal-body">

                <form method="POST" enctype="form-data" id="editForm">
                    <div class="form-group">
                        <label for="id">Id</label>
                        <output type="text" class="form-control" name="isbn" id="id" placeholder="Isbn">
                            <%--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--%>
                    </div>
                    <div class="form-group">
                        <label for="isbn">Isbn</label>
                        <input type="text" class="form-control" name="isbn" id="isbn" placeholder="Isbn">
                        <%--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--%>
                    </div>
                    <div class="form-group">
                        <label for="titolo">Titolo</label>

                        <input type="text" class="form-control" id="titolo" placeholder="Titolo" name="titolo" required>
                    </div>

                    <div class="form-group">
                        <label  for="autore">Autore</label>
                        <input type="text" class="form-control" id="autore" placeholder="Autore" name="autore" required>
                    </div>

                    <div class="form-group">
                        <label  for="prezzo">Prezzo</label>

                        <input type="text" class="form-control" id="prezzo" name="prezzo" placeholder="Prezzo">

                    </div>

                    <div class="form-group">
                        <label for="genere">Seleziona genere</label>
                        <select class="form-control" id="genere" name="genere" >
                            <option>Narrativa</option>
                            <option>Gialli</option>
                            <option>Fantasy e fantascienza</option>
                            <option>Storia e archeologia</option>
                            <option>Filosofia</option>
                            <option>Arte</option>
                            <option>Scienze</option>
                            <option>Biografie</option>
                            <option>Casa e cucina</option>
                            <option>Fumetti</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label  for="descrizione">Descrizione</label>

                        <textarea class="form-control" id="descrizione" rows="3" name="descrizione" required></textarea>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Chiudi</button>
                <button type="submit" class="btn btn-success" id="btnEdit" >Modifica</button>
            </div>
        </div>
    </div>
</div>

<button type="button" class="regular" name="btnActivateElimina" id="btnActivateElimina"  style="display:none;">
</button>









<%--<div>

    <a href="/login" class="btn btn-info btn-lg" class="btn pull-right">
        <span class="glyphicon glyphicon-log-out"></span> Log out
    </a>
</div>--%>

<%--<script src="https://code.jquery.com/jquery-1.8.2.min.js"></script>--%>

<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.2.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script src="/DataTables/datatables-bootstrap3.js"></script>
<script type="text/javascript" src="jquery-validation-1.17.0/dist/jquery.validate.js"></script>
<script type="text/javascript" src="/bootstrap-sweetalert-master/dist/sweetalert.js"></script>
<link href="/bootstrap-sweetalert-master/dist/sweetalert.css" rel="stylesheet">
<%--
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
<<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
    <<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/additional-methods.jshttps://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.js"></script>
    <<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/additional-methods.min.js"></script>


--%>


<!-- Include jQuery -->


<!-- Include jQuery Popup Overlay -->
<script src="https://cdn.rawgit.com/vast-engineering/jquery-popup-overlay/1.7.13/jquery.popupoverlay.js"></script>

<script type="text/javascript">

    $(document).ready( function () {
        $('#libro-table').DataTable({
            "ajax": {
                "url": "/getAllLibri",
                "dataSrc": "",
                "type": "POST"
            },

            "columns": [
                {"data": "id"},
                {"data": "isbn"},
                {"data": "titolo"},
                {"data": "autore"},
                {"data": "prezzo"},
                {"data": "genere_nome"},
                {"data": "descrizione"},
                {
                    "render": function (data, type, full, meta) { //meta.row is what you are looking for
                        return '<button type="button" class="btn btn-danger" id="delete_btn"> ' + '<span class="glyphicon glyphicon-trash"></span> ' + '</button>'
                            + '<button type="button" class="btn btn-info" id="edit_btn">' + ' <span class="glyphicon glyphicon-edit"></span> ' + '</button>'
                    }
                }
            ],
            select: true
        });

        $('body').on('click', '#delete_btn', function () {
            var id = $(this).closest('tr')[0].children[0].innerText;
            swal({
                    title: "Vuoi eliminare " + $(this).closest('tr')[0].children[2].innerText + "?",
                    text: "Non puoi piu' recuperare questi dati!",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: '#DD6B55',
                    confirmButtonText: 'Si, sono sicuro!',
                    cancelButtonText: "No!",
                    closeOnConfirm: false,
                    closeOnCancel: false

                },
                function (isConfirm) {
                    if (isConfirm) {
                        /* document.getElementById("btnActivateElimina").click();*/
                        /*swal.close();*/

                        $.ajax({
                            type: "GET",
                            url: "/eliminaLibro",
                            data: {'id': id},
                            async: false,
                            dataType: "text",
                            success: function (data) {
                                swal("Il libro e' stato eliminato!", "", "success");
                                $('#libro-table').DataTable().ajax.reload();
                            }

                        })
                            .done(function(data) {

                            })
                            /* success: function (response) {
                                 swal("Il libro e' stato eliminato!", "", "success");
                                 $('#libro-table').DataTable().ajax.reload();
                             },*/
                            .error(function(data) {
                                swal("Siamo spiacenti!", "e' successo un errore!", "error");
                            });
                        /*    error: function (response) {
                                swal("Siamo spiacenti!", "e' successo un errore!", "error");
                            }*/

                    }
                    else {
                        swal("Cancellato", "Lei ha cancellato questo operazione ", "error");
                    }
                });
        });


        $('body').on('click', '#btnSubmit', function () {


            var form = $('#fileUploadForm')[0];

            var data = new FormData(form);

            /*var isbn = $('#isbn_libro').val();
            var titolo = $('#titolo_Libro').val();
            var autore = $('#autore_Libro').val();
            var genereNome = $('#genere_Libro').val();
            var prezzo = $('#prezzo_Libro').val();
            var descrizione = $('#descrizione_Libro').val();
*/
            $("#btnSubmit").prop("disabled", true);

            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: "/aggiungiLibro",
                data: data,
                processData: false,
                contentType: false,
                cache: false,
                timeout: 600000,

                success: function (response) {

                    swal("Il libro e' stato aggiunto!", "", "success");
                    /*  alert("Il libro e' stato aggiunto!");*/
                    $('#myModal').modal('hide');
                    $('#myModal').removeData();
                    $('#libro-table').DataTable().ajax.reload();
                    $("#btnSubmit").prop("disabled", false);
                },
                error: function (response) {
                    swal("Siamo spiacenti!", "e' successo un errore!", "error");
                    /* alert("E' successo un errore");*/
                    $("#btnSubmit").prop("disabled", false);
                }


            });

        });


        $('#myModal').on('hidden.bs.modal', function (e) {
            $(this)
                .find("input,textarea,select")
                .val('')
                .end()
                .find("input[type=checkbox], input[type=radio]")
                .prop("checked", "")
                .end();
        })


        $('body').on('click', '#edit_btn', function () {
            var id = $(this).closest('tr')[0].children[0].innerText;
            var isbn = $(this).closest('tr')[0].children[1].innerText;
            var titolo = $(this).closest('tr')[0].children[2].innerText;
            var autore = $(this).closest('tr')[0].children[3].innerText;
            var prezzo = $(this).closest('tr')[0].children[4].innerText;
            var genere = $(this).closest('tr')[0].children[5].innerText;
            var descrizione = $(this).closest('tr')[0].children[6].innerText;

            swal({
                    title: "Vuoi modificare " + $(this).closest('tr')[0].children[2].innerText + "?",
                    /*text: "You will not be able to recover this imaginary file!",*/
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: '#DD6B55',
                    confirmButtonText: 'Si, sono sicuro!',
                    cancelButtonText: "Cancella!",
                    closeOnConfirm: false,
                    closeOnCancel: false

                },
                function (isConfirm) {
                    if (isConfirm) {
                        swal.close();
                        $("#editModal").on("shown.bs.modal", function () {
                            $("#id").val(id);
                            $("#isbn").val(isbn);
                            $("#titolo").val(titolo);
                            $("#autore").val(autore);
                            $("#genere").val(genere);
                            $("#prezzo").val(prezzo);
                            $("#descrizione").val(descrizione);
                        });
                        $("#editModal").modal('show');

                    }
                    else {
                        swal("Cancellato", "Lei ha cancellato questo operazione", "error");
                    }
                });


            $('body').on('click', '#btnEdit', function () {
                /*   var form = $('#editForm')[0];
                   var data = new FormData(form);*/
                var id = $('#id').val();
                var isbn = $('#isbn').val();
                var titolo = $('#titolo').val();
                var autore = $('#autore').val();
                var genere = $('#genere').val();
                var prezzo = $('#prezzo').val();
                var descrizione = $('#descrizione').val();

                $("#btnEdit").prop("disabled", true);

                $.ajax({
                    type: "POST",
                    url: "/modificaLibro",
                    data: {
                        'id': id,
                        'isbn': isbn,
                        'titolo': titolo,
                        'autore': autore,
                        'genere': genere,
                        'prezzo': prezzo,
                        'descrizione': descrizione
                    },
                    async: false,
                    dataType: "text",
                    //contentType: 'application/json',

                    success: function (response) {

                        swal("Il libro e' stato modificato", "", "success");
                        /*alert("Il libro e' stato modificato!");*/
                        $('#libro-table').DataTable().ajax.reload();
                        $('#editModal').modal('hide');
                        $('#editModal').removeData();
                        $("#btnEdit").prop("disabled", false);
                    },
                    error: function (response) {
                        swal("Siamo spiacenti!", "e' successo un errore!", "error");
                        /*alert("E' successo un errore");*/
                        $("#btnEdit").prop("disabled", false);
                    }


                });

            });

        });


        $('body').on('click', '#btnActivateElimina', function () {



        });


    });











</script>


</body>
</html>