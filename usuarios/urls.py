from django.conf.urls import url 
from . import views
from django.contrib.auth.views import login, logout
from django.contrib.auth import views as vs

urlpatterns =[
	url(r'^$',views.index, name = 'index'),
	#url(r'^login/',login,{'template_name':'login.html'},name='Login'),
	url(r'^login/',views.login,name='Login'),
	#url(r'^logout/$',logout,{'template_name':'login.html'}),
	url(r'^Personas/',views.Personas_view,name='Personas'),
	url(r'^Usuarios/',views.Usuarios_view,name='Usuarios'),
	#url(r'^dashboard/',views.index_dashboard,name='Dashboard')
	#url(r'^dashboard/',views.index_dashboard,name='Dashboard'),
	#url('usuarios/Municipio/',views.Municipio_new, name = 'Municipio'),
	#url('usuarios/Perfil_usuario/',views.PerfilUsuario_view, name = 'Perfil_usuario'),
]