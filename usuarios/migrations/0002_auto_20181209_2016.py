# -*- coding: utf-8 -*-
# Generated by Django 1.9.10 on 2018-12-10 01:16
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('usuarios', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='perfilusuario',
            options={},
        ),
        migrations.AlterModelManagers(
            name='perfilusuario',
            managers=[
            ],
        ),
        migrations.RemoveField(
            model_name='perfilusuario',
            name='date_joined',
        ),
        migrations.RemoveField(
            model_name='perfilusuario',
            name='email',
        ),
        migrations.RemoveField(
            model_name='perfilusuario',
            name='first_name',
        ),
        migrations.RemoveField(
            model_name='perfilusuario',
            name='groups',
        ),
        migrations.RemoveField(
            model_name='perfilusuario',
            name='is_active',
        ),
        migrations.RemoveField(
            model_name='perfilusuario',
            name='is_staff',
        ),
        migrations.RemoveField(
            model_name='perfilusuario',
            name='is_superuser',
        ),
        migrations.RemoveField(
            model_name='perfilusuario',
            name='last_login',
        ),
        migrations.RemoveField(
            model_name='perfilusuario',
            name='last_name',
        ),
        migrations.RemoveField(
            model_name='perfilusuario',
            name='password',
        ),
        migrations.RemoveField(
            model_name='perfilusuario',
            name='user_permissions',
        ),
        migrations.RemoveField(
            model_name='perfilusuario',
            name='username',
        ),
    ]