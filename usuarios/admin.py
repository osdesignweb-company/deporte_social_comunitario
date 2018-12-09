# coding=utf-8
from django.contrib import admin
from usuarios.models import PerfilUsuario, Directorio, usuarios, Pais, Departamento, Municipio, Ciudad
# Register your models here.


admin.site.register(PerfilUsuario)
admin.site.register(Directorio)
admin.site.register(usuarios)
admin.site.register(Pais)
admin.site.register(Departamento)
admin.site.register(Municipio)
admin.site.register(Ciudad)

"""
class Inline(admin.TabularInline):
	model = PerfilUsuario


@admin.register(Directorio)
class DirectorioAdmin(admin.ModelAdmin):
	list_display = ('código',
					'identificación',
					'Teléfono',
					'Foto',
					'Email',
					'Dirección',
					'Celular',
					'Teléfono fijo',
					'Extensión')
	campos = ['código',
			  'identificación',
			  'Teléfono',
			  'Foto',
	    	  'Email',
			  'Dirección',
			  'Celular',
			  'Teléfono fijo',
			  'Extensión'] 

"""















