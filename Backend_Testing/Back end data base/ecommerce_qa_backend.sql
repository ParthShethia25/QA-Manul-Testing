-- =========================================
-- E-COMMERCE QA BACKEND TEST DATABASE (100+ USERS)
-- =========================================

-- Create Database
CREATE DATABASE IF NOT EXISTS ecommerce_qa;
USE ecommerce_qa;

-- =========================================
-- USERS TABLE
-- =========================================
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =========================================
-- PRODUCTS TABLE
-- =========================================
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_qty INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =========================================
-- ORDERS TABLE
-- =========================================
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- =========================================
-- ORDER ITEMS TABLE
-- =========================================
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- =========================================
-- INSERT SYNTHETIC USERS (100+ INCLUDING PARTH)
-- =========================================
INSERT INTO users (name, email, password_hash) VALUES
('Parth Shethia', 'parth.shethia25@gmail.com', 'hashed_password_parth'),
('Tina User1', 'user1@mail.com', 'hashed_pwd_001'),
('Liam User2', 'user2@example.com', 'hashed_pwd_002'),
('Rita User3', 'user3@example.com', 'hashed_pwd_003'),
('Olivia User4', 'user4@example.com', 'hashed_pwd_004'),
('Wendy User5', 'user5@example.com', 'hashed_pwd_005'),
('Vikram User6', 'user6@mail.com', 'hashed_pwd_006'),
('Eva User7', 'user7@mail.com', 'hashed_pwd_007'),
('Tina User8', 'user8@test.com', 'hashed_pwd_008'),
('Zara User9', 'user9@mail.com', 'hashed_pwd_009'),
('Charlie User10', 'user10@mail.com', 'hashed_pwd_010'),
('Olivia User11', 'user11@mail.com', 'hashed_pwd_011'),
('Tina User12', 'user12@example.com', 'hashed_pwd_012'),
('Xavier User13', 'user13@example.com', 'hashed_pwd_013'),
('Liam User14', 'user14@test.com', 'hashed_pwd_014'),
('Uma User15', 'user15@example.com', 'hashed_pwd_015'),
('Julia User16', 'user16@test.com', 'hashed_pwd_016'),
('Tina User17', 'user17@test.com', 'hashed_pwd_017'),
('Wendy User18', 'user18@mail.com', 'hashed_pwd_018'),
('Paul User19', 'user19@mail.com', 'hashed_pwd_019'),
('Olivia User20', 'user20@example.com', 'hashed_pwd_020'),
('Olivia User21', 'user21@example.com', 'hashed_pwd_021'),
('Quinn User22', 'user22@test.com', 'hashed_pwd_022'),
('Grace User23', 'user23@example.com', 'hashed_pwd_023'),
('Steve User24', 'user24@example.com', 'hashed_pwd_024'),
('Yash User25', 'user25@mail.com', 'hashed_pwd_025'),
('Xavier User26', 'user26@example.com', 'hashed_pwd_026'),
('Mona User27', 'user27@test.com', 'hashed_pwd_027'),
('Kevin User28', 'user28@mail.com', 'hashed_pwd_028'),
('Tina User29', 'user29@example.com', 'hashed_pwd_029'),
('Kevin User30', 'user30@test.com', 'hashed_pwd_030'),
('Frank User31', 'user31@mail.com', 'hashed_pwd_031'),
('Julia User32', 'user32@mail.com', 'hashed_pwd_032'),
('Zara User33', 'user33@test.com', 'hashed_pwd_033'),
('Grace User34', 'user34@example.com', 'hashed_pwd_034'),
('Yash User35', 'user35@test.com', 'hashed_pwd_035'),
('Wendy User36', 'user36@example.com', 'hashed_pwd_036'),
('Steve User37', 'user37@example.com', 'hashed_pwd_037'),
('Olivia User38', 'user38@test.com', 'hashed_pwd_038'),
('Wendy User39', 'user39@example.com', 'hashed_pwd_039'),
('Eva User40', 'user40@example.com', 'hashed_pwd_040'),
('Frank User41', 'user41@test.com', 'hashed_pwd_041'),
('Xavier User42', 'user42@mail.com', 'hashed_pwd_042'),
('Frank User43', 'user43@mail.com', 'hashed_pwd_043'),
('Julia User44', 'user44@example.com', 'hashed_pwd_044'),
('Ian User45', 'user45@test.com', 'hashed_pwd_045'),
('Xavier User46', 'user46@test.com', 'hashed_pwd_046'),
('Vikram User47', 'user47@mail.com', 'hashed_pwd_047'),
('Paul User48', 'user48@test.com', 'hashed_pwd_048'),
('Steve User49', 'user49@mail.com', 'hashed_pwd_049'),
('Wendy User50', 'user50@mail.com', 'hashed_pwd_050'),
('Vikram User51', 'user51@mail.com', 'hashed_pwd_051'),
('Vikram User52', 'user52@test.com', 'hashed_pwd_052'),
('Helen User53', 'user53@test.com', 'hashed_pwd_053'),
('Bob User54', 'user54@mail.com', 'hashed_pwd_054'),
('Frank User55', 'user55@test.com', 'hashed_pwd_055'),
('Kevin User56', 'user56@test.com', 'hashed_pwd_056'),
('Quinn User57', 'user57@test.com', 'hashed_pwd_057'),
('Quinn User58', 'user58@test.com', 'hashed_pwd_058'),
('Grace User59', 'user59@mail.com', 'hashed_pwd_059'),
('Wendy User60', 'user60@example.com', 'hashed_pwd_060'),
('Uma User61', 'user61@test.com', 'hashed_pwd_061'),
('David User62', 'user62@example.com', 'hashed_pwd_062'),
('Mona User63', 'user63@test.com', 'hashed_pwd_063'),
('Quinn User64', 'user64@mail.com', 'hashed_pwd_064'),
('Kevin User65', 'user65@mail.com', 'hashed_pwd_065'),
('Eva User66', 'user66@test.com', 'hashed_pwd_066'),
('Alice User67', 'user67@example.com', 'hashed_pwd_067'),
('Alice User68', 'user68@mail.com', 'hashed_pwd_068'),
('Quinn User69', 'user69@mail.com', 'hashed_pwd_069'),
('Wendy User70', 'user70@example.com', 'hashed_pwd_070'),
('Alice User71', 'user71@example.com', 'hashed_pwd_071'),
('Liam User72', 'user72@example.com', 'hashed_pwd_072'),
('Yash User73', 'user73@example.com', 'hashed_pwd_073'),
('Frank User74', 'user74@test.com', 'hashed_pwd_074'),
('Alice User75', 'user75@example.com', 'hashed_pwd_075'),
('Yash User76', 'user76@mail.com', 'hashed_pwd_076'),
('Zara User77', 'user77@example.com', 'hashed_pwd_077'),
('Liam User78', 'user78@mail.com', 'hashed_pwd_078'),
('Olivia User79', 'user79@test.com', 'hashed_pwd_079'),
('Uma User80', 'user80@test.com', 'hashed_pwd_080'),
('Wendy User81', 'user81@example.com', 'hashed_pwd_081'),
('Steve User82', 'user82@mail.com', 'hashed_pwd_082'),
('Helen User83', 'user83@test.com', 'hashed_pwd_083'),
('Steve User84', 'user84@mail.com', 'hashed_pwd_084'),
('Uma User85', 'user85@mail.com', 'hashed_pwd_085'),
('Eva User86', 'user86@mail.com', 'hashed_pwd_086'),
('Rita User87', 'user87@test.com', 'hashed_pwd_087'),
('Nate User88', 'user88@mail.com', 'hashed_pwd_088'),
('Olivia User89', 'user89@mail.com', 'hashed_pwd_089'),
('Grace User90', 'user90@mail.com', 'hashed_pwd_090'),
('Rita User91', 'user91@example.com', 'hashed_pwd_091'),
('Bob User92', 'user92@test.com', 'hashed_pwd_092'),
('Yash User93', 'user93@example.com', 'hashed_pwd_093'),
('Xavier User94', 'user94@test.com', 'hashed_pwd_094'),
('Rita User95', 'user95@mail.com', 'hashed_pwd_095'),
('Xavier User96', 'user96@test.com', 'hashed_pwd_096'),
('Steve User97', 'user97@test.com', 'hashed_pwd_097'),
('David User98', 'user98@mail.com', 'hashed_pwd_098'),
('Kevin User99', 'user99@mail.com', 'hashed_pwd_099');

-- =========================================
-- INSERT SYNTHETIC PRODUCTS
-- =========================================
INSERT INTO products (name, price, stock_qty) VALUES
('Wireless Mouse', 799.00, 50),
('Mechanical Keyboard', 3499.00, 30),
('USB-C Charger', 1199.00, 100),
('Laptop Stand', 1899.00, 20),
('Gaming Headset', 2599.00, 40);

-- =========================================
-- INSERT ORDERS (FOR DIFFERENT USERS)
-- =========================================
-- Assume Parth gets user_id = 1, others sequentially
INSERT INTO orders (user_id, total_amount, status) VALUES
(1, 4298.00, 'CONFIRMED'),
(2, 799.00, 'SHIPPED'),
(3, 4698.00, 'PENDING'),
(10, 2599.00, 'CONFIRMED'),
(25, 799.00, 'CANCELLED');

-- =========================================
-- INSERT ORDER ITEMS
-- =========================================
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 799.00),
(1, 2, 1, 3499.00),
(2, 1, 1, 799.00),
(3, 2, 1, 3499.00),
(3, 3, 1, 1199.00),
(4, 5, 1, 2599.00),
(5, 1, 1, 799.00);

-- =========================================
-- END OF SCRIPT
-- =========================================
