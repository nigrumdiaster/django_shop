from django.shortcuts import render, redirect, HttpResponse
from django.http import JsonResponse
from django.views import View
from django.contrib.auth.models import User
from customer.models import KhachHang
from .models import *
from website.models import *
# Create your views here.

template_error = '404error.html'


class CartList(View):
    
    template_name = 'cart/list.html'

    def get(self, request):
        user = User.objects.all().get(id=request.user.id)
        khachhang = KhachHang.objects.all().get(User=user)
        giohang = GioHang.objects.all().filter(KhachHang=khachhang)
        total_price = 0
    
        for item in giohang:
            total_price += item.SoLuong * item.GiaBan
        
        loaithongtin = LoaiThongTin.objects.all().get(MaLoai="phiship")
        phiship = ThongTin.objects.all().get(LoaiThongTin=loaithongtin).GiaTri
        
        loaithongtin = LoaiThongTin.objects.all().get(MaLoai="phivat")
        phivat = ThongTin.objects.all().get(LoaiThongTin=loaithongtin).GiaTri
        
        thanhtoan = int(total_price + int(phiship)) 
        thanhtoan = thanhtoan + int(thanhtoan * int(phivat) / 100)
        
        data = {"title": "Giỏ hàng", "giohang": giohang, "thanhtoan": thanhtoan, "phiship": phiship, "phivat": phivat, "total_price": total_price}
        return render(request, self.template_name, data)

def AddProductToCart(request):
    if not request.user.is_authenticated:
        return JsonResponse({"error": "Vui Lòng Đăng Nhập Để Thêm Sản Phẩm Vào Giỏ Hàng!"})
    
    if request.method == "POST":
        try:
            masanpham = int(request.POST['masanpham'])
            soluong = request.POST['soluong']
            sanpham = SanPham.objects.get(id=masanpham)
            user = User.objects.get(id=request.user.id)
            khachhang, created = KhachHang.objects.get_or_create(User=user)
            
            if int(soluong) <= 0 or soluong == "":
                return JsonResponse({"error": "Số Lượng Sản Phẩm Phải Lớn Hơn 0!"})
            
            cart_item, created = GioHang.objects.get_or_create(KhachHang=khachhang, SanPham=sanpham)
            
            if not created:
                cart_item.SoLuong += int(soluong)
                cart_item.save()
                return JsonResponse({"success": "Cập Nhật Số Lượng Sản Phẩm Trong Giỏ Hàng Thành Công!"})
            else:
                cart_item.SoLuong = int(soluong)
                cart_item.save()
                return JsonResponse({"success": "Thêm Sản Phẩm Vào Giỏ Hàng Thành Công!"})
        except Exception as e:
            return JsonResponse({"error": f"Có Lỗi Khi Thêm Sản Phẩm Vào Giỏ Hàng! {str(e)}"})

    elif request.method == "GET":
        try:
            masanpham = int(request.GET.get('masanpham'))
            sanpham = SanPham.objects.get(id=masanpham)
            user = User.objects.get(id=request.user.id)
            khachhang, created = KhachHang.objects.get_or_create(User=user)
            
            cart_item, created = GioHang.objects.get_or_create(KhachHang=khachhang, SanPham=sanpham)
            
            if not created:
                cart_item.SoLuong += 1
                cart_item.save()
                return JsonResponse({"success": "Cập Nhật Số Lượng Sản Phẩm Trong Giỏ Hàng Thành Công!"})
            else:
                return JsonResponse({"success": "Thêm Sản Phẩm Vào Giỏ Hàng Thành Công!"})
        except Exception as e:
            return JsonResponse({"error": f"Có Lỗi Khi Thêm Sản Phẩm Vào Giỏ Hàng! {str(e)}"})

def UpdateNumberToCart(request):
    if not request.user.is_authenticated:
        return JsonResponse({"error": "Vui Lòng Đăng Nhập!"})
    
    if request.method == "POST":
        try:
            magiohang = request.POST['magiohang']
            soluong = request.POST['soluong']
            
            if int(soluong) <= 0:
                return JsonResponse({"error": "Số Lượng Phải Lớn Hơn 0!"})

            if soluong == "":
                return JsonResponse({"error": "Không Được Bỏ Trống Số Lượng!"})
            
            giohang = GioHang.objects.all().get(id=magiohang)
            giohang.SoLuong = soluong
            giohang.save()
            return JsonResponse({"success": "Cập Nhật Số Lượng Phẩm Thành Công!"})
        except:
            return JsonResponse({"error": "Có Lỗi Khi Cập Nhật Sản Phẩm!"})

def DeleteProductToCart(request, id):
    if not request.user.is_authenticated:
        return redirect('cart_list')
    
    try:
        giohang = GioHang.objects.all().get(id=id)
        giohang.delete()
        return redirect('cart_list')
    except:
        return JsonResponse({"error": "Có Lỗi Khi Xóa Sản Phẩm!"})
    
def CheckPropertyProduct(request):
    if not request.user.is_authenticated:
        return JsonResponse({"error": "Vui Lòng Đăng Nhập!"})
    
    if request.method == "POST":
        try:
            user = User.objects.all().get(id=request.user.id)
            khachhang = KhachHang.objects.all().get(User=user)
            giohang = GioHang.objects.all().filter(KhachHang=khachhang, SoLuong=0)
            
            if giohang.count() >= 1:
                return JsonResponse({"error": "Số Lượng Sản Phẩm Phải Lớn Hơn 0!"})
            
            return JsonResponse({"success": "Giỏ Hàng Hợp Lệ!"})
        except:
            return JsonResponse({"error": "Có Lỗi Khi Kiểm Tra Giỏ Hàng!"})
    else:
        return redirect('cart_list')