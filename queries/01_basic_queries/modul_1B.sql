-- =====================
--       MODUL 1B
-- =====================

SELECT *
FROM customers
WHERE city = 'Mumbai';

SELECT * 
FROM orders
WHERE order_status = 'Delivered'
AND payment_method = 'Credit Card';

SELECT * 
FROM customers
WHERE city = 'Hyderabad'
OR city = 'Delhi';

SELECT * 
FROM products
WHERE NOT category = 'Serum';

SELECT * 
FROM orders
WHERE payment_method IN ('Credit Card','Debit Card');

SELECT *
FROM products
WHERE mrp BETWEEN 400 AND 600;

SELECT *
FROM customers
WHERE signup_date BETWEEN '2023-01-01' AND '2023-12-31'

SELECT *
FROM products
WHERE product_name LIKE '%Serum%';

SELECT *
FROM customers
WHERE customer_name LIKE 'S%';

SELECT *
FROM customers
WHERE customer_name LIKE '%s';

SELECT *
FROM orders
WHERE delivered_date IS NULL;

SELECT *
FROM orders
WHERE delivered_date IS NOT NULL;

-- =====================
--     Kuis Modul 1B
-- =====================

-- 1. Tampilkan semua order yang statusnya Delivered.

SELECT *
FROM orders
WHERE order_status = 'Delivered';

-- 2. Tampilkan semua produk dengan mrp 
--    antara 500 dan 800.

SELECT * 
FROM products
WHERE mrp BETWEEN 500 AND 800;

-- 3. Tampilkan customer yang berasal dari 
--    Delhi atau Mumbai.

SELECT *
FROM customers
WHERE city ='Delhi'
OR city = 'Mumbai';

-- 4. Tampilkan produk yang bukan kategori Serum.

SELECT *
FROM products
WHERE NOT category = 'Serum';

-- 5. Tampilkan customer yang namanya diawali huruf S.

SELECT * 
FROM customers
WHERE customer_name LIKE ('S%');

-- 6. Tampilkan semua order yang belum 
--    memiliki delivered_date.

SELECT *
FROM orders
WHERE delivered_date IS NULL;
