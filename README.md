ĐỀ BÀI
Tạo database UniversityDB
Trong database, tạo schema university
Trong schema, tạo 2 bảng:
Students:
student_id (số nguyên, khóa chính, tự tăng)
first_name (chuỗi, tối đa 50 ký tự, không null)
last_name (chuỗi, tối đa 50 ký tự, không null)
birth_date (ngày)
email (chuỗi, không null, duy nhất)
Courses:
course_id (số nguyên, khóa chính, tự tăng)
course_name (chuỗi, tối đa 100 ký tự, không null)
credits (số nguyên)
Tạo bảng phụ Enrollments để lưu thông tin sinh viên đăng ký khóa học:
enrollment_id (số nguyên, khóa chính, tự tăng)
student_id (khóa ngoại tham chiếu Students)
course_id (khóa ngoại tham chiếu Courses)
enroll_date (ngày đăng ký)
Thực hành các câu lệnh:
Tạo 3 bảng students , courses , enrollments .
Thêm ràng buộc birth_date trong bảng students yêu cầu sinh viên phải lớn hơn 18 tuổi (gợi ý sử dụng hàm EXTRACT(YEAR FROM your_date_column) để lấy ra số năm).
Xóa 3 bảng Students, Courses, Enrollments theo trình tự logic để không bị lỗi constraints (lưu ý xóa ngược lại thứ tự thêm vào ) .
