# coding=utf-8
from __future__ import unicode_literals
from django.db import models
from django.contrib.auth.models import AbstractUser
from django.core.urlresolvers import reverse


TIPO_MONITOR = (
    (0, 'Líder Institucional'),
    (1, 'Líder Deportivo Comunitario'),
    (2, 'Monitor')
)

TIPO_IDENTIDAD = (
    (0, 'Cédula de Ciudadanía'),
    (1, 'Cédula de Extranjería'),
    (2, 'Pasaporte'),
)

TIPO_GENERO = (
    (1, 'Femenino'),
    (2, 'Masculino'),
)


class PerfilUsuario(AbstractUser):

	tipo_id = models.IntegerField(verbose_name='Tipo de identificación', choices=TIPO_IDENTIDAD)
    identificacion = models.CharField(max_length=100, verbose_name='Número de identificación', unique=True)
    nombre = models.CharField(max_length=100,verbose_name='Nombre')
    primer_apellido = models.CharField(max_length=100,verbose_name='Primer Apellido')
    segundo_apellido = models.CharField(max_length=100,verbose_name='Segundo Apellido')
    genero = models.IntegerField(verbose_name="Género", choices=TIPO_GENERO)
    lugar_nacimiento = models.ForeignKey(Pais.nombre)
    fecha_nacimiento = models.DateField(verbose_name='Fecha de nacimiento')
    creado = models.DateTimeField(auto_now_add=True)

class Directorio(models.Model):
	codigo = models.CharField(max_length=10, null=True, verbose_name='código')
	identificacion = models.CharField(max_length=100, verbose_name='Número de identificación', unique=True)
	telefono = models.CharField(max_length=25, verbose_name="Teléfono")
    foto = models.ImageField(upload_to=file_name, blank=True)
    email = models.CharField(max_length=100, verbose_name='Correo electrónico')
    direccion = models.CharField(max_length=100, verbose_name='Dirección')
    cel = models.FloatField(null=True,verbose_name='Celular')
    Tel_fijo = models.FloatField(verbose_name='Teléfono fijo')
    Ext = models.FloatField(verbose_name='Extensión')


class usuarios(models.Model):
	codigo = models.CharField(max_length=10, null=True, verbose_name='código')
    tipo_usuario = models.CharField(max_length=100)
    identificacion = models.CharField(max_length=100, verbose_name='Número de identificación', unique=True)
    passw = models.CharField(max_length=50, verbose_name='Password')
    rol = models.CharField(max_length=20,verbose_name='Rol')
    estado = models.BooleanField(default=True)




class Pais(models.Model):
    nombre = models.CharField(max_length=255, verbose_name='nombre')
    codigo = models.CharField(max_length=10, null=True, verbose_name='código')
    departamento = models.ForeignKey(Departamento)
    municipio = models.ForeignKey(Municipio)
    ciudad = models.ForeignKey(Ciudad)

    def __str__(self):
        return "%s %s %s %s" % (self.nombre, self.ciudad.nombre ,self.departamento.nombre,self.municipio.nombre)


class Departamento(models.Model):
    nombre = models.CharField(max_length=255, verbose_name='nombre')
    codigo = models.CharField(max_length=10, null=True, verbose_name='código')
    latitud = models.FloatField(null=True)
    longitud = models.FloatField(null=True)

    def __str__(self):
        return self.nombre


class Municipio(models.Model):
    nombre = models.CharField(max_length=255, verbose_name='nombre')
    codigo = models.CharField(max_length=10, null=True, verbose_name='código')
    latitud = models.FloatField(null=True)
    longitud = models.FloatField(null=True)

    def __str__(self):
        return self.nombre


class Ciudad(models.Model):
    nombre = models.CharField(max_length=255, verbose_name='nombre')
    departamento = models.ForeignKey(Departamento)
    codigo = models.CharField(max_length=10, null=True, verbose_name='código')
    latitud = models.FloatField(null=True)
    longitud = models.FloatField(null=True)

    def __str__(self):
        return "%s (%s)" % (self.nombre, self.departamento.nombre)














