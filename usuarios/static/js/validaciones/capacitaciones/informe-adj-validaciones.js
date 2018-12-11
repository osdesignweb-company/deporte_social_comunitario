form = "#form-informe";
fields = {
    resultados: {
        validators: {
            file: {
                extension: 'png,jpg,jpeg,svg,pdf,xls,xlsx',
                message: 'Seleccione un archivo con alguno de los siguientes formatos (pdf, xls,xlsx, png, jpg, jpeg, svg) cuyo tamaño sea menor a 5MB',
                maxSize: 5242880 // 5MB: http://www.beesky.com/newsite/bit_byte.htm
            }
        }
    }
};

$.getScript(base+"js/validaciones/validations-base.js");