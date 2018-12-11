form = "#form-wizard-capacitacion-info";
fields = {
            nombre_capacitacion: {
                validators: {
                    notEmpty: {
                        message: MENSAJE_VACIO
                    }
                }
            },
            proyecto: {
                validators: {
                    notEmpty: {
                        message: MENSAJE_VACIO
                    }
                }
            },
            numero_horas: {
                validators: {
                    notEmpty: {
                        message: MENSAJE_VACIO
                    }
                }
            },
            numero_participantes: {
                validators: {
                    notEmpty: {
                        message: MENSAJE_VACIO
                    }
                }
            },
            lugar: {
                validators: {
                    notEmpty: {
                        message: MENSAJE_VACIO
                    }
                }
            },
            municipios: {
                validators: {
                    notEmpty: {
                        message: MENSAJE_VACIO
                    }
                }
            },
            perfil_poblacion: {
                validators: {
                    notEmpty: {
                        message: MENSAJE_VACIO
                    }
                }
            },
            objetivo: {
                validators: {
                    notEmpty: {
                        message: MENSAJE_VACIO
                    }
                }
            },
            fecha_inicio: {
                validators: {
                    notEmpty: {
                        message: MENSAJE_VACIO
                    },
                    date: {
					    message: 'El valor ingresado no es una fecha válida, debe ser mayor al día de hoy',
                        format: 'YYYY-MM-DD',
                        min: ($.datepicker.formatDate('yy-mm-dd', new Date())).toString()

				    }
                }
            },
            fecha_fin: {
                validators: {
                    notEmpty: {
                        message: MENSAJE_VACIO
                    },
                    date: {
					    message: 'El valor ingresado no es una fecha válida, no puede ser menor a la fecha de inicio',
                        format: 'YYYY-MM-DD',
                        min: 'fecha_inicio'

				    }
                }
            }
        };

//Revalidar campos al ser actualizados
    $("#id_fecha_inicio").on('change',function(e){
        $(form).formValidation('revalidateField', 'fecha_inicio');
    });
    $("#id_fecha_fin").on('change',function(e){
        $(form).formValidation('revalidateField', 'fecha_fin');
    });
$.getScript(base+"js/validaciones/validations-base.js");