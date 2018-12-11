form = "#form-wizard-financiero-recurso";
fields = {
            nombre_contratista: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese el nombre del contratista'
                    }
                }
            },
            numero_contrato: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese un numero o código de contrato'
                    }
                }
            },
            valor_total: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese un valor de total del contrato'
                    },
                    numeric: {
                        message: 'Por favor ingrese un valor valido'
                    },
                    greaterThan: {
                        message: 'El valor debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            fecha_inicio: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una fecha de inicio de contrato'
                    },
                    date: {
					    message: 'El valor ingresado no es una fecha válida',
                        format: 'YYYY-MM-DD'
				    }
                }
            },
            fecha_terminacion: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una fecha de terminación de contrato'
                    },
                    date: {
					    message: 'El valor ingresado no es una fecha válida',
                        format: 'YYYY-MM-DD',
                        message: 'La fecha de terminación de contrato debe ser mayor a la fecha de inicio',
                        min: 'fecha_inicio'
				    }
                }

            },
            objeto: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese un objeto de contrato'
                    },
                    stringLength: {
                        message: 'El tamaño del objeto debe tener como máximo 1000 caracteres',
                        max: 1000
                    }
                }
            }
        };
//Revalidar campos al ser actualizados
    $("#id_fecha_inicio").on('change',function(e){
        $(form).formValidation('revalidateField', 'fecha_inicio');
        $(form).formValidation('revalidateField', 'fecha_terminacion');
    });
    $("#id_fecha_terminacion").on('change',function(e){
        $(form).formValidation('revalidateField', 'fecha_terminacion');
    });
$.getScript(base+"js/validaciones/validations-base.js");