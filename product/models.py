from django.db import models
from django.utils.text import slugify 
from ckeditor.fields import RichTextField

# Create your models here.
class SanPham(models.Model):
    TenSanPham = models.CharField(max_length=255, unique=True)
    GiaKhuyenMai = models.IntegerField(blank=False, null=False)
    GiaBan = models.IntegerField(blank=False, null=False)
    PhanTramGiam = models.IntegerField(blank=True, null=True)
    MoTaNgan = models.TextField(max_length=255)
    MoTaDai = RichTextField()
    ChuyenMuc = models.ForeignKey('ChuyenMuc', on_delete=models.CASCADE, blank=False, null=False)
    The = models.CharField(max_length=255)
    AnhChinh = models.ImageField(upload_to ='uploads/', blank=True, null=True, default='uploads/noimage.jpg')
    AnhPhu1 = models.ImageField(upload_to ='uploads/', blank=True, null=True, default='uploads/default_image.jpg')
    AnhPhu2 = models.ImageField(upload_to ='uploads/', blank=True, null=True, default='uploads/default_image.jpg')
    AnhPhu3 = models.ImageField(upload_to ='uploads/', blank=True, null=True, default='uploads/default_image.jpg')
    DuongDan = models.SlugField(blank=True, null=True)
    TrangThai = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        verbose_name = "Sản Phẩm"
        verbose_name_plural = "Sản Phẩm"
        
        
    def save(self, *args, **kwargs):
        self.DuongDan = slugify(self.TenSanPham)
        self.PhanTramGiam = ((self.GiaKhuyenMai - self.GiaBan) / self.GiaKhuyenMai) * 100
        super(SanPham, self).save(*args, **kwargs)
    
    def __str__(self):
        return self.TenSanPham
    
    
class ChuyenMuc(models.Model):
    TenChuyenMuc = models.CharField(max_length=255)
    DuongDan = models.SlugField(blank=True, null=True)
    HinhAnh = models.ImageField(upload_to ='uploads/', blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        verbose_name = "Chuyên Mục"
        verbose_name_plural = "Chuyên Mục"
        
    def save(self, *args, **kwargs):
        self.DuongDan = slugify(self.TenChuyenMuc)
        super(ChuyenMuc, self).save(*args, **kwargs)
    
    def __str__(self):
        return self.TenChuyenMuc
    
