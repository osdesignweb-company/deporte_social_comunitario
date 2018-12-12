from django import forms 
from .models import Municipio

class MunicipioFormulario(forms.ModelForm):
	class Meta:
		model = Municipio
		fields = ('nombre','codigo','latitud','longitud',)
