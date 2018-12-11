form = "#form-eventos";
var init_date;
fields = {
    titulo_evento: {
        validators: {
            notEmpty: {
                message: "El título del evento no puede ser vacío"
            }
        }
    },
    categoria: {
        validators: {
            notEmpty: {
                message: "La categoria del evento no puede ser vacía"
            }
        }
    },
    ciudad_evento: {
        validators: {
            notEmpty: {
                message: "La ciudad del evento no puede ser vacía"
            }
        }
    },
    nombre_lugar: {
        validators: {
            notEmpty: {
                message: "El lugar del evento no puede ser vacío"
            }
        }
    },
    direccion: {
        validators: {
            notEmpty: {
                message: "El lugar del evento no puede ser vacío"
            }
        }
    },
    fecha_inicio: {
        validators: {
            notEmpty: {
                message: 'La fecha de inicio del evento no puede ser vacía'
            },
            date: {
                message: 'El valor ingresado no es una fecha válida, debe ser menor a la de finalización y mayor al día de hoy',
                format: 'YYYY-MM-DD',
                min: function(field, value, validator){
                    if(init_date != ""){
                        return "2016-01-01";
                    }
                    var d = new Date();

                    var curr_date = d.getDate();

                    var curr_month = d.getMonth() + 1;

                    var curr_year = d.getFullYear();
                    return curr_year + "-" + curr_month + "-" + curr_date;

                }
            }
        }
    },
    fecha_finalizacion: {
        validators: {
            notEmpty: {
                message: 'La fecha de finalización del evento no puede ser vacía'
            },
            date: {
                message: 'El valor ingresado no es una fecha válida, debe ser mayor a la de inicio',
                format: 'YYYY-MM-DD',
                min: 'fecha_inicio'
            }
        }
    },
    video: {
        validators:{
            callback:{
                message: "Ingrese una url valida, por ejemplo https://www.youtube.com/watch?v=YYW7klRKl_g",
                callback: function(value, validator){
                    var re = value.match(/^https:\/\/(?:www\.)?youtube.com\/watch\?(?=.*v=\w+)(?:\S+)?$/);
                    return re != null || value =="" ? true : false;
                }
            }

        }
    },
    descripcion_evento: {
        validators: {
            notEmpty: {
                message: 'La descripción del evento no puede ser vacía'
            },
            stringLength:{
                message: "El tamaño la descripción del evento debe ser menor a 3 MB",
                max: 3000000
            }
        }
    },
    cupo_participantes: {
        validators: {
            notEmpty: {
                message: 'el cupo para participantes del evento no puede ser vacío'
            }
        }
    }
};



//Revalidar campos al ser actualizados
$("#id_fecha_inicio").on('change',function(e){
    $("#form-eventos").formValidation('revalidateField', 'fecha_inicio');
    $("#form-eventos").formValidation('revalidateField', 'fecha_finalizacion');
});
$("#id_fecha_finalizacion").on('change',function(e){
    $("#form-eventos").formValidation('revalidateField', 'fecha_inicio');
    $("#form-eventos").formValidation('revalidateField', 'fecha_finalizacion');
});

$.getScript(base+"js/validaciones/validations-base.js");


$(document).ready(function(){
    init_date = $("input#id_fecha_inicio").val();
    $("#id_descripcion_evento")
        .ckeditor({
            language: 'es'
        })
            .editor
                // To use the 'change' event, use CKEditor 4.2 or later
                .on('change', function(evt) {
                    // Revalidate the bio field
                    $('#form-eventos').formValidation('revalidateField', 'descripcion_evento');
                    CKEDITOR.instances.id_descripcion_evento.updateElement();
                });

});