form = "#form-wizard-capacitacion-info";
fields = {
            gestor: {
                validators: {
                    notEmpty: {
                        message: 'Por favor escoja un gestor disponible'
                    }
                }
            }
        };

$.getScript(base+"js/validaciones/validations-base.js");