CREATE DATABASE "UniversityDB";
-- 2. Tạo schema
CREATE SCHEMA university;
-- 3a. Tạo bảng Students 
CREATE TABLE university.Students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    email VARCHAR(255) NOT NULL UNIQUE
);
-- 3b. Tạo bảng Courses 
CREATE TABLE university.Courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INTEGER
);
-- 4 & 5a. Tạo bảng phụ Enrollments 
CREATE TABLE university.Enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES university.Students(student_id),
    course_id INTEGER REFERENCES university.Courses(course_id),
    enroll_date DATE
);
--5.Thêm ràng buộc birth_date trong bảng student yêu cầu sinh viên phải lớn hơn 18 tuổi
ALTER TABLE university.Students
ADD CONSTRAINT check_age_gt_18 
CHECK ( (EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM birth_date)) > 18 );
--5c.Xóa 3 bảng theo trình tự logic
-- Xóa bảng đang chứa khóa ngoại đầu tiên
DROP TABLE university.Enrollments;
-- Sau đó mới xóa 2 bảng cha thứ tự giữa 2 bảng cha không quan trọng
DROP TABLE university.Students;
DROP TABLE university.Courses;