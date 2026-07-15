-- ====================
-- Mempersiapkan Tabel
-- ====================
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    gender VARCHAR(20),
    age_group VARCHAR(20),
    signup_date DATE,
    acquisition_channel VARCHAR(50)
);

CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(150),
    category VARCHAR(50),
    concern VARCHAR(100),
    skin_type VARCHAR(100),
    key_ingredient VARCHAR(100),
    size VARCHAR(20),
    mrp NUMERIC(10,2),
    cost_price NUMERIC(10,2),
    stock_qty INT,
    launch_date DATE
);

CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    order_date DATE,
    order_status VARCHAR(30),
    payment_method VARCHAR(30),
    sales_channel VARCHAR(30),
    gross_amount NUMERIC(10,2),
    discount_amount NUMERIC(10,2),
    shipping_fee NUMERIC(10,2),
    final_amount NUMERIC(10,2),
    delivered_date DATE
);

CREATE TABLE order_items (
    order_item_id VARCHAR(15) PRIMARY KEY,
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    unit_price NUMERIC(10,2),
    discount_pct NUMERIC(5,2),
    item_total NUMERIC(10,2)
);

CREATE TABLE returns (
    return_id VARCHAR(10) PRIMARY KEY,
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    return_date DATE,
    return_reason VARCHAR(100),
    refund_status VARCHAR(50)
);

CREATE TABLE reviews (
    review_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    product_id VARCHAR(10),
    order_id VARCHAR(10),
    rating INT,
    review_date DATE
);

-- ===================
--       MODUL 1A
-- ===================

SELECT *
FROM products;

SELECT product_name, category, mrp
FROM products;

SELECT *
FROM products
LIMIT(10);

SELECT customer_name, signup_date
FROM customers
ORDER BY signup_date DESC;

SELECT DISTINCT sales_channel
FROM orders;

SELECT COUNT(*)
FROM products, reviews, returns;

SELECT COUNT(*)
FROM products;

SELECT COUNT(*)
FROM reviews;

SELECT COUNT(*)
FROM returns;

SELECT 
customer_name AS nama,
city AS kota,
gender AS jenis_kelamin
FROM customers;


-- =====================
--     Kuis Modul 1A
-- =====================

-- 1. Tampilkan semua data dari tabel orders

SELECT * 
FROM orders;

-- 2. Tampilkan hanya : product_name dan mrp
--    dari tabel products

SELECT product_name, mrp
FROM products;

-- 3. Tampilkan 15 Customer Pertama

SELECT customer_name, signup_date
FROM customers
ORDER BY signup_date ASC;

-- 4. Tampilkan produk dari harga (mrp) 
--    paling mahal ke paling murah.

SELECT product_name, mrp
FROM products
ORDER BY mrp DESC;

-- 5. Tampilkan semua metode pembayaran 
--    yang tersedia tanpa duplikasi.

SELECT *
FROM orders;

SELECT DISTINCT
payment_method
FROM orders;

-- 6. Hitung jumlah order pada tabel orders.

SELECT COUNT(*)
FROM orders;
