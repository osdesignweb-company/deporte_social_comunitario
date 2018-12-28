from django.shortcuts import render, redirect
from django.views import generic
from .forms import PersonasFormularios, UsuariosFormularios
from django.http import HttpResponse

from django.contrib.auth.forms import AuthenticationForm
from django.core.urlresolvers import reverse_lazy
from django.views.generic.edit import FormView
from django.contrib.auth import login 
from django.http.response import HttpResponseRedirect

# Create your views here.

def index(request):
	return render(request,'index.html')


def Personas_view(request):
	if request.method == "POST":
		form = PersonasFormularios(request.POST)
		if form.is_valid():
			post = form.save(commit=False)
			post.save()
			return redirect("/usuarios/")
	

	else:
		form = PersonasFormularios()
	return render(request,'Personas.html',{'form':form})

def Usuarios_view(request):
	if request.method == "POST":
		form = UsuariosFormularios(request.POST)
		if form.is_valid():
			post = form.save(commit=False)
			post.save()
			return redirect("/usuarios/")
		#else:
		#	return HttpResponse('Datos no validos')

	else:
		form = UsuariosFormularios()
	return render(request,'Usuarios.html',{'form':form})




def login(request):
	return render(request,'login.html')
	
	





# def index_dashboard(request)
# 	return render(request,'base_dashboard.html')

