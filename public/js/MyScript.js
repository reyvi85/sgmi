function Precargador(capa, msg=' Cargando ...'){
    $("#"+capa).html("<h5 class=\"text-center\"><span class=\"badge badge-pill badge-info\"><i class=\"fas fa-spinner fa-pulse\"></i> "+msg+"</span></h5>");
}

function enviarFormulario(btnForm, formId, capaPrecarga, capaContenedora) {
    $.ajaxSetup({
        headers: { 'X-CSRF-Token' : $('meta[name=_token]').attr('content') }
    });
    if($("#"+formId).valid()) {
        Precargador(capaPrecarga, 'Enviando datos ...');
        
        $("#"+btnForm).prop('disabled', true);
            $.ajax({
                url: $('#' + formId).attr('action'),
                type: $('#' + formId).attr('method'),
                data: $('#' + formId).serialize(),
                dataType: 'html',
                
                success: function (result) {
                    $("#" + capaPrecarga).hide();
                    $('#' + capaContenedora).html(result);
                },
                error: function () {
                    alert("ERROR: Ocurrió algún problema y no pudo llevarse a cabo la acción");
                    $("#"+btnForm).prop('disabled', false);
                }
            });
        
    }
}

function SaveModal(IdModal,btnForm, formId, capaPrecarga, capaContenedora) {
    $.ajaxSetup({
        headers: { 'X-CSRF-Token' : $('meta[name=_token]').attr('content') }
    });
    if($('#'+formId).valid()) {
        Precargador(capaPrecarga, 'Enviando datos ...');        
        $("#"+btnForm).prop('disabled', true);
           $.ajax({
                url: $('#' + formId).attr('action'),
                type: $('#' + formId).attr('method'),
                data: $('#' + formId).serialize(),
                dataType: 'html',

                success: function (result) {
                    $("#" + capaPrecarga).hide();
                    $("#"+IdModal).modal('hide');
                    $('body').removeClass('modal-open');
                    $('.modal-backdrop').remove();
                    $('body').removeAttr('class');
                    $('body').removeAttr('style');
                    $('nav').removeAttr('style');
                    $(".modal-backdrop fade show").remove();
                    $('#' + capaContenedora).html(result);
                },
                error: function () {
                    alert("ERROR: Ocurrió algún problema y no pudo llevarse a cabo la acción");
                    $("#"+btnForm).prop('disabled', false);
                }
            });
        
    }
}

function CargaContenido(url, capaContenedora = 'contenido') {
    Precargador(capaContenedora);
    $.get( url, function (data) {
        $("#"+capaContenedora).html(data);
    } );
}

function AutoRefresca(capaContenedora, url, tiempo = 1){
    setInterval(function() {
        $.get( url, function (data) {
            $("#"+capaContenedora).html(data);
        } );
    }, tiempo*1000);
}

function AutoCarga(capaContenedora, url){
    $(document).ready(function(){
        Precargador(capaContenedora,' Cargando');
        $.get( url, function (data) {
            $("#"+capaContenedora).html(data);
        } );
    });
}