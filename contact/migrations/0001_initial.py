# Generated by Django 4.2.7 on 2023-11-07 19:28

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='LienHe',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('TenKhachHang', models.CharField(max_length=255)),
                ('Email', models.CharField(max_length=255)),
                ('SoDienThoai', models.CharField(max_length=11)),
                ('TieuDe', models.CharField(max_length=500)),
                ('NoiDung', models.TextField()),
            ],
            options={
                'verbose_name': 'Liên Hệ',
                'verbose_name_plural': 'Liên Hệ',
            },
        ),
    ]
