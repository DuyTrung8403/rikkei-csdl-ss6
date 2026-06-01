CREATE TABLE Product (
                         id SERIAL PRIMARY KEY,
                         name VARCHAR(100),
                         category VARCHAR(50),
                         price NUMERIC(10,2),
                         stock INT
);

-- 1. Thêm 5 sản phẩm vào bảng bằng lệnh INSERT
INSERT INTO Product (name, category, price, stock) VALUES
                                                       ('iPhone 15 Pro Max', 'Điện tử', 29500000.00, 15),
                                                       ('Chuột Logitech G102', 'Điện tử', 450000.00, 50),
                                                       ('Bàn phím cơ AKKO', 'Điện tử', 1500000.00, 8),
                                                       ('Tủ lạnh Samsung 400L', 'Gia dụng', 12500000.00, 5),
                                                       ('Quạt cây Panasonic', 'Gia dụng', 2200000.00, 20);


-- 2.Hiển thị danh sách toàn bộ sản phẩm
SELECT * FROM Product;


-- 3.Hiển thị 3 sản phẩm có giá cao nhất
SELECT * FROM Product
ORDER BY price DESC
LIMIT 3;


-- 4.Hiển thị các sản phẩm thuộc danh mục “Điện tử” có giá nhỏ hơn 10,000,000
SELECT * FROM Product
WHERE category = 'Điện tử' AND price < 10000000;


-- 5.Sắp xếp sản phẩm theo số lượng tồn kho tăng dần
SELECT * FROM Product
ORDER BY stock ASC;