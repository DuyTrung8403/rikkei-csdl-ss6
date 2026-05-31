CREATE TABLE Customer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    points INT
);

INSERT INTO Customer (name, email, phone, points) VALUES
('Nguyễn Văn A', 'anv@gmail.com', '0912345678', 500),
('Trần Thị B', 'btt@gmail.com', '0923456789', 350),
('Lê Văn C', NULL, '0934567890', 120),
('Nguyễn Văn A', 'anv2@gmail.com', '0945678901', 450),
('Phạm Minh Đức', 'ducpm@gmail.com', '0956789012', 600),
('Hoàng Thu Thủy', 'thuyht@gmail.com', '0967890123', 200),
('Đặng Quốc Đạt', 'datdq@gmail.com', '0978901234', 150);


-- 2. Truy vấn danh sách tên khách hàng duy nhất (DISTINCT)
SELECT DISTINCT name FROM Customer;


-- 3. Tìm các khách hàng chưa có email (IS NULL)
SELECT * FROM Customer WHERE email IS NULL;


-- 4. Hiển thị 3 khách hàng có điểm thưởng cao nhất, bỏ qua khách hàng cao điểm nhất (gợi ý: dùng OFFSET)
SELECT * FROM Customer
ORDER BY points DESC
LIMIT 3 OFFSET 1;


-- 5. Sắp xếp danh sách khách hàng theo tên giảm dần
SELECT * FROM Customer
ORDER BY name DESC;
