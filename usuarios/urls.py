from django.conf.urls import url
from . import views
from .models import Municipio

urlpatterns =[
	url(r'^$',views.index, name = 'index'),
	url('usuarios/Municipio/',views.Municipio_new, name = 'Municipio'),
]



"""
^ es un marcador de cadena y $ es un marcador de fin de cadena
"""