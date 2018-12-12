from django import forms 
from .models import Municipio, PerfilUsuario

class MunicipioFormulario(forms.ModelForm):
	class Meta:
		model = Municipio
		fields = ('nombre','codigo','latitud','longitud',)

class PerfilUsuarioFormulario(forms.ModelForm):
	class Meta:
		model = PerfilUsuario
		fields = ('tipo_id','identificacion','nombre','primer_apellido',
			'segundo_apellido', 'genero', 'lugar_nacimiento', 
			'fecha_nacimiento',)