form = "#form-wizard-proyecto-info";
fields = {
            nombre: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese el nombre del proyecto'
                    }
                }
            },
            departamento: {
                validators: {
                    notEmpty: {
                        message: 'Por favor seleccione un departamento'
                    }
                }
            },
            descripcion: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una descripción'
                    }
                }
            },
            objetivo: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese el objetivo del proyecto'
                    }
                }
            },
            alcance: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese un alcance'
                    }
                }
            },
            fecha_inicio: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una fecha de inicio de proyecto'
                    },
                    date: {
					    message: 'El valor ingresado no es una fecha válida',
                        format: 'YYYY-MM-DD',
                        message: 'La fecha de inicio de proyecto debe ser mayor al día de hoy',
                        min: ($.datepicker.formatDate('yy-mm-dd', new Date())).toString()

				    }
                }
            },
            fecha_fin: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una fecha de terminación de proyecto'
                    },
                    date: {
					    message: 'El valor ingresado no es una fecha válida',
                        format: 'YYYY-MM-DD',
                        message: 'La fecha de fin del proyecto no puede ser menor a la fecha de inicio',
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