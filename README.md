#### 1. Cài đặt SQL SERVER 2022
#### 2. Tạo cơ sở dữ liệu và bảng
### BÀI TOÁN:
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
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

### YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql

### Các bước thực hiện
#### 1. Tạo CSDL trên giao diện đồ họa
#### Tạo CSDL QLSV:
![image](https://github.com/user-attachments/assets/d0ea0931-ca99-4d91-a733-fb89fb8b031d)

#### Tạo các bảng dữ liệu
1. Tạo bảng sinh viên (#MaSV, Hoten, Ngaysinh):
   ![image](https://github.com/user-attachments/assets/91e8ae20-6d0c-47d0-bc70-81387a0e4730)
   Tạo các trường đặt khóa chính và lưu tên bảng
   ![image](https://github.com/user-attachments/assets/2f05826d-cd4e-4687-aef3-c223ae207559)

2.Tạo bảng Lớp (#Malop, Tenlop):

   ![image](https://github.com/user-attachments/assets/253345c3-ab87-4c76-9258-445d600e76ef)
   
3.Tạo bảng GVCN (#@Malop, #@MaGV, #HK):

   ![image](https://github.com/user-attachments/assets/6e9a4595-daac-44e9-8252-31dcc0fc39e2)
   
4. Tạo bảng Lớp Sinh viên (#@MaLop, #@MaSV, Chucvu):
   
   ![image](https://github.com/user-attachments/assets/4253b378-3b47-4a2a-afea-ced6da2abde3)
   
5. Tạo bảng Giáo Viên (#MaGV, Hoten, Ngaysinh, @MaBM):
   
   ![image](https://github.com/user-attachments/assets/8f20536c-b4fb-48c4-8971-d41ac9ad9132)
   
6. Tạo bảng bộ môn (#MaBM, TenBM, @MaKhoa):
   
   ![image](https://github.com/user-attachments/assets/d8d6f97c-e497-4960-8c3e-afb3f75020b0)
   
7. Tạo bảng Khoa (#MaKhoa, TenKhoa):
    
   ![image](https://github.com/user-attachments/assets/dab37403-6875-4862-8463-2680e2c63b20)

8. Tạo bảng môn học (#Mamon, Tenmon, STC):
    
   ![image](https://github.com/user-attachments/assets/0060aba2-45d2-45af-b9d8-bae85a0b8dc0)

9. Tạo bảng Lớp HP (#MaLopHP, TenLopHP, HK, @Mamon, @MaGV):
    
   ![image](https://github.com/user-attachments/assets/a69540b8-c90b-45f2-9c5e-72c4225bdba2)

10. Tạo bảng ĐKMH (#@MaLopHP, #@MaSV, DiemTP, DiemThi, PhanTramThi):
    
   ![image](https://github.com/user-attachments/assets/37104bdb-9533-4343-bf96-f5ebb0a0e6e2)
#### Thiết lập các khóa FK, CK cho bảng
1. Thiết lập khóa ngoại (FK) và khóa ràng buộc (CK) cho bảng DKMH:
   ![image](https://github.com/user-attachments/assets/b8f5f8d8-d355-4f12-bc4c-e47a18471cdf)

   ![image](https://github.com/user-attachments/assets/47faf6e6-8a4f-4f0c-9c5c-547bbf608f05)

   ![image](https://github.com/user-attachments/assets/728ad4db-3291-47dd-aa7a-4e002ab1ccba)

   ![image](https://github.com/user-attachments/assets/8e59510e-2b77-42b4-b430-052b8dc2f00b)

   ![image](https://github.com/user-attachments/assets/46c8b2fc-3118-4402-8053-c833e0a50888)

2. Thiết lập khóa ngoại (FK) và khóa ràng buộc (CK) cho bảng GVCN:
   ![image](https://github.com/user-attachments/assets/d7503ab8-73ab-4fe0-9e7e-ada823d28b57)

   ![image](https://github.com/user-attachments/assets/0a46038c-2b2d-43e4-ad42-600b857eb438)
3. Thiết lập khóa ngoại (FK) và khóa ràng buộc (CK) cho bảng BoMon:
   ![image](https://github.com/user-attachments/assets/df228fdf-bc6c-46d8-9c5a-0305a823a5aa)

   ![image](https://github.com/user-attachments/assets/e09ffa9f-08a4-4fa1-9759-10fab81fc2fa)
4. Thiết lập khóa ngoại (FK) và khóa ràng buộc (CK) cho bảng Giaovien:
   ![image](https://github.com/user-attachments/assets/f8e6b948-239f-4d62-b337-d567cb51d25b)

   ![image](https://github.com/user-attachments/assets/8d3d92fc-f0c3-49e8-8f07-264b18042cc0)

   ![image](https://github.com/user-attachments/assets/e79aff77-d32f-48c8-bda1-ed3ada064853)
5. Thiết lập khóa ngoại (FK) và khóa ràng buộc (CK) cho bảng Khoa:
   
   ![image](https://github.com/user-attachments/assets/c06ab78f-b764-49ef-82ca-a8671b050712)

   ![image](https://github.com/user-attachments/assets/d9c0fe39-e14b-4be5-92b6-38a66b153718)
5. Thiết lập khóa ngoại (FK) và khóa ràng buộc (CK) cho bảng LOP:
   
   ![image](https://github.com/user-attachments/assets/15e296d6-5758-4915-84fe-582a55a1fea0)

   ![image](https://github.com/user-attachments/assets/53ad532d-1118-4cfd-ab5d-7aeb50c41435)

6. Thiết lập khóa ngoại (FK) và khóa ràng buộc (CK) cho bảng SINHVIEN
   
   ![image](https://github.com/user-attachments/assets/2bfda381-577a-4686-85b6-cba11367b5d3)

   ![image](https://github.com/user-attachments/assets/f0934b6c-a9ff-4515-ac60-3df820186b08)

   ![image](https://github.com/user-attachments/assets/51243964-cb12-4445-a8e8-2467721015ca)

7. Chuyển các thao tác đồ họa thành lệnh SQL tương đương:
   ![image](https://github.com/user-attachments/assets/ef213697-4b5a-4e14-a3e6-bb76e0871e77)

