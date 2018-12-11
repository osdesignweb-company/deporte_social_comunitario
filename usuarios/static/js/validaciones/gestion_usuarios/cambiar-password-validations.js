form = "#password-reset-change";
fields = {
    old_password: {
        validators: {
            notEmpty: {
                message: MENSAJE_VACIO
            }
        }
    },
    new_password: {
        validators: {
            notEmpty: {
                message: MENSAJE_VACIO
            }
        }

    },
    new_password2: {
        validators: {
            notEmpty: {
                message: MENSAJE_VACIO
            },
            identical: {
                field: 'new_password',
                message: 'Las contraseñas no coinciden entre si'
            }
        }
    }
};

$.getScript(base+"js/validaciones/validations-base.js");