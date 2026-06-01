CREATE TABLE Employee (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    department VARCHAR(50),
    salary NUMERIC(10,2),
    hire_date DATE
);

-- Yêu cầu 1: Thêm 6 nhân viên mới bằng lệnh INSERT
INSERT INTO Employee (full_name, department, salary, hire_date) VALUES
('Nguyễn Hoàng An', 'IT', 15000000.00, '2023-05-15'),     
('Trần Văn Bình', 'HR', 12000000.00, '2023-08-20'),      
('Lê Thị Thanh An', 'Marketing', 5500000.00, '2024-02-10'),
('Phạm Minh Đức', 'IT', 20000000.00, '2022-11-01'),       
('Hoàng Thu Thủy', 'HR', 4800000.00, '2023-01-10'),       
('Đặng Quốc Đạt', 'Sales', 9500000.00, '2025-06-01');


-- 2.Cập nhật mức lương tăng 10% cho nhân viên thuộc phòng IT
UPDATE Employee
SET salary = salary * 1.10
WHERE department = 'IT';


-- 3.Xóa nhân viên có mức lương dưới 6,000,000
DELETE FROM Employee
WHERE salary < 6000000;


-- 4.Liệt kê các nhân viên có tên chứa chữ “An” (không phân biệt hoa thường)
-- (Sử dụng ILIKE trong PostgreSQL để tìm kiếm không phân biệt hoa thường)
SELECT * FROM Employee
WHERE full_name ILIKE '%An%';


-- Y5.Hiển thị các nhân viên có ngày vào làm việc trong khoảng từ '2023-01-01' đến '2023-12-31'
SELECT * FROM Employee
WHERE hire_date BETWEEN '2023-01-01' AND '2023-12-31';