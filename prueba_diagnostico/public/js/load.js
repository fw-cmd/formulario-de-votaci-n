/**
 * Se hace llamado a una funcion mediante un metodo POST para luego cargar datos en un DIV recipiente con datos html. Objetivo: select candidato_id
 * @returns {HTML Data}
 */
function carga_candidato() {
    $.post("core/controller.php", {faccion: "listar_candidato"}, function (data) {
        $("#container_candidato").html(data);
    });
 }

 /**
 * Se hace llamado a una funcion mediante un metodo POST para luego cargar datos en un DIV recipiente con datos html. Objetivo: select region_id
 * @returns {HTML Data}
 */
 function carga_region() {
    $.post("core/controller.php", {faccion: "listar_region"}, function (data) {
        $("#container_region").html(data);
    });
 }

 /**
 * Se hace llamado a una funcion mediante un metodo POST para luego cargar datos en un DIV recipiente con datos html. Objetivo: select comuna_id
 * @returns {HTML Data}
 */
 function carga_comuna() {
    var e = document.getElementById("region_id");
    var region_id = e.value;

    $.post("core/controller.php", {region_id: region_id, faccion: "listar_comuna"}, function (data) {
        $("#container_comuna").html(data);
    });
 }