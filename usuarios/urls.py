from django.conf.urls import url
from . import views

urlpatterns =[
	url(r'^$',views.index, name = 'index'),
]



"""
^ es un marcador de cadena y $ es un marcador de fin de cadena
"""