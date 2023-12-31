# Generated by Django 4.2.7 on 2023-12-27 13:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('order', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='donhang',
            name='PhuongThuc',
            field=models.CharField(choices=[('cod', 'Thanh toán khi giao hàng'), ('ppl', 'Thanh toán qua paypal')], default='cxl', max_length=25),
        ),
        migrations.AlterField(
            model_name='donhang',
            name='TrangThai',
            field=models.CharField(choices=[('cxl', 'Chưa Xử Lý'), ('dxl', 'Đã Xử Lý'), ('dcbh', 'Đang Chuẩn Bị Hàng'), ('dgh', 'Đang Giao Hàng'), ('dghh', 'Đã Giao Hàng'), ('khh', 'Khách Hàng Hủy'), ('adh', 'Admin Hủy'), ('dtt', 'Đã thanh toán')], default='cxl', max_length=25),
        ),
    ]
