form = "#form-wizard-financiero-info";
fields = {
            ente_deportivo: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese el nombre del ente deportivo'
                    }
                }
            },
            valor_recursos_coldeportes: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese un valor de recursos de coldeportes'
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
            valor_recursos_ente: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese un valor de recursos del ente deportivo'
                    },
                    numeric: {
                        message: 'Por favor ingrese un valor valido'
                    },
                    greaterThan: {
                        message: 'El valor debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            }
        };
$.getScript(base+"js/validaciones/validations-base.js");