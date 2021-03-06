# Generated by Django 3.0.2 on 2020-06-29 04:09

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('register', '0002_ownerregistertable'),
    ]

    operations = [
        migrations.CreateModel(
            name='reserve_restaurant',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateField(max_length=100)),
                ('time', models.TimeField(max_length=100)),
                ('contact', models.CharField(max_length=100)),
                ('guests', models.IntegerField()),
                ('restaurant', models.CharField(max_length=200)),
                ('table', models.CharField(default=0, max_length=100)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.DeleteModel(
            name='OwnerRegister',
        ),
    ]
