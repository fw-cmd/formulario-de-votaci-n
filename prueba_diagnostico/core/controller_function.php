<?php

/**
 * Carga la tabla candidato a travez de base de datos.
 * @returns {SQL Array}
 */
function listar_candidato(){
    $db_conexion = new db();

    $sql = "SELECT * FROM candidato";

    $result = $db_conexion->execute_query($sql);

    $num_resultados = mysqli_num_rows($result);	

    $_resultado = Array();
    $i=0;
    if($num_resultados>0){
        while($row = mysqli_fetch_array($result)){ 
            $_resultado[$i]["id"] = $row["id"];
            $_resultado[$i]["nombre_candidato"] = $row["nombre_candidato"];
            $_resultado[$i]["apellido_candidato"] = $row["apellido_candidato"];
            $i++;
        }
    }	

    return $_resultado;
}

/**
 * Carga la tabla region a travez de base de datos.
 * @returns {SQL Array}
 */
function listar_region(){
    $db_conexion = new db();

    $sql = "SELECT * FROM region";

    $result = $db_conexion->execute_query($sql);

    $num_resultados = mysqli_num_rows($result);	

    $_resultado = Array();
    $i=0;
    if($num_resultados>0){
        while($row = mysqli_fetch_array($result)){ 
            $_resultado[$i]["id"] = $row["id"];
            $_resultado[$i]["nombre_region"] = $row["nombre_region"];
            $i++;
        }
    }	

    return $_resultado;
}

/**
 * Carga la tabla comonu a travez de base de datos.
 * @returns {SQL Array}
 */
function listar_comuna($region_id){
    $db_conexion = new db();

    $sql = "SELECT * FROM comuna WHERE id_region ='".$region_id."';";

    $result = $db_conexion->execute_query($sql);

    $num_resultados = mysqli_num_rows($result);	

    $_resultado = Array();
    $i=0;
    if($num_resultados>0){
        while($row = mysqli_fetch_array($result)){
            $_resultado[$i]["id"] = $row["id"];
            $_resultado[$i]["nombre_comuna"] = $row["nombre_comuna"];
            $i++;
        }
    }	

    return $_resultado;
}

/**
 * Ingresa forma votacion en base de datos.
 * @param {string} $nombre
 * @param {string} $alias
 * @param {string} $email
 * @param {string} $rut
 * @param {int} $candidato
 * @param {int} $region
 * @param {int} $comuna
 * @param {string} $web
 * @param {string} $tv
 * @param {string} $rs
 * @param {string} $amigo
 * @returns {boolean}
 */
function registrar_voto($nombre,$alias,$email,$rut,$candidato,$region,$comuna,$web,$tv,$rs,$amigo){
    $db_conexion = new db();

    $sql = "INSERT INTO voto(nombre_apellido, alias, email, rut, candidato_id, region_id, comuna_id, cb_web, cb_tv, cb_rs, cb_amigo) 
                    VALUES('".$nombre."','".$alias."','".$email."','".$rut."','".$candidato."','".$region."','".$comuna."','".$web."','".$tv."','".$rs."','".$amigo."'); ";
    
    try {
        $result = $db_conexion->execute_query($sql);  
        return "ok";
    } catch (\Throwable $th) {
        return "- Error, este Rut ya se encuentra registrado.";
    }



}

/**
 * Valida el formato del
 * @param {string} $rut
 * @returns {boolean}
 */
 function valida_rut($rut) {     
    if ((empty($rut)) || strlen($rut) < 3) {
        return array('error' => true, 'msj' => 'RUT vacío o con menos de 3 caracteres.');
    }

    $parteNumerica = str_replace(substr($rut, -2, 2), '', $rut);

    if (!preg_match("/^[0-9]*$/", $parteNumerica)) {
        return array('error' => true, 'msj' => 'La parte numérica del RUT sólo debe contener números.');
    }

    $guionYVerificador = substr($rut, -2, 2);

    if (strlen($guionYVerificador) != 2) {
        return array('error' => true, 'msj' => 'Error en el largo del dígito verificador.');
    }


    if (!preg_match('/(^[-]{1}+[0-9kK]).{0}$/', $guionYVerificador)) {
        return array('error' => true, 'msj' => 'El dígito verificador no cuenta con el patrón requerido');
    }


    if (!preg_match("/^[0-9.]+[-]?+[0-9kK]{1}/", $rut)) {
        return array('error' => true, 'msj' => 'Error al digitar el RUT');
    }

    $rutV = preg_replace('/[\.\-]/i', '', $rut);
    $dv = substr($rutV, -1);
    $numero = substr($rutV, 0, strlen($rutV) - 1);
    $i = 2;
    $suma = 0;
    foreach (array_reverse(str_split($numero)) as $v) {
        if ($i == 8) {
            $i = 2;
        }
        $suma += $v * $i;
        ++$i;
    }
    $dvr = 11 - ($suma % 11);
    if ($dvr == 11) {
        $dvr = 0;
    }
    if ($dvr == 10) {
        $dvr = 'K';
    }
    if ($dvr == strtoupper($dv)) {
        return false;
    } else {
        return true;
    }
}

?>