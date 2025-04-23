# 📘 Bài Tập 5: THAO TÁC VỚI TRIGGER (SQL Server)

## 📌 Yêu cầu bài toán
A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

HƯỚNG DẪN CÁCH LÀM:

Hướng dẫn làm phần A: 
 - Chỉ cần nêu ra y/c của đồ án.
 - Không cần chụp quá trình làm ra db, tables.
 - Chỉ cần đưa ra db gồm các bảng nào,
   mỗi bảng có các trường nào, kiểu dữ liệu nào,
   và pk, fk, ck của các bảng.

Hướng dẫn làm phần B:
1. Sv tạo repo mới trên github, cho phép truy cập public.
2. Tạo file Readme.md, đầu file để thông tin cá nhân sv.
3. Tiếp theo đưa phần A vào file Reame.md .
3. Các thao tác làm trên csdl bằng phần mềm ssms.
4. Chụp ảnh màn hình quá trình làm.
5. Paste ngay vào Readme.md, 
   rồi gõ mô tả ảnh này làm gì, nhập gì, hay đạt được điều gì...
6. Có thể thêm những nhận xét hoặc kết luận
   cho việc bản thân đã hiểu rõ thêm về 1 vấn đề gì đó.
7. Lặp lại các step 4 5 6 cho đến khi hoàn thành yêu cầu của phần B.
8. Xuất các file sql chứa cấu trúc và data, up lên cùng repo.
9. Link đến repo cần mở được trực tiếp nội dung, 
   Paste link này vào file excel online ghim trên nhóm.
   Thầy sẽ dùng tool để check các link này.

DEADLINE: 23H59:59 NGÀY 23/04/2025
    
## 🧭 Các bước thực hiện
1. 🎯**Phân tích đề bài** :
   Để xây dựng hệ thống chuyển đổi giọng nói thành văn bản, bạn cần các bảng sau:
   - Ngonngu: Lưu thông tin về các ngôn ngữ hỗ trợ, giúp xác định ngôn ngữ của âm thanh và văn bản.
   - NguoiDUng: Lưu thông tin người dùng, giúp quản lý tài khoản và các hoạt động của người dùng trong hệ thống.
   - Job_Xu_ly: Lưu các công việc xử lý âm thanh, giúp quản lý thông tin công việc như thời gian, ngôn ngữ, trạng thái.
   - DuLieuVao: Lưu dữ liệu âm thanh đầu vào, giúp lưu trữ và quản lý các file âm thanh của người dùng.
   - Ketquaxuly: Lưu kết quả chuyển đổi âm thanh thành văn bản, bao gồm cả văn bản và các thông tin liên quan (độ tin cậy, số từ).
   - GD_ThanhToan: Lưu thông tin giao dịch thanh toán, giúp quản lý các giao dịch liên quan đến việc xử lý âm thanh.
   - Lichsuchuyendoi: Lưu lịch sử chuyển đổi, giúp theo dõi quá trình và kết quả của các công việc chuyển đổi.                                                                                                                        
2. 🗂️ **Tạo cơ sở dữ liệu**:
   - Tạo database mới
     
      ![image](https://github.com/user-attachments/assets/c2cc501d-6afc-4089-98e2-f3c016520736)
     
3. 🧱 **Tạo các bảng**:
   
   - Bảng DuLieuVao :

     ![image](https://github.com/user-attachments/assets/fcf2d9f6-a7b1-4443-adf2-8a019d592bce)

     Tạo FK với bảng Nguoidung:

     ![image](https://github.com/user-attachments/assets/b3be321d-a057-41e2-9288-92d90844928a)

     Tạo FK với bảng Ngonngu:

     ![image](https://github.com/user-attachments/assets/3c2a999c-0900-45c0-8ca2-ec9f000aae0d)

   - Bảng Ngonngu :

     ![image](https://github.com/user-attachments/assets/49b4a00f-4b43-422a-a0a8-d8eee2a90d9a)

     Tạo FK với bảng Job_xu_li:

     ![image](https://github.com/user-attachments/assets/83f6d5ac-c427-41e0-abf2-a9856012cf06)

   - Bảng NguoiDung :
     
     ![image](https://github.com/user-attachments/assets/a94e0659-6acb-44e9-87ad-db006bcd6f54)

     Tạo FK với bảng GD_thanhtoan:

     ![image](https://github.com/user-attachments/assets/cecee6d0-6ad1-453d-8005-cd8391d6311c)

     Tạo FK với bảng Job_xu_li:

     ![image](https://github.com/user-attachments/assets/66cb47bb-d33d-483d-b546-b2af3ba130ac)

     Tạo FK với bảng Lichsuchuyendoi:

     ![image](https://github.com/user-attachments/assets/61c69e81-a3d4-4091-a79b-f04c4b234fa4)

     Tạo FK với bảng Phanhoi:

     ![image](https://github.com/user-attachments/assets/c59b819b-fff3-4740-8c2c-10aa88102723)

   - Bảng Job_Xu_ly:

     ![image](https://github.com/user-attachments/assets/846c6490-f5ef-4400-abb6-917844f18332)

   - Bảng Ketquaxuly :

     ![image](https://github.com/user-attachments/assets/2006b7a0-8a82-4f0c-9918-6b7e1bba2374)

   - Bảng GD_ThanhToan:
     
     ![image](https://github.com/user-attachments/assets/b833fe2b-251f-4221-b311-663e5f420e4b)

   - Bảng Lichsuchuyendoi:
  
     ![image](https://github.com/user-attachments/assets/e0043b8a-3b8f-4de2-880b-4118f872d779)

     Sơ đồ Diagram của hệ thống:

     ![image](https://github.com/user-attachments/assets/ae71eec2-a98d-472c-88b5-accaad90d4ec)

4. Bổ sung trường phi chuẩn:
   - Trường phi chuẩn mà bạn có thể thêm vào là trường Word_Count, trường này có thể tính toán được số từ
   trong cột Toanvanban và sẽ giúp cải thiện hiệu suất truy vấn khi bạn cần đếm số từ mà không phải xử
   lý lại văn bản mỗi lần.
   - Logic của trường Word_Count:
   + Mục đích: Trường Word_Count giúp tính toán số từ trong văn bản, thay vì phải mỗi lần tính toán số từ
   từ cột Toanvanban (một cột kiểu TEXT/NVARCHAR), bạn có thể truy xuất nhanh hơn.
   + Lý do tốt hơn: Đảm bảo khi truy vấn, thay vì phải tính toán lại mỗi lần (tốn thời gian xử lý),
   ta có thể lấy trực tiếp giá trị đã tính sẵn trong trường Word_Count, giúp tăng hiệu suất khi cần biết
   số từ mà không phải tính lại.

   ![image](https://github.com/user-attachments/assets/6f2b2076-5e6d-4ba1-b7d7-e609bc4f5955)
5. Viết Trigger sử dụng trường phi chuẩn
   - Mục tiêu của Trigger:
   + Tính toán và cập nhật Word_Count mỗi khi có thay đổi ở trường Toanvanban.
   + Giúp đảm bảo dữ liệu luôn được cập nhật chính xác về số từ trong văn bản.
   + Giảm tải tính toán trên cơ sở dữ liệu khi truy vấn sau này, giúp hệ thống chạy nhanh hơn.

   ![image](https://github.com/user-attachments/assets/9c21239b-5398-4532-8e7a-c8d2db32cc09)
