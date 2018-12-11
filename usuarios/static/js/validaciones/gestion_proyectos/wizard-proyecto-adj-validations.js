form = "#form-wizard-proyecto-adj";
fields = {
            nombre: {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese el nombre del adjunto'
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
            archivo: {
                validators: {
                    callback: {
                        message: 'El archivo adjunto no puede ser vacío',
                        callback: function(fieldValue, validator){
                            var $padre = $("#id_archivo_identificacion").parent();
                            var count = $padre.find("a").length;
                            return count > 0? true:  Boolean(fieldValue);
                        }
                    },
                    file: {
                        extension: 'png,jpg,jpeg,svg,pdf,xls,xlsx',
                        message: 'Seleccione un archivo con alguno de los siguientes formatos (pdf, xls,xlsx, png, jpg, jpeg, svg) cuyo tamaño sea menor a 5MB',
                        maxSize: 5242880 // 5MB: http://www.beesky.com/newsite/bit_byte.htm
                    }
                }
            }
        };

$.getScript(base+"js/validaciones/validations-base.js");