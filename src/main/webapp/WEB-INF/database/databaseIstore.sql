CREATE DATABASE casestudy_module_3;
USE casestudy_module_3;
CREATE TABLE user (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    fullname varchar(100) not null,
    Gender ENUM('Nam', 'Nữ'),
    DateOfBirth DATE,
    address varchar(255) not null,
    phone varchar(10) not null,
    isAdmin int not null
);
CREATE TABLE category (
	category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

ALTER TABLE category ADD column_name VARCHAR(255);

CREATE TABLE product (
	product_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    product_name VARCHAR(100) NOT NULL,
    producer VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255),
    FOREIGN KEY (category_id) REFERENCES category (category_id)
);
CREATE TABLE product_color (
	color_id INT AUTO_INCREMENT PRIMARY KEY,
    color VARCHAR (50)
);
CREATE TABLE product_ram (
	ram_id INT AUTO_INCREMENT PRIMARY KEY,
    ram VARCHAR (50)
);
CREATE TABLE product_rom (
	rom_id INT AUTO_INCREMENT PRIMARY KEY,
    rom VARCHAR(50)
);
CREATE TABLE product_detail (
	product_detail_id  INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    color_id INT NOT NULL,
    ram_id INT NOT NULL,
    rom_id INT NOT NULL,
    display VARCHAR(20),
    camera VARCHAR(20),
    battery VARCHAR (30),
    FOREIGN KEY (product_id) REFERENCES product (product_id),
    FOREIGN KEY (color_id) REFERENCES product_color (color_id),
    FOREIGN KEY (ram_id) REFERENCES product_ram (ram_id),
    FOREIGN KEY (rom_id) REFERENCES product_rom (rom_id)
);

CREATE TABLE product_status (
	status_id INT AUTO_INCREMENT PRIMARY KEY,
    stauts_name VARCHAR(50)
);
CREATE TABLE orders (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_detail_id INT,
    status_id INT,
	FOREIGN KEY (user_id) REFERENCES user (user_id),
	FOREIGN KEY (product_detail_id) REFERENCES product_detail (product_detail_id),
    FOREIGN KEY (status_id) REFERENCES product_status (status_id)
);

INSERT INTO category (category_id, category_name)
VALUES
(1, 'IPhone'),
(2, 'Laptop');


INSERT INTO product (product_id, category_id, product_name, producer, description, price, image)
VALUES
(1, 1, 'IPhone 15 Pro', 'Apple', 'Camera độ phân giải cao, chống nước ip68', 1500.00, '/images/iphone13.png'),
(2, 1, 'IPhone 15 Promax', 'Apple', 'Màn hình lớn, chip mới mạnh mẽ, tích hợp công nghệ AI', 1800.00, '/images/iphone15promax.jpeg'),
(3, 1, 'IPhone 14 Promax', 'Apple', 'Cải tiếng tai thỏ mới siêu hiện đại, bo gốc lịch lãm', 1400.00, '/images/iphone14promax.png'),
(4, 1, 'IPhone 13 Promax', 'Apple', 'Thời lượng pin đã được cải thiện, sạc nhanh 25w mới', 1250.00, '/images/iphone13pro.png');

INSERT INTO user (user_name, password, fullname, gender, DateOfBirth, address, phone, isAdmin)
VALUES 
('Ky123', '112233', 'Hoàng Đình Bảo Kỳ', 'Nam', '1999-03-14', 'Đà Nẵng', '0351122333', 0),
('Phong123', '445566', 'Tôn Thất Hoàng Phong', 'Nam', '1999-03-14', 'Đà Nẵng', '0351122444', 0),
('Khoa123', '778899', 'Nguyễn Anh Khoa', 'Nam', '1999-03-14', 'Sài Gòn', '0351122555', 0),
('admin', '123456', 'Admin', 'Nữ', '1999-03-14', 'Sài Gòn', '0351122777', 1);



    
DELIMITER //
CREATE PROCEDURE GetOrderDetails()
BEGIN
    SELECT 
    product.image AS "image",
    product.product_name AS "name",
    product.producer AS "producer",
    product_ram.ram AS "ram",
    product_rom.rom AS "rom",
    product_color.color AS "color",
    product.price AS "price",
    user.fullname AS "customer_name",
    user.phone AS "customer_phone",
    user.address AS "customer_address",
    o.product_detail_id AS id
    
FROM 
    orders o
JOIN 
    product_detail ON o.product_detail_id = product_detail.product_detail_id
JOIN 
    product ON product_detail.product_id = product.product_id
JOIN 
    product_ram ON product_detail.ram_id = product_ram.ram_id
JOIN 
    product_rom ON product_detail.rom_id = product_rom.rom_id
JOIN 
    product_color ON product_detail.color_id = product_color.color_id
JOIN 
    user ON o.user_id = user.user_id;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE delete_all_orders()
BEGIN
    SET SQL_SAFE_UPDATES = 0;
    DELETE FROM orders;
    SET SQL_SAFE_UPDATES = 1;
END //

DELIMITER ;




    
DELIMITER //
CREATE PROCEDURE DeleteOrderDetails (
    IN input_order_id INT
)
BEGIN
    DECLARE order_id_var INT;
    
    SELECT orders.order_id INTO order_id_var
    FROM product_detail
    JOIN orders ON product_detail.product_detail_id = orders.product_detail_id
    WHERE product_detail.product_detail_id = input_order_id
    LIMIT 1;
    
    DELETE FROM orders WHERE order_id = order_id_var;
    DELETE FROM product_detail WHERE product_detail_id = input_order_id;
END //
DELIMITER ;



DELIMITER //
CREATE PROCEDURE delete_all_product()
BEGIN
    SET SQL_SAFE_UPDATES = 0;
    DELETE FROM product_detail;
    SET SQL_SAFE_UPDATES = 1;
END //

DELIMITER ;

