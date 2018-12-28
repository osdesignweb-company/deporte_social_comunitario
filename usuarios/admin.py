# coding=utf-8
from django.contrib import admin
from .models import (AuthUser, Personas, Usuarios,
					 Departamentos, DirectorioPersonas,
					 DjangoAdminLog,Municipio,Paises,ReporteUsuario)
# Register your models here.

admin.site.register(DirectorioPersonas)


@admin.register(ReporteUsuario)
class ReporteUsuarioAdmin(admin.ModelAdmin):
	list_display = ['mes']


@admin.register(Personas)
class PersonasAdmin(admin.ModelAdmin):

	list_display = ['id_persona','tipo_documento','nombre',
					'primer_apellido', 'segundo_apellido',
					'fecha_nacimiento','sexo','pais_nacimiento']
	list_filter = ('id_persona','sexo')
	ordering = ('-id_persona',)


@admin.register(Paises)
class PaisesAdmin(admin.ModelAdmin):
	list_display = ['id_pais','pais']
	list_per_page = 25


@admin.register(DjangoAdminLog)
class DjangoAdminLogAdmin(admin.ModelAdmin):
	list_display = ['action_time','user','object_id']


@admin.register(Usuarios)
class UsuariosAdmin(admin.ModelAdmin):
	list_display =['id_usuarios','id_persona','password','rol','activo']

	


@admin.register(AuthUser)
class AuthUserAdmin(admin.ModelAdmin):
	list_display = ['password','last_login','is_superuser',
					'first_name','last_name','email','is_staff',
					'is_active','date_joined']

	
@admin.register(Departamentos)
class DepartamentosAdmin(admin.ModelAdmin):
	list_display = ['id_departamento','departamento']
	list_per_page=25

@admin.register(Municipio)
class MunicipioAdmin(admin.ModelAdmin):
	list_display=['id_municipio','municipio']
	list_per_page =25

