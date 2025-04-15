# 📘 Bài Tập 4: Hệ Thống Thời Khoá Biểu (SQL Server)

## 📌 Yêu cầu bài toán

- Tạo cơ sở dữ liệu cho hệ thống Thời Khoá Biểu (TKB).
- Dữ liệu được lấy từ hệ thống [TMS - TNUT](https://tms.tnut.edu.vn).
- Thiết kế các bảng đạt chuẩn **3NF**.
- Viết truy vấn trả về 4 cột:
  - Họ tên giảng viên
  - Tên môn học
  - Giờ vào lớp
  - Giờ ra lớp
## 🧭 Các bước thực hiện
1. Phân tích đề bài:
   - Thời khóa biểu (TKB) bao gồm hệ thống thông tin giáo viên (-> bảng giaoVien), thông tin lớp học (-> bảng lopHoc), thông tin
môn học (-> bảng monHoc), thông tin phòng học (-> bảng phongHoc), thời gian tiết học (-> bảng thoiGian), bảng giao TKB để liên kết
các bảng thành một hệ thống chặt chẽ.
   - Viết các function tính giờ vào (fn_gioVao) và giờ ra (fn_gioRa) để có thể truy vấn thời gian bận của các giáo viên.
   - Viết lệnh truy vấn lưu trong Stored Procedures để có thể tái sử dụng và dùng nhiều lần.                                                                                                                         
3. 🗂️ **Tạo cơ sở dữ liệu**:
   - Tạo database mới
     
      ![image](https://github.com/user-attachments/assets/c2cc501d-6afc-4089-98e2-f3c016520736)
     
2. 🧱 **Tạo các bảng**:
   - Tạo bảng mới:
     
      ![Không có tiêu đề](https://github.com/user-attachments/assets/611f9244-e25c-40f7-a1e8-4f4980e87347)

   - Design bảng giaoVien (maGiaoVien - PK, tenGiaoVien):
   
      ![Không có tiêu đề](https://github.com/user-attachments/assets/1c631bd3-4e1a-487e-ac72-e38ccccdf79f)

   - Design bảng lopHoc (maLop - PK, tenLop):
  
      ![Không có tiêu đề](https://github.com/user-attachments/assets/1e86f227-57fc-4cfb-8246-6e1f1c24ad21)

   - Design bảng monHoc (maMon - PK, tenMon, soTinChi):
  
      ![Không có tiêu đề](https://github.com/user-attachments/assets/279ab40b-6a70-49a8-8871-1ee15e4f050e)

   + Tạo check constrait:

     ![image](https://github.com/user-attachments/assets/0bbac732-a09c-488e-b4a7-81572f2ba3c0)

   - Design bảng phongHoc (maPhong - PK, tenPhong):

    ![Không có tiêu đề](https://github.com/user-attachments/assets/6d2e1403-640d-486a-b09b-82532e6c5b48)

   - Design bảng thoiGian:

      ![Không có tiêu đề](https://github.com/user-attachments/assets/b9cf7a54-4cc0-46ba-840e-cfe096f4f553)

   - Design bảng TKB (id - PK, maGiaoVien, maLop, maPhong, maMon, tietBatDau, soTiet):

      ![Không có tiêu đề](https://github.com/user-attachments/assets/5d999cfc-1f87-4d78-bb0a-016f267ee3bc)

   + Tạo FK (Foreign Keys) với bảng giaoVien:
     
      ![image](https://github.com/user-attachments/assets/6d7138c9-8d3b-403f-861e-7c56f3ea43fc)

   + Tạo FK (Foreign Keys) với bảng lopHoc:

      ![image](https://github.com/user-attachments/assets/9f17bca1-eb3e-456d-bd86-ce481fcb486e)

   + Tạo FK (Foreign Keys) với bảng monHoc:

     ![image](https://github.com/user-attachments/assets/9ca3875f-8f00-4212-8963-f4cae1f3333f)

   + Tạo FK (Foreign Keys) với bảng phongHoc:

      ![image](https://github.com/user-attachments/assets/32b24293-3c67-4b1a-b806-782d48dc2f8a)
  
   - Bảng Diagram database:
  
      ![image](https://github.com/user-attachments/assets/7c7afeb5-fe8f-4b2f-84e6-b35ad14a7119)

3. 🛠️ **Nhập dữ liệu mẫu**

   - Download dữ liệu từ  [TMS - TNUT](https://tms.tnut.edu.vn)
   - Chuẩn hóa dữ liệu các bảng về chuẩn 3NF (Sử dụng excel):

     ![image](https://github.com/user-attachments/assets/0c148ce6-46e3-4bff-a5ca-9395ea6c5854)

   - Thêm dữ liệu vào các bảng
   + Bảng giaoVien:

      ![image](https://github.com/user-attachments/assets/57fa1b61-9822-48d9-aa8d-f7db34d737c7)

   + Bảng lopHoc:

     ![image](https://github.com/user-attachments/assets/240c26c1-1da0-48ce-a8f0-cddcfc397d6c)

   + Bảng monHoc:

     ![image](https://github.com/user-attachments/assets/e1d528dc-ed84-435b-a95a-63db0c60a379)

   + Bảng phongHoc:

     ![image](https://github.com/user-attachments/assets/2169374f-0031-456a-9acb-284743fba008)

   + Bảng thoiGian:

     ![image](https://github.com/user-attachments/assets/80213a45-0a27-4f6e-a42b-a0fbc42ceb30)

   + Bảng TKB:

     ![image](https://github.com/user-attachments/assets/cb1ad62b-ada3-488c-b4f7-966909659e96)

5. 🔧 **Viết function**
   - Tạo function mới:
     
     ![Không có tiêu đề](https://github.com/user-attachments/assets/c2959adb-4fc3-4b7f-a2e5-aa8e5423aa04)

   + Viết function fn_gioVao(): 
     
   ![image](https://github.com/user-attachments/assets/3ae2466c-670b-42cc-9e62-1b41a7ef6f39)

   + Viết funtion fn_gioRa():

    ![image](https://github.com/user-attachments/assets/a8d9e986-84d3-427b-a01d-bc87379c42ea)
  
   - Tạo mới thủ tục:

     ![Không có tiêu đề](https://github.com/user-attachments/assets/cbdbea4b-b1e1-4081-8820-78f5fb3fc8ce)

   + Viết lệnh truy vấn các giáo viên bận dạy:

    ![image](https://github.com/user-attachments/assets/2b598c03-e879-44e3-a981-d3908200f081)

   - Viết xong các hàm và thủ tục thì execute để lưu vào database:

    ![image](https://github.com/user-attachments/assets/3f41c31e-fa4a-4273-92ed-489fe7bf1c3e)

7. 🔍 **Kiểm tra kết quả**
   - Viết lệnh truy vấn giáo viên bận dạy:

     ![image](https://github.com/user-attachments/assets/cb6fe600-51aa-4830-82bf-b929cc128044)
  
