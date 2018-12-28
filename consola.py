import os, django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "usuarios.settings")
django.setup()

from usuarios.models import Personas