-- =====================
--    MODUL 1C finale
-- =====================

SELECT COUNT(*)
FROM reviews;

SELECT 
SUM(gross_amount)
FROM orders;

SELECT 
SUM(discount_amount)
FROM orders;

SELECT 
SUM(shipping_fee)
FROM orders;

SELECT 
AVG(mrp)
FROM products;

SELECT 
AVG(rating)
FROM reviews;

SELECT
AVG(quantity)
FROM order_items;

SELECT
MAX(final_amount)
FROM orders;

SELECT
MIN(mrp)
FROM products;

SELECT
product_id,
AVG(rating)
FROM reviews
GROUP BY product_id;

SELECT
city,
COUNT(*)
FROM customers
GROUP BY city;

SELECT 
sales_channel,
SUM(final_amount) AS revenue
FROM orders
GROUP BY sales_channel
ORDER BY revenue DESC;

SELECT
city,
COUNT(*) AS total_customer
FROM customers
GROUP BY city
HAVING COUNT(*) >15;

SELECT
sales_channel,
SUM(final_amount) AS revenue
FROM orders
GROUP BY sales_channel
HAVING SUM(final_amount)>500000;

-- =====================
-- Mini Project Modul 1C
-- =====================

-- 1. Hitung total revenue perusahaan.

SELECT
SUM(final_amount) AS revenue
FROM orders;

-- 2. Hitung revenue berdasarkan sales channel.

SELECT
sales_channel,
SUM(final_amount) AS revenue
FROM orders
GROUP BY sales_channel;

-- 3. Hitung jumlah customer setiap kota
--    Urutkan dari terbanyak.

SELECT 
city,
COUNT(*) AS Jumlah_customer
FROM customers
GROUP BY city
ORDER BY Jumlah_customer DESC;

-- 4. Hitung rata-rata rating tiap produk
--    Urutkan dari rating tertinggi.

SELECT
product_id,
AVG(rating) AS rate_produk
FROM reviews
GROUP BY product_id
ORDER BY rate_produk DESC;

-- 5. Cari kota yang memiliki lebih dari 30 customer.
--    Gunakan HAVING.

SELECT
city,
COUNT(*)AS Jumlah_customer
FROM customers
GROUP BY city
HAVING COUNT(*) > 30;
