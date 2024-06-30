/**
 * Envia datos de forma a controlador php.
 * @returns {string}
 */
$(document).ready(function(){
    $("#submit_voto").click(function(){
        if(valida_email() == true && valida_nombre() == true && valida_alias() == true && valida_rut() == true && valida_box() == true && valida_select_candidato() == true && valida_select_region() == true && valida_select_comuna() == true){
         
        var nombre_u = $("#name_id").val();
        var alias_u = $("#alias_id").val();
        var email_u = $("#email_id").val();
        var rut_u = $("#rut_id").val();

        var candidato_u = $('#candidato_id').find(":selected").val();
        var region_u = $('#region_id').find(":selected").val();
        var comuna_u = $('#comuna_id').find(":selected").val();

        var web_u = false;
        if(document.getElementById('web_id').checked) {
            web_u = true;
        }
        var tv_u = false;
        if(document.getElementById('tv_id').checked) {
            tv_u = true;
        }
        var rs_u = false;
        if(document.getElementById('rs_id').checked) {
            rs_u = true;
        }
        var amigo_u = false;
        if(document.getElementById('amigo_id').checked) {
            amigo_u = "true";
        }


         $.getJSON( "core/controller.php", { nombre: nombre_u, 
            alias: alias_u,
            email: email_u,
            rut: rut_u,
            candidato: candidato_u,
            region: region_u,
            comuna: comuna_u,
            web: web_u,
            tv: tv_u,
            rs: rs_u,
            amigo: amigo_u,
            faccion: "registrar_voto" }, 

             function(json){
                alert(json.resp);
                location.reload();
             });

         }else{
            let str = ""

            if(valida_email() == false){
                str = str + "- Formato de email invalido." + "\n"
            }
            if(valida_nombre() == false){
                str = str + "- Nombre no debe ser vacío."  + "\n"
            }
            if(valida_alias() == false){
                str = str + "- Alias debe poseer al menos 5 caracteres entre letras y numeros."  + "\n"
            }
            if(valida_rut() == false){
                str = str + "- Formato de Rut invalido."  + "\n"
            }
            if(valida_box() == false){
                str = str + "- Sección 'como se entero de nosotros' debe marcar menos 2 opciones."  + "\n"
            }
            if(valida_select_candidato() == false){
                str = str + "- Candidato no seleccionado."  + "\n"
            }
            if(valida_select_region() == false){
                str = str + "- Región no seleccionada."  + "\n"
            }
            if(valida_select_comuna() == false){
                str = str + "- Comuna no seleccionada."  + "\n"
            }
            alert(str)
        }    
    });
});
