
# 🏥 Website Bán Hàng Thiết Bị Y Tế Gia Đình

## 📌 Giới thiệu
Đây là đồ án xây dựng hệ thống **Website bán hàng thiết bị y tế** phục vụ cho nhu cầu mua sắm online các sản phẩm y tế gia đình như:
- Máy đo huyết áp
- Nhiệt kế
- Khẩu trang
- Bộ sơ cứu
- Và nhiều sản phẩm khác...

Website được xây dựng bằng **PHP (Laravel Framework)** và **MySQL**, hỗ trợ cả người quản trị (Admin) và khách hàng (User).

---

## 🚀 Chức năng chính

### 👤 Khách hàng
- Đăng ký, đăng nhập, quản lý tài khoản cá nhân.
- Xem danh mục, tìm kiếm và xem chi tiết sản phẩm.
- Thêm sản phẩm vào giỏ hàng, đặt hàng online.
- Xem lịch sử mua hàng, theo dõi trạng thái đơn hàng.

### 🔑 Quản trị viên (Admin)
- Quản lý danh mục sản phẩm (thêm/sửa/xóa, phân cấp cha–con).
- Quản lý sản phẩm (CRUD, quản lý tồn kho, giá bán).
- Quản lý khách hàng và thông tin liên hệ.
- Quản lý đơn hàng (duyệt, hủy, cập nhật trạng thái).
- Phân quyền người dùng (Admin, User).
- Xuất báo cáo quản lý.

---

## 🛠 Công nghệ sử dụng
- **Ngôn ngữ & Framework:** PHP 7.x, Laravel 7.x
- **Cơ sở dữ liệu:** MySQL 4.8.4
- **Frontend:** Blade Template, Bootstrap
- **Công cụ hỗ trợ:** Composer, Artisan CLI, Git, GitHub

---

## ⚙️ Cài đặt và chạy dự án

### 1️⃣ Clone project
```bash
git clone https://github.com/Vutridang/cn-dx22tt8-vutridang-webthietbiyte-laravel.git
cd cn-dx22tt8-vutridang-webthietbiyte-laravel
````

### 2️⃣ Cài đặt dependencies

```bash
composer install
```

### 3️⃣ Tạo file môi trường

```bash
cp .env.example .env
```

* Chỉnh sửa `.env` theo thông tin database MySQL của bạn:

```env
DB_DATABASE=homehealthkit
DB_USERNAME=root
DB_PASSWORD=
```

### 4️⃣ Tạo key và migrate database

```bash
php artisan key:generate
php artisan migrate --seed
```

### 5️⃣ Chạy server

```bash
php artisan serve
```

Truy cập tại: **[http://127.0.0.1:8000]**

Email và password để vào trang admin:
Email: user@admin.com
Password: 123456

---

## 📷 Giao diện (demo)

* Trang chủ: danh mục sản phẩm, sản phẩm nổi bật.
* Trang sản phẩm: chi tiết sản phẩm, tình trạng tồn kho.
* Giỏ hàng & đặt hàng: thao tác nhanh, dễ sử dụng.
* Trang quản trị: quản lý sản phẩm, đơn hàng, khách hàng.

---

## 📌 Tác giả

* 👨‍💻 **Sinh viên thực hiện:** Vũ Trí Đăng
* 👩‍🏫 **Giảng viên hướng dẫn:** ThS. Nguyễn Nhất Lam
* 📚 **Đồ án:** Website bán hàng thiết bị y tế gia đình – PHP/Laravel/MySQL
* 📚 **Link video thuyết trình:** https://drive.google.com/file/d/1_FxpY9vW3seXLtwERbE4cH66eggTZu9V/view?usp=drive_link

