/**
 * Validacion de email on keyup a travez del calculo de indexes del string ingresado.
 * @returns {boolean}
 */
function valida_email() {
  let emailID = document.forms["forma_votacion"]["email_id"].value;
  atpos = emailID.indexOf("@");
  dotpos = emailID.lastIndexOf(".");
  trespos = emailID.length;
              
  if(emailID!==null && trespos < 40){
      if ((atpos < 4) || ( dotpos - atpos < 3 ) || (trespos - (dotpos+1) <2)) {
        email_id.classList.remove("border-success");
        email_id.classList.add("border-danger");
        return false;
      }else{
        email_id.classList.remove("border-danger");
        email_id.classList.add("border-success");
        return true;  
      }
  
  }else{
    email_id.classList.remove("border-success");
    email_id.classList.add("border-danger");
    return false;

  }
} 

/**
 * Validacion de nombre y apellido on keyup.
 * @returns {boolean}
 */
function valida_nombre() {
  let nom = document.forms["forma_votacion"]["name_id"].value;
  if(nom=="" || nom.length > 40){
    name_id.classList.remove("border-success");
    name_id.classList.add("border-danger");
    return false;

  }else{
    name_id.classList.remove("border-danger");
    name_id.classList.add("border-success");
    return true;  

  }
} 

/**
 * Validacion de alias on keyup, regex para verificar uso de letras y numero.
 * @returns {boolean}
 */
function valida_alias() {
  let ali = document.forms["forma_votacion"]["alias_id"].value;

  var matches_number = ali.match(/\d+/g);
  var matches_letter = ali.match(/[a-zA-Z]/g);

  if((ali.length < 6) || (matches_number == null) || (matches_letter == null) || ali.length > 40){
    alias_id.classList.remove("border-success");
    alias_id.classList.add("border-danger");
    return false;

  }else{
    alias_id.classList.remove("border-danger");
    alias_id.classList.add("border-success");
    return true;  

  }
} 

/**
 * Validacion de rut on keyup a travez de calculo de indez, regex para validar el digito verificador y que el rut contenga solo valores validos.
 * @returns {boolean}
 */
function valida_rut() {
  let rut = document.forms["forma_votacion"]["rut_id"].value;
  atpos = rut.indexOf(".");
  dotpos = rut.lastIndexOf(".");
  trespos = rut.lastIndexOf("-");
  cuatpos = rut.length;

  if ((rut==null) || (atpos < 1) || (atpos > 2) || (dotpos - atpos != 4 ) || (trespos - dotpos != 4) || (cuatpos - (trespos+1) != 1)) {
    rut_id.classList.remove("border-success");
    rut_id.classList.add("border-danger");
    return false;

  }else{
    let dv = rut.charAt(rut.length - 1);
    rut = rut.substring(0, rut.length - 1);
    rut = rut.replace(".", "");
    rut = rut.replace(".", "");
    rut = rut.replace("-", "");
    var matches_letter = rut.match(/[a-zA-Z]/g);

    if(matches_letter != null){
      rut_id.classList.remove("border-success");
      rut_id.classList.add("border-danger");
      return false;

    }else{
      var M=0
      var S=1;
      for(;rut;rut=Math.floor(rut/10))
        S=(S+rut%10*(9-M++%6))%11;
      var ult = S?S-1:'k';

      if(dv == ult){ 
        rut_id.classList.remove("border-danger");
        rut_id.classList.add("border-success");
        return true;
      }else{
          rut_id.classList.remove("border-success");
          rut_id.classList.add("border-danger");
          return false;
      }
    } 
  } 
}

/**
 * Validacion, que checkboxes se encuentran actualmente selecionados.
 * @returns {boolean}
 */
function valida_box() {
  let web_id = 0;
  let tv_id = 0;
  let rs_id = 0;
  let amigo_id = 0;

  if(document.getElementById('web_id').checked) {
    web_id = 1;
  }
  if(document.getElementById('tv_id').checked) {
    tv_id = 1;
  } 
  if(document.getElementById('rs_id').checked) {
    rs_id = 1;
  } 
  if(document.getElementById('amigo_id').checked) {
    amigo_id = 1;
  } 

  let check = web_id+tv_id+rs_id+amigo_id;

  if(check >= 2){
    return true
  }else{
    return false
  }

} 

/**
 * Validacion de select candidato not null.
 * @returns {boolean}
 */
function valida_select_candidato() {
  let candidato = document.forms["forma_votacion"]["candidato_id"].value;

  if(candidato != "null"){
    candidato_id.classList.remove("border-danger");
    candidato_id.classList.add("border-success");
    return true;
  }else{
    candidato_id.classList.remove("border-success");
    candidato_id.classList.add("border-danger");
    return false;
  }
} 

/**
 * Validacion de select region not null.
 * @returns {boolean}
 */
function valida_select_region() {
  let region = document.forms["forma_votacion"]["region_id"].value;

  if(region != "null"){
    region_id.classList.remove("border-danger");
    region_id.classList.add("border-success");
    return true;
  }else{
    region_id.classList.remove("border-success");
    region_id.classList.add("border-danger");
    return false;
  }
} 

/**
 * Validacion de select comuna not null.
 * @returns {boolean}
 */
function valida_select_comuna() {
  let comuna = document.forms["forma_votacion"]["comuna_id"].value;

  if(comuna != "null"){
    comuna_id.classList.remove("border-danger");
    comuna_id.classList.add("border-success");
    return true;
  }else{
    comuna_id.classList.remove("border-success");
    comuna_id.classList.add("border-danger");
    return false;
  }
}
