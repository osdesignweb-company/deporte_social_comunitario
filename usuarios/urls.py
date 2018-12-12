from django.conf.urls import url
from . import views
from .models import Municipio, PerfilUsuario

urlpatterns =[
	url(r'^$',views.index, name = 'index'),
	url('usuarios/Municipio/',views.Municipio_new, name = 'Municipio'),
	url('usuarios/Perfil_usuario/',views.PerfilUsuario_view, name = 'Perfil_usuario'),
]



"""
^ es un marcador de cadena y $ es un marcador de fin de cadena
"""