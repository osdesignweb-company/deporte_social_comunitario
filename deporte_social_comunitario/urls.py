"""deporte_social_comunitario URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""

# coding=utf-8
from django.conf.urls import url, include
from django.conf.urls.static import static
from django.contrib import admin
from django.views.generic import RedirectView
from django.conf import settings 


urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^usuarios/', include('usuarios.urls')),
    url('', RedirectView.as_view(url='usuarios',permanent=True)),
]

urlpatterns+=static(settings.STATIC_URL,document_root=settings.STATIC_ROOT)



"""
Los mapeos URL estan gestionados por la variable urlpatterns
que es una lista de python de funciones path()
cada funcion path() asocia un patron URL a una vista 
especifica

"""


