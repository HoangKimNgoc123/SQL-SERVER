# Bài tập 03 của sv: K225480106053 - Hoàng Kim Ngọc - Môn Hệ quản trị csdl

## BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

## DEADLINE: 23H59 NGÀY 30/03/2025

## ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)
## BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

## YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
   
## HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

## BÀI LÀM:
1. Sửa bảng DKMH và bảng Diem
   Bảng DKMH: 
   - Thêm trường id_dk và datatype
   
   ![image](https://github.com/user-attachments/assets/ff21a853-9c07-428b-a9b7-152a34d4c425)

   Thêm thuộc tính Identity cho trường id:
   
   ![image](https://github.com/user-attachments/assets/abc9be95-1394-4ab5-ace2-aa0c170cfb01)

   - Xóa PK (khóa chính)
     
   ![1](https://github.com/user-attachments/assets/34a5147d-ec20-4458-8e22-9ab1e4e1ad2d)

   Bảng sau khi đã chỉnh sửa theo yêu cầu:
   
   ![image](https://github.com/user-attachments/assets/156d020d-729e-4681-8863-67f76176c84a)

   Thêm bảng Diem:
   
   ![Không có tiêu đề](https://github.com/user-attachments/assets/99ff5446-6d2b-45bd-b833-cd9bbe4ead5f)

   Tạo các trường id (PK), id_dk, Diem:

   ![image](https://github.com/user-attachments/assets/e1f1b0fe-ceda-4ef3-8330-da8b02b115d5)

   Thêm thuộc tính Identity cho trường id:

   ![image](https://github.com/user-attachments/assets/c23c6344-62eb-4128-bd7b-5b00ee422653)

   Tạo Check Constraint cho trường Diem:

   ![image](https://github.com/user-attachments/assets/9eef088e-445d-4c27-b8bd-1e824f884d85)

3. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
   Nhập data cho bảng SINHVIEN:

   ![image](https://github.com/user-attachments/assets/609d2bdb-da16-4610-bea8-de8eb83df260)

   Nhập data cho bảng LopHP:

   ![image](https://github.com/user-attachments/assets/9f3fcae5-db0a-45a7-b27f-861fd1ce8384)

   Nhập data cho bảng DKMH:
   
   ![image](https://github.com/user-attachments/assets/4b99e6ad-bda0-411d-b0f8-05dc5117d46e)

   Nhập data cho bảng Diem:

   ![image](https://github.com/user-attachments/assets/6bc10fb6-61f7-4ad4-b984-f7c97e305e11)

   Nhập data cho bảng MonHoc:
   
   ![image](https://github.com/user-attachments/assets/fa39c2d7-1e6d-4888-b12d-1daccafed25a)

   Nhập data cho bảng BoMon:

   ![image](https://github.com/user-attachments/assets/83710cf4-87a8-4dde-a7bb-79a6e4b2805f)

   Nhập data cho bảng LopSV:

   ![image](https://github.com/user-attachments/assets/e201ba03-25b2-401e-b607-22068e382106)

5. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
   
   ![Ảnh chụp màn hình 2025-03-30 202342](https://github.com/user-attachments/assets/96f41e86-659d-4e04-a934-94f4eefd5b75)

   - SELECT: Lấy thông tin họ tên sinh viên, mã sinh viên, mã và tên lớp học phần
   - AVG(Diem.Diem): tính trung bình các điểm thành phần từ bảng Diem
   - FROM và JOIN: Kết nối 4 bảng:
       + DKMH với Diem qua id_dk
       + DKMH với LopHP qua MaLopHP
       + DKMH với SINHVIEN qua MaSV

   - WHERE: Lọc dữ liệu cho
       + Sinh viên có mã 'SV1'
       + Lớp học phần có mã 'hp1'
       + Đăng ký môn học có id_dk = '1'
