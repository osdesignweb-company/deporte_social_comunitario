form = "#form-solicitud";
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