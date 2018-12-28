from django import forms
from .models import Personas,Usuarios,Paises



class PersonasFormularios(forms.ModelForm):
	class Meta:
		model = Personas
		fields = ('id_persona', 'tipo_documento',
					'nombre','primer_apellido',
					'segundo_apellido','fecha_nacimiento','sexo','pais_nacimiento')

		#fecha_nacimiento = forms.DateField(widget=forms.DateInput(format='%m/%d/%Y'),input_formats=('%m/%d/%Y',))

		widgets = {
			'nombre':forms.Textarea(attrs={'cols':50,'rows':1}),
			'primer_apellido':forms.Textarea(attrs={'cols':50,'rows':1}),
			'segundo_apellido':forms.Textarea(attrs={'cols':50,'rows':1}),
			}
		


class UsuariosFormularios(forms.ModelForm):
	class Meta:
		model = Usuarios
		fields = ('id_usuarios','id_persona','password','rol','inicio_contrato','fin_contrato','contrato','activo')

		widgets = {
			'password':forms.Textarea(attrs={'cols':50,'rows':1}),
			'rol':forms.Textarea(attrs={'cols':50,'rows':1}),
			'contrato':forms.Textarea(attrs={'cols':50,'rows':1}),
			#'activo':forms.Textarea(attrs={'cols':50,'rows':1}),
			
		}















