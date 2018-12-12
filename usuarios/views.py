from django.shortcuts import render
from django.views import generic 
from .forms import MunicipioFormulario
# Create your views here.

from .models import *

def index(request):
	#Genera contadores de algunos objetos principales
	num_municipios = Municipio.objects.all().count()
	num_Departamento = Departamento.objects.all().count()
	num_Ciudad = Ciudad.objects.all().count()
	num_Pais = Pais.objects.all().count()
	#num_usuarios = usuarios.count()

	#renderizacion del HTML index.html con los datos en la variable contexto
	return render(
		request,
		'index.html',
		context = {'num_municipios':num_municipios,
					'num_Departamento':num_municipios,
					'num_Ciudad':num_municipios,
					'num_Pais':num_municipios},	
	)



def Municipio_new(request):
	form=MunicipioFormulario()
	return render(request, 'Municipio_list.html',{'form':form})
	