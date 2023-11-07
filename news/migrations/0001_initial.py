# Generated by Django 4.2.7 on 2023-11-07 19:28

import ckeditor.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='TinTuc',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('TieuDe', models.CharField(max_length=500)),
                ('AnhChinh', models.ImageField(upload_to='uploads/')),
                ('The', models.CharField(max_length=255)),
                ('NoiDung', ckeditor.fields.RichTextField()),
                ('DuongDan', models.SlugField(blank=True, max_length=550, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
            options={
                'verbose_name': 'Bài Viết',
                'verbose_name_plural': 'Bài Viết',
            },
        ),
    ]
