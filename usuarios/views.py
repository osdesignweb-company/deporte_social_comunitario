from django.shortcuts import render

# Create your views here.

from .models import *




def index(request):
	#Genera contadores de algunos objetos principales
	num_municipios = Municipios.objects.all().count()
	num_usuarios = Usuarios.all().count()

	#renderizacion del HTML index.html con los datos en la variable contexto
	return render(
		request,
		'index.html',
		contexto = {'num_municipios':num_municipios,'num_usuarios':num_usuarios},
		)




