form = "#form-wizard-admin-obligacion";
fields = {
            obligacion: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese la obligación'
                    }
                }
            },
            porcentaje_cumplimiento: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese un valor de porcentaje de cumplimiento'
                    },
                    numeric: {
                        message: 'Por favor ingrese un valor valido'
                    },
                    greaterThan: {
                        message: 'El valor debe ser mayor o igual a 0',
                        value: 0

                    },
                    lessThan : {
                        message: 'El porcentaje no puede ser mayor a 100%',
                        value: 100
                    }
                }
            },
            lugar: {
                validators: {
                    notEmpty: {
                        message: 'Por favor seleccione al menos un lugar'
                    }
                }
            },
            actividades: {
                 validators: {
                    notEmpty: {
                        message: 'Por favor ingrese las actividades que se realizaron'
                    },
                    stringLength: {
                        message: 'El tamaño de las actividades debe tener como máximo 500 caracteres',
                        max: 1000
                    }
                }
            }
        };
$.getScript(base+"js/validaciones/validations-base.js");