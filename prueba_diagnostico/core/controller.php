<?php
include("../sql/config.php");
include("../sql/db.php");
include("controller_function.php");

$f_accion = isset($_POST["faccion"]) ? $_POST["faccion"] : $_GET["faccion"];

/**
 * Imprime select Candidato html con los datos cargados de base de datos.
 * @param {None} $f_accion=="listar_candidato"
 * @returns {None}
 */
if($f_accion=="listar_candidato"){                     
    $_listar_candidato = listar_candidato();
?>
<label for="candidato_id" class="col-md-4 col-form-label align-middle">Candidato</label>
<div class="col-md-8">  
    <select onchange="valida_select_candidato()" id="candidato_id" class="form-select" required autocomplete="off">
        <option class="dropdown-item" value="null" disabled selected>Seleccione un Candidato</option>
                                                      
<?php  

    for($i=0;$i<sizeof($_listar_candidato);$i++){
        $lis_id_candidato = $_listar_candidato[$i]["id"];
        $lis_nombre_candidato = $_listar_candidato[$i]["nombre_candidato"];
        $lis_apellido_candidato = $_listar_candidato[$i]["apellido_candidato"];
        
?>                  
<option value="<?=$lis_id_candidato;?>"><?=$lis_nombre_candidato;?> <?=$lis_apellido_candidato;?></option>
<?php
    } 
?>
    </select>                                      
</div>                
<?php       
}

/**
 * Imprime select Region html con los datos cargados de base de datos.
 * @param {None} $f_accion=="listar_region"
 * @returns {None}
 */
if($f_accion=="listar_region"){                     
    $_listar_region = listar_region();
?>
<label for="region_id" class="col-md-4 col-form-label align-middle">Región</label>
<div class="col-md-8">  
    <select onchange="carga_comuna(), valida_select_region()" id="region_id" class="form-select" required autocomplete="off">
        <option class="dropdown-item" value="null" disabled selected>Seleccione una Region</option>
                                                      
<?php  

    for($i=0;$i<sizeof($_listar_region);$i++){
        $lis_id_region = $_listar_region[$i]["id"];
        $lis_nombre_region = $_listar_region[$i]["nombre_region"];
?>             
<option value="<?=$lis_id_region;?>"><?=$lis_nombre_region;?></option>
<?php
    } 
?>
    </select>                                      
</div>                 
<?php       
}

/**
 * Imprime select Comuna html con los datos cargados de base de datos en base a la seleccion del select Region.
 * @param {None} $f_accion=="listar_comuna"
 * @returns {None}
 */
if($f_accion=="listar_comuna"){
    $region_id = $_POST["region_id"];                     
    $_listar_comuna = listar_comuna($region_id);
?>
<label for="comuna_id" class="col-md-4 col-form-label align-middle">Comuna</label>
<div class="col-md-8">  
    <select onchange="valida_select_comuna()" id="comuna_id" class="form-select" required autocomplete="off">
        <option class="dropdown-item" value="null" disabled selected>Seleccione una Region</option>
                                                      
<?php  

    for($i=0;$i<sizeof($_listar_comuna);$i++){
        $lis_nombre_comuna = $_listar_comuna[$i]["nombre_comuna"];
        $lis_id_comuna = $_listar_comuna[$i]["id"];
?>             
<option value="<?=$lis_id_comuna;?>"><?=$lis_nombre_comuna;?></option>
<?php
    } 
?>
    </select>                                      
</div>                 
<?php 
}

/**
 * Valida datos  por segunda vez de la forma de votacion para luego ingresarlo a la base de datos.
 * @param {None} $f_accion=="registrar_voto"
 * @param {$_GET["nombre"],$_GET["alias"],$_GET["email"],$_GET["rut"],$_GET["candidato"],$_GET["region"],$_GET["comuna"],$_GET["web"],$_GET["tv"],$_GET["rs"],$_GET["amigo"]} datos de la forma de votacion. 
 * @returns {String}
 */

if($f_accion=="registrar_voto"){
    $nombre = $_GET["nombre"];
    $alias = $_GET["alias"];
    $email = $_GET["email"];
    $rut = $_GET["rut"];
    $candidato = $_GET["candidato"];
    $region = $_GET["region"];
    $comuna = $_GET["comuna"];
    $web = $_GET["web"];
    $tv = $_GET["tv"];
    $rs = $_GET["rs"];
    $amigo = $_GET["amigo"];
    $resp = "";


    if($nombre == "" || strlen($nombre) > 40){
        $resp = $nombre.$resp."- Error, Param{nombre}"."\n";
        $msj = "";
    }
   if($alias == "" || strlen($alias) > 40 || strlen($alias) <= 5 || preg_match('/[A-Za-z]/', $alias) == 0 || preg_match('/[0-9]/', $alias) == 0){
        $resp = $resp."- Error, Param{alias}"."\n";
        $msj = "";
    }
    if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $resp = $resp."- Error, Param{email}"."\n";
        $msj = "";
    }
    if($rut == "" || valida_rut($rut) == false) {
        $resp = $resp."- Error, Param{rut}"."\n";
        $msj = "";
    }
    if(is_numeric($candidato) == false){
        $resp = $resp."- Error, Param{candidato}"."\n";
        $msj = ""; 
    }
    if(is_numeric($region) == false){
        $resp = $resp."- Error, Param{region}"."\n";
        $msj = ""; 
    }
    if(is_numeric($comuna) == false){
        $resp = $resp."- Error, Param{comuna}"."\n";
        $msj = ""; 
    }
    if(is_bool(filter_var($web, FILTER_VALIDATE_BOOLEAN)) != 1){
        $resp = $resp."- Error, Param{web}"."\n";
        $msj = ""; 
    }
    if(is_bool(filter_var($tv, FILTER_VALIDATE_BOOLEAN)) != 1){
        $resp = $resp."- Error, Param{tv}"."\n";
        $msj = ""; 
    }
    if(is_bool(filter_var($rs, FILTER_VALIDATE_BOOLEAN)) != 1){
        $resp = $resp."- Error, Param{rs}"."\n";
        $msj = ""; 
    }
    if(is_bool(filter_var($amigo, FILTER_VALIDATE_BOOLEAN)) != 1){
        $resp = $resp."- Error, Param{amigo}"."\n";
        $msj = ""; 
    }
    else{
        $resultado = registrar_voto($nombre,$alias,$email,$rut,$candidato,$region,$comuna,$web,$tv,$rs,$amigo);
        if($resultado == "ok"){
                $resp = "Voto registrado exitosamente!";
                $msj = "";
        }else{
                $resp = "- Error, este Rut ya se encuentra registrado.";
                $msj = "";
        }
    }
    $_respuesta = array("resp"=>$resp,"msjResp"=>$msj);
    echo json_encode($_respuesta);


}