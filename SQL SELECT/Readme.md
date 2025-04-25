# 📘 Bài Tập 6: THAO TÁC VỚI SELECT (SQL Server)

## 📌 Yêu cầu bài toán
Cho file sv_tnut.sql (1.6MB)
1. Hãy nêu các bước để import được dữ liệu trong sv_tnut.sql vào sql server của em
2. dữ liệu đầu vào là tên của sv; sđt; ngày, tháng, năm sinh của sinh viên (của sv đang làm bài tập này)
3. nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?
4. nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
5. nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?
6. nhập sql để tìm xem có những sv nào trùng tên với em?
7. nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.
8. nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.
9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.
10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV (TRÌNH BÀY QUÁ TRÌNH SUY NGHĨ VÀ GIẢI NHỮNG VỨNG MẮC)

DEADLINE: 23H59:59 NGÀY 25/4/2025

Ghi chú: Giải thích tại sao lại có SQL như vậy.
## BÀI LÀM
1. Hãy nêu các bước để import được dữ liệu trong sv_tnut.sql vào sql server của em
   - Bước 1: Tải file sv_tnut.sql từ zalo về :

     ![image](https://github.com/user-attachments/assets/749c5bef-15f3-4ad1-9877-7582c14d7523)

   - Bước 2: Mở SSMS và tạo database có tên là sv_tnut:

     ![image](https://github.com/user-attachments/assets/337a3fd1-6406-400f-ad3b-9eaf490c08e7)

   - Bước 3: Mở file vừa tải về và chạy:
     
     ![image](https://github.com/user-attachments/assets/acbbaf5b-17fd-4cfe-b2a0-97ca059da928)

     Kết quả được bảng sv với các trường và dữ liệu như sau:

     ![image](https://github.com/user-attachments/assets/757f21fd-aeb2-4350-adec-b3a7d701ebd1)

     ![image](https://github.com/user-attachments/assets/7b3de9b5-78d5-4b59-bc63-722f96f9676e)

2. Dữ liệu đầu vào là tên của sv; sđt; ngày, tháng, năm sinh của sinh viên (của sv đang làm bài tập này):
     Dữ liệu đầu vào sẽ là:

     ![image](https://github.com/user-attachments/assets/048fff36-abde-40e5-9d87-70d3e94cf881)

3. Nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?

     ![image](https://github.com/user-attachments/assets/4bd2ffbf-f74b-42c4-9a65-993089f5c890)

4. nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
   
     ![image](https://github.com/user-attachments/assets/88116d9e-8ca9-4fdf-96e1-285cf68060c9)

5. nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?

     ![image](https://github.com/user-attachments/assets/11f82829-a415-4761-8b6b-6466d00e6b8c)

6.  nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.

    ![image](https://github.com/user-attachments/assets/1e2cc27b-f25d-4e35-b4b9-f4ec361ba73b)

7.  nhập sql để tìm xem có những sv nào trùng tên với em?
    
     ![image](https://github.com/user-attachments/assets/f2702318-5599-4b0d-8693-626a4cbbfa91)

8. nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.
   
     ![image](https://github.com/user-attachments/assets/a1275644-8fa4-42b0-a57e-f39e027f5418)

9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.
    
    ![image](https://github.com/user-attachments/assets/678f86d1-1a8c-45a8-84f6-389d0861a2b7)
 
10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV (TRÌNH BÀY QUÁ TRÌNH SUY NGHĨ VÀ GIẢI NHỮNG VỨNG MẮC)
    - Đầu tiên, cách xác định ngành KMT giống như câu 9.
    - Tiếp đến, có thể thấy trong bảng sinh viên không có trường giới tính để xác định sinh viên nào là nữ.
    - Luận ra sinh viên là nữ từ trường họ đệm có đệm là 'Thị' (độ chính xác cao vì hầu như không có nam sinh viên có tên đệm là  'Thị'
    - Các cách như lọc theo tên thường thấy của nữ giới như 'Ngọc', 'Trang',... không đảm bảo vì nam cũng có thể tên như vậy nên không sử dụng
    -> Cách liệt kê mang độ tin cậy cao nhất là lọc tên đệm có chữ 'Thị', tuy không tìm được hết nhưng đây là cách luận không có sự nhầm lẫn
      ở trong kết quả in ra

     ![image](https://github.com/user-attachments/assets/b26c5e77-9723-4084-a0b7-862f4c84be88)

      
