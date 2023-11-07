# Generated by Django 4.2.7 on 2023-11-07 19:28

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='KhachHang',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('SoDienThoai', models.CharField(blank=True, max_length=11, null=True)),
                ('DiaChi', models.CharField(blank=True, max_length=500, null=True)),
                ('GioiTinh', models.CharField(choices=[('1', 'Nam'), (0, 'Nữ')], max_length=10)),
                ('DuongDan', models.SlugField(blank=True, null=True)),
                ('User', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Khách Hàng',
                'verbose_name_plural': 'Khách Hàng',
            },
        ),
    ]
