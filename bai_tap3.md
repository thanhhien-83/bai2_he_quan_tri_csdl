BÀI TOÁN: Sửa bài 2 để có csdl như sau:
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

YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

DEADLINE: 23H59 NGÀY 30/03/2025

---------------------- hết bài tập 3-------------------------------------------  
Ảnh 1:  
Chỉnh sửa bảng DKMH. id_dk là khóa chính   
![Screenshot 2025-03-29 143518](https://github.com/user-attachments/assets/3aa3bd02-db78-4185-a1e8-349cf706f985)  

Ảnh 2:  
Thao tác tạo khóa ngoại FK_Diem_id_dk trong SQL Server Management Studio (SSMS) giữa bảng Diem và DKMH. Thực hiện như sau:  
Mở Table Designer cho bảng Diem, vào Relationships.  
Thêm khóa ngoại, đặt tên FK_Diem_id_dk.  
Chọn Primary key table: DKMH (id_dk), Foreign key table: Diem (id_dk).  
Nhấn OK và lưu.  
![Screenshot 2025-03-29 143656](https://github.com/user-attachments/assets/f9fbab9a-65d6-4bc4-86d8-3f168d2bca70)  

Ảnh 3:  
hao tác tạo khóa ngoại FK_DKMH_maLopHP trong SQL Server Management Studio (SSMS) giữa bảng DKMH và LopHP. Thực hiện như sau:  
Mở Table Designer cho bảng DKMH, vào Relationships.  
Thêm khóa ngoại, đặt tên FK_DKMH_maLopHP.  
Chọn Primary key table: LopHP (maLopHP), Foreign key table: DKMH (maLopHP).  
Nhấn OK và lưu.  
![Screenshot 2025-03-29 143713](https://github.com/user-attachments/assets/19c7eee2-c9d3-4648-b498-aff74f517a7f)  

Ảnh 4:  
Thao tác tạo khóa ngoại FK_DKMH_maSV trong SQL Server Management Studio (SSMS) giữa bảng DKMH và SinhVien. Thực hiện như sau:  
Mở Table Designer cho bảng DKMH, vào Relationships.  
Thêm khóa ngoại, đặt tên FK_DKMH_maSV.  
Chọn Primary key table: SinhVien (maSV), Foreign key table: DKMH (maSV).  
Nhấn OK và lưu.  
![Screenshot 2025-03-29 143805](https://github.com/user-attachments/assets/faa22a3b-9670-4389-ac69-df93ff45de72)  

Ảnh 5:  
chỉnh sửa một chỉ mục (Index) trên cột id_dk trong SQL Server Management Studio (SSMS), với thứ tự sắp xếp Ascending (tăng dần).  
![Screenshot 2025-03-29 143842](https://github.com/user-attachments/assets/b7b5eadf-29eb-4fc5-9b4b-546089b60852)  

Ảnh 6:  
chỉnh sửa ràng buộc kiểm tra CK_DKMH trong SQL Server:  
Biểu thức: ((DiemThi)>(0) AND (DiemThi)<(10))  
Tùy chọn: Kiểm tra dữ liệu, áp dụng cho chèn, cập nhật, và bản sao.  
![Screenshot 2025-03-29 144016](https://github.com/user-attachments/assets/711c353b-a4b4-4dac-b42a-9e043ba7c328)  

Ảnh 7:  
chỉnh sửa ràng buộc kiểm tra CK_DKMH_PhanTramTh trong SQL Server:  
Biểu thức: ([PhanTramThi]>(0) AND [PhanTramThi]<(100))  
Tùy chọn: Kiểm tra dữ liệu, áp dụng cho chèn, cập nhật, và bản sao.  
![Screenshot 2025-03-29 144032](https://github.com/user-attachments/assets/9063fbd6-3b73-4a08-972c-bc5a5cb9fe81)  

Ảnh 8:  
![Screenshot 2025-03-29 144058](https://github.com/user-attachments/assets/7bf81739-3874-413d-a4b6-468b21d75f40)


