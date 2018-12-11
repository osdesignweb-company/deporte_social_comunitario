form = "#form-caracterizacion";
fields = {
            municipios_impactados : {
                validators: {
                    notEmpty: {
                        message: 'Por favor seleccione un municipios impactado'
                    }
                }
            },
            localizacion : {
                validators: {
                    notEmpty: {
                        message: 'Por favor seleccione una localizacion '
                    }
                }
            },
            actividades : {
                validators: {
                    notEmpty: {
                        message: 'Por favor seleccione una actividade'
                    }
                }
            },
            edades : {
                validators: {
                    notEmpty: {
                        message: 'Por favor seleccione un rango de edades '
                    }
                }
            },
            indigena_fem : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de indigena femenino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            indigena_mas : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de indigena masculino  '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            afro_fem : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de afro femenino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            afro_mas : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de afro masculino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            raizal_fem : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de raizal femenino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            raizal_mas : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de raizal masculino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            palenquero_fem : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de palenquero femenino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            palenquero_mas : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de palenquero masculino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            campesino_fem : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de campesino femenino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            campesino_mas : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de campesino masculino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            rom_fem : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de rom femenino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            rom_mas : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de rom masculino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            lgtb : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de lgtb '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            discapacidad_fisica_fem : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de discapacidad fisica femenino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            discapacidad_fisica_mas : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de discapacidad fisica masculino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            discapacidad_sensorial_fem : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de discapacidad sensorial femenino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            discapacidad_sensorial_mas : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de discapacidad sensorial masculino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            discapacidad_intelectual_fem : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de discapacidad intelectual femenino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            discapacidad_intelectual_mas : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de discapacidad intelectual masculino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            otros_fem : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de otros femenino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            },
            otros_mas : {
                validators: {
                    notEmpty: {
                        message: 'Por favor ingrese una cantidad de otros masculino '
                    },
                    integer: {
                        message: 'Por favor ingrese una cantidad entera'
                    },
                    greaterThan: {
                        message: 'La cantidad debe ser mayor o igual a 0',
                        value: 0

                    }
                }
            }
        };

$.getScript(base+"js/validaciones/validations-base.js");