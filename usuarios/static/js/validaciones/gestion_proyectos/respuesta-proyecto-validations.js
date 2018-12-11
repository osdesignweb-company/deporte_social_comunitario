form = "#form-respuesta";
fields = {
            descripcion: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una descripción'
                    }
                }
            }
        };

$.getScript(base+"js/validaciones/validations-base.js");