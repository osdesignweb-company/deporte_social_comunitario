form = "#form-wizard-admin-info";
fields = {
            forma_pago: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese la forma de pago del proyecto'
                    }
                }
            },
            recurso_desembolsado_coldeportes: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese un valor de recursos desembolsado por coldeportes'
                    },
                    numeric: {
                        message: 'Por favor ingrese un valor valido'
                    },
                    greaterThan: {
                        message: 'El valor debe ser mayor o igual a 0',
                        value: 0

                    },
                    lessThan:{
                        message: 'El valor desembolsado por Coldeportes debe ser menor al total del proyecto',
                        value: total_proyecto
                    }
                }
            },
            recurso_pendiente_desembolso: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese un valor de recursos pendiente de desembolso'
                    },
                    numeric: {
                        message: 'Por favor ingrese un valor valido'
                    },
                    greaterThan: {
                        message: 'El valor debe ser mayor o igual a 0',
                        value: 0

                    },
                    lessThan:{
                        message: 'El valor desembolsado por Coldeportes debe ser menor al total del proyecto',
                        value: total_proyecto
                    }
                }
            },
            observaciones: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese observaciones del informe'
                    }
                }
            }

        };
$.getScript(base+"js/validaciones/validations-base.js");