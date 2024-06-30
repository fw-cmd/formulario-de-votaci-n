<!doctype html>
<html>
<head>
    <title>Index</title>

    <!-- Boostrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- CSS -->
    <link rel="stylesheet" href="public/css/style.css">
    <!-- Jquery -->
    <script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
</head>

<body onload="carga_candidato(), carga_region()">
    <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">

                        <div class="img_logo">
                            <img src="public/img/logo.png" class="float-right" alt="...">
                        </div>

                        <div class="col-md-12">
                            <h3>FORMULARIO DE VOTACIÓN:</h3>
                        </div>
                        <form onsubmit="return false" id="forma_votacion" class="requires-validation" novalidate>


                            <div class="form-group row mt-3">
                                <label for="name_id" class="col-md-4 col-form-label align-middle">Nombre y Apellido</label>
                                <div class="col-md-8">
                                    <input onkeyup="valida_nombre()" class="form-control" type="text" name="name" id="name_id" placeholder="Juan Perez" required autocomplete="off">
                                </div>
                            </div>


                            <div class="form-group row mt-3">
                                <label for="alias_id" class="col-md-4 col-form-label align-middle">Alias</label>
                                <div class="col-md-8">
                                    <input onkeyup="valida_alias()" class="form-control" type="text" name="alias" id="alias_id" placeholder="---" required autocomplete="off">
                                </div>
                            </div>

                            
                            <div class="form-group row mt-3">
                                <label for="rut_id" class="col-md-4 col-form-label align-middle">RUT</label>
                                <div class="col-md-8">
                                    <input onkeyup="valida_rut()" class="form-control" type="text" name="rut" id="rut_id" placeholder="12.345.678-9" required autocomplete="off">
                                </div>
                            </div>

                            <div class="form-group row mt-3">
                                <label for="email_id" class="col-md-4 col-form-label align-middle">Email</label>
                                <div class="col-md-8">
                                    <input onkeyup="valida_email()" class="form-control" type="text" name="email" id="email_id" placeholder="Ejemplo@gmail.com" required autocomplete="off">
                                </div>
                            </div>

                            <div class="form-group row mt-3" id="container_region"></div>   

                            <div class="form-group row mt-3" id="container_comuna">
                            <label for="comuna_id" class="col-md-4 col-form-label align-middle">Comuna</label>
                                <div class="col-md-8">
                                    <select disabled id="comuna_id" class="form-select" required autocomplete="off">
                                        <option selected disabled value="null">Comuna</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row mt-3" id="container_candidato"></div>   

                            <div class="col-md-12 mt-3">
                                <label class="mb-3 mr-1 check_label">Como se éntero de nosotros? </label>

                                <input type="checkbox" class="btn-check" name="web" id="web_id" autocomplete="off" required>
                                <label onclick="valida_box('web_id_label')" id="web_id_label" style="box-shadow: none !important" class="btn btn-sm btn-outline-secondary no_focus" for="web_id">Web</label>

                                <input type="checkbox" class="btn-check" name="tv" id="tv_id" autocomplete="off" required>
                                <label onclick="valida_box('tv_id_label')" id="tv_id_label" style="box-shadow: none !important" class="btn btn-sm btn-outline-secondary no_focus" for="tv_id">TV</label>

                                <input type="checkbox" class="btn-check" name="rs" id="rs_id" autocomplete="off" required>
                                <label onclick="valida_box('rs_id_label')" id="rs_id_label" style="box-shadow: none !important" class="btn btn-sm btn-outline-secondary no_focus" for="rs_id">Redes Sociales</label>

                                <input type="checkbox" class="btn-check" name="amigo" id="amigo_id" autocomplete="off" required>
                                <label onclick="valida_box('amigo_id_label')" id="amigo_id_label" style="box-shadow: none !important" class="btn btn-sm btn-outline-secondary no_focus" for="amigo_id">Amigo</label>
                            </div>
                                
                            <div class="col-md-3">
                                <div class="form-button mt-3">
                                    <button id="submit_voto" class="btn btn-primary">Votar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="public/js/validation.js"></script>
    <script src="public/js/load.js"></script>
    <script src="public/js/upload.js"></script>
</body>
</html>




